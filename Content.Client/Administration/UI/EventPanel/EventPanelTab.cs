// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Linq;
using System.Numerics;
using Content.Client.Administration.Systems;
using Content.Shared.Administration.EventPanel;
using Content.Shared.CCVar;
using Robust.Client.UserInterface;
using Robust.Client.UserInterface.Controls;
using Robust.Client.UserInterface.CustomControls;
using Robust.Shared.Configuration;
using Robust.Shared.Input;
using Robust.Shared.Timing;
using Robust.Shared.Utility;

namespace Content.Client.Administration.UI.EventPanel;

/// <summary>
///     Event-Panel als Tab im Admin-Menü: Suche, Kategorien, Favoriten, Start-/Beenden-Buttons
///     und Bestätigungsdialog für gefährliche Events. Rein in Code gebaut (kein XAML).
/// </summary>
public sealed class EventPanelTab : BoxContainer
{
    [Dependency] private readonly IEntitySystemManager _sysMan = default!;
    [Dependency] private readonly IConfigurationManager _cfg = default!;
    [Dependency] private readonly IGameTiming _timing = default!;

    private const float RefreshInterval = 2f;

    // Filter: null = alle, sonst Kategorie. Favoriten sind ein eigener Modus.
    private enum Filter { All, Favorites, Danger, Harmless, Antagonist, Fun, Other }

    private readonly EventPanelSystem _panel;
    private readonly LineEdit _search;
    private readonly BoxContainer _runningList;
    private readonly Label _runningHeader;
    private readonly Label _runningEmpty;
    private readonly BoxContainer _catalogList;
    private readonly Label _status;
    private readonly Dictionary<Filter, Button> _filterButtons = new();

    private Filter _filter = Filter.All;
    private float _timer;
    private bool _wasVisible;
    private HashSet<string> _favorites = new();
    private ConfirmWindow? _confirm;
    private readonly CheckBox _hideTechnical;

    // Sortierung der Liste laufender Events (bleibt beim Refresh erhalten).
    private enum SortColumn { Event, Since, Starter }
    private SortColumn _sortColumn = SortColumn.Since;
    private bool _sortDescending = true;

    public EventPanelTab()
    {
        IoCManager.InjectDependencies(this);
        _panel = _sysMan.GetEntitySystem<EventPanelSystem>();

        Orientation = LayoutOrientation.Vertical;
        Margin = new Thickness(4);
        MinSize = new Vector2(640, 520);
        VerticalExpand = true;
        HorizontalExpand = true;

        LoadFavorites();

        // --- Laufende Events -------------------------------------------------
        _runningHeader = new Label
        {
            StyleClasses = { "LabelHeading" },
            Text = Loc.GetString("event-panel-running-header", ("count", 0)),
        };
        var top = new BoxContainer { Orientation = LayoutOrientation.Vertical, VerticalExpand = true, MinHeight = 90 };
        top.AddChild(_runningHeader);
        top.AddChild(BuildSortHeader());

        _runningEmpty = new Label
        {
            Text = Loc.GetString("event-panel-running-empty"),
            Modulate = Color.Gray,
        };
        _runningList = new BoxContainer { Orientation = LayoutOrientation.Vertical, SeparationOverride = 2 };
        top.AddChild(new ScrollContainer
        {
            VerticalExpand = true,
            HScrollEnabled = false,
            HorizontalExpand = true,
            Children = { _runningList },
        });

        // Unterer Bereich (Suche, Filter, Katalog); wird per SplitContainer von der laufenden Liste getrennt.
        var bottom = new BoxContainer { Orientation = LayoutOrientation.Vertical, VerticalExpand = true, MinHeight = 120 };

        // --- Suche + Filter ---------------------------------------------------
        _search = new LineEdit
        {
            PlaceHolder = Loc.GetString("event-panel-search-placeholder"),
            HorizontalExpand = true,
        };
        _search.OnTextChanged += _ => RebuildCatalog();
        var clear = new Button { Text = Loc.GetString("event-panel-search-clear") };
        clear.OnPressed += _ => _search.Clear();
        bottom.AddChild(new BoxContainer
        {
            Orientation = LayoutOrientation.Horizontal,
            Children = { _search, clear },
        });

        var filterRow = new BoxContainer { Orientation = LayoutOrientation.Horizontal };
        var group = new ButtonGroup();
        foreach (var f in Enum.GetValues<Filter>())
        {
            var button = new Button
            {
                Text = Loc.GetString($"event-panel-filter-{f.ToString().ToLowerInvariant()}"),
                ToggleMode = true,
                Group = group,
                Pressed = f == _filter,
                HorizontalExpand = true,
            };
            var captured = f;
            button.OnPressed += _ =>
            {
                _filter = captured;
                RebuildCatalog();
            };
            _filterButtons[f] = button;
            filterRow.AddChild(button);
        }

        bottom.AddChild(filterRow);

        _hideTechnical = new CheckBox
        {
            Text = Loc.GetString("event-panel-hide-technical"),
            ToolTip = Loc.GetString("event-panel-hide-technical-tooltip"),
            Pressed = true,
        };
        _hideTechnical.OnToggled += _ =>
        {
            RebuildRunning();
            RebuildCatalog();
        };
        bottom.AddChild(_hideTechnical);

        // --- Katalog ----------------------------------------------------------
        _status = new Label { Modulate = Color.Gray, Text = Loc.GetString("event-panel-loading") };
        bottom.AddChild(_status);

        _catalogList = new BoxContainer { Orientation = LayoutOrientation.Vertical, SeparationOverride = 3 };
        bottom.AddChild(new ScrollContainer
        {
            VerticalExpand = true,
            HorizontalExpand = true,
            HScrollEnabled = false,
            Children = { _catalogList },
        });

        // Verschiebbarer Trenner: oben laufende Events, unten Katalog.
        var split = new SplitContainer
        {
            Orientation = SplitContainer.SplitOrientation.Vertical,
            VerticalExpand = true,
            HorizontalExpand = true,
        };
        split.AddChild(top);
        split.AddChild(bottom);
        split.SetSplitFractionOnNextArrange(0.42f);
        AddChild(split);

        _panel.CatalogUpdated += OnCatalogUpdated;
        _panel.RunningUpdated += RebuildRunning;
        RebuildRunning();
        RebuildCatalog();
    }

    protected override void ExitedTree()
    {
        base.ExitedTree();
        _panel.CatalogUpdated -= OnCatalogUpdated;
        _panel.RunningUpdated -= RebuildRunning;
        _confirm?.Close();
        _confirm = null;
    }

    protected override void EnteredTree()
    {
        base.EnteredTree();
        // Bei erneutem Einhängen (z. B. nach Fenster neu öffnen) sofort aktualisieren.
        _panel.CatalogUpdated -= OnCatalogUpdated;
        _panel.RunningUpdated -= RebuildRunning;
        _panel.CatalogUpdated += OnCatalogUpdated;
        _panel.RunningUpdated += RebuildRunning;
    }

    protected override void FrameUpdate(FrameEventArgs args)
    {
        base.FrameUpdate(args);

        // Nur anfragen, solange der Tab sichtbar ist.
        var visible = VisibleInTree;
        if (!visible)
        {
            _wasVisible = false;
            return;
        }

        if (!_wasVisible)
        {
            _wasVisible = true;
            _timer = 0f;
            _panel.Request(includeCatalog: true);
            return;
        }

        _timer += args.DeltaSeconds;
        if (_timer < RefreshInterval)
            return;

        _timer = 0f;
        _panel.Request(includeCatalog: _panel.Catalog.Count == 0);
    }

    private void OnCatalogUpdated()
    {
        RebuildCatalog();
    }

    // ------------------------------------------------------------------ Favoriten

    private void LoadFavorites()
    {
        _favorites = new HashSet<string>(
            _cfg.GetCVar(CCVars.AdminEventPanelFavorites).Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries));
    }

    private void SaveFavorites()
    {
        _cfg.SetCVar(CCVars.AdminEventPanelFavorites, string.Join(',', _favorites));
        _cfg.SaveToFile();
    }

    // ------------------------------------------------------------------ Laufende Events

    private const float EndColumnWidth = 80f;
    private const float SinceColumnWidth = 140f;
    private const float StarterColumnWidth = 150f;

    private const string ArrowUp = "↑";
    private const string ArrowDown = "↓";

    private readonly Dictionary<SortColumn, Label> _sortLabels = new();

    // Tabellenkopf wie in der Spielerliste: Labels mit Hintergrund, Klick sortiert, erneuter Klick dreht um.
    private Control BuildSortHeader()
    {
        var header = new BoxContainer { Orientation = LayoutOrientation.Horizontal, SeparationOverride = 6 };

        void Make(SortColumn col, float width, bool expand)
        {
            var l = new Label
            {
                ToolTip = Loc.GetString("event-panel-sort-tooltip"),
                ClipText = true,
                HorizontalExpand = expand,
                MinWidth = width,
                MouseFilter = MouseFilterMode.Pass,
            };
            l.OnKeyBindDown += args =>
            {
                if (args.Function != EngineKeyFunctions.UIClick)
                    return;

                if (_sortColumn == col)
                    _sortDescending = !_sortDescending;
                else
                {
                    _sortColumn = col;
                    // Zeit: längste zuerst; Namen: A–Z.
                    _sortDescending = col == SortColumn.Since;
                }

                UpdateSortHeader();
                RebuildRunning();
                args.Handle();
            };
            _sortLabels[col] = l;
            header.AddChild(l);
        }

        Make(SortColumn.Event, 0, true);
        Make(SortColumn.Since, SinceColumnWidth, false);
        Make(SortColumn.Starter, StarterColumnWidth, false);
        header.AddChild(new Control { MinWidth = EndColumnWidth });
        UpdateSortHeader();

        return new PanelContainer
        {
            PanelOverride = new Robust.Client.Graphics.StyleBoxFlat { BackgroundColor = Color.FromHex("#35353c") },
            Children = { header },
        };
    }

    private void UpdateSortHeader()
    {
        foreach (var (col, l) in _sortLabels)
        {
            var key = col switch
            {
                SortColumn.Event => "event-panel-column-event",
                SortColumn.Since => "event-panel-column-since",
                _ => "event-panel-column-starter",
            };
            var text = Loc.GetString(key);
            if (col == _sortColumn)
                text += $" {(_sortDescending ? ArrowDown : ArrowUp)}";
            l.Text = text;
        }
    }

    private IEnumerable<EventPanelRunning> SortRunning(List<EventPanelRunning> list)
    {
        var cmp = StringComparer.CurrentCultureIgnoreCase;
        var system = Loc.GetString("event-panel-column-system");

        // Laufzeit in Sekunden; vorgemerkte (nicht gestartete) Regeln zählen als 0.
        double Elapsed(EventPanelRunning r) =>
            r.Active && r.ActivatedAt is { } at ? Math.Max(0, (_timing.CurTime - at).TotalSeconds) : -1;

        IOrderedEnumerable<EventPanelRunning> ordered;
        switch (_sortColumn)
        {
            case SortColumn.Event:
                ordered = _sortDescending ? list.OrderByDescending(r => r.Name, cmp) : list.OrderBy(r => r.Name, cmp);
                break;
            case SortColumn.Starter:
                ordered = _sortDescending
                    ? list.OrderByDescending(r => r.Starter ?? system, cmp)
                    : list.OrderBy(r => r.Starter ?? system, cmp);
                break;
            default:
                ordered = _sortDescending ? list.OrderByDescending(Elapsed) : list.OrderBy(Elapsed);
                break;
        }

        // Stabile Zweitsortierung nach Name.
        return ordered.ThenBy(r => r.Name, cmp);
    }

    private void RebuildRunning()
    {
        _runningList.RemoveAllChildren();
        var all = _panel.Running;
        var running = _hideTechnical.Pressed ? all.Where(r => !r.Technical).ToList() : all.ToList();
        var hidden = all.Count - running.Count;
        _runningHeader.Text = hidden > 0
            ? Loc.GetString("event-panel-running-header-hidden", ("count", running.Count), ("hidden", hidden))
            : Loc.GetString("event-panel-running-header", ("count", running.Count));

        if (running.Count == 0)
        {
            _runningList.AddChild(_runningEmpty);
            return;
        }

        foreach (var r in SortRunning(running))
        {
            var row = new BoxContainer { Orientation = LayoutOrientation.Horizontal, SeparationOverride = 6 };

            var name = new Label
            {
                Text = r.Name,
                HorizontalExpand = true,
                ClipText = true,
                ToolTip = r.PrototypeId,
            };

            string state;
            if (r.Active && r.ActivatedAt is { } at)
            {
                var elapsed = _timing.CurTime - at;
                if (elapsed < TimeSpan.Zero)
                    elapsed = TimeSpan.Zero;
                state = Loc.GetString("event-panel-running-active", ("time", elapsed.ToString(@"hh\:mm\:ss")));
            }
            else
            {
                state = Loc.GetString("event-panel-running-pending");
            }

            var starter = new Label
            {
                Text = r.Starter is { } admin
                    ? Loc.GetString("event-panel-running-by-admin", ("admin", admin))
                    : Loc.GetString("event-panel-running-by-system"),
                Modulate = r.Starter != null ? Color.FromHex("#f0c060") : Color.Gray,
                MinWidth = StarterColumnWidth,
                ClipText = true,
                ToolTip = Loc.GetString("event-panel-running-by-tooltip"),
            };

            var stateLabel = new Label
            {
                Text = state,
                Modulate = r.Active ? Color.LightGreen : Color.Gold,
                MinWidth = SinceColumnWidth,
            };

            var end = new Button
            {
                Text = Loc.GetString("event-panel-end"),
                ToolTip = Loc.GetString("event-panel-end-tooltip"),
                ModulateSelfOverride = Color.FromHex("#e07070"),
                MinWidth = EndColumnWidth,
            };
            var entity = r.Entity;
            end.OnPressed += _ => _panel.EndEvent(entity);

            row.AddChild(name);
            row.AddChild(stateLabel);
            row.AddChild(starter);
            row.AddChild(end);
            _runningList.AddChild(row);
        }
    }

    // ------------------------------------------------------------------ Katalog

    private static Color CategoryColor(EventPanelCategory c) => c switch
    {
        EventPanelCategory.Danger => Color.FromHex("#e05555"),
        EventPanelCategory.Harmless => Color.FromHex("#6fcf70"),
        EventPanelCategory.Antagonist => Color.FromHex("#e0903a"),
        EventPanelCategory.Fun => Color.FromHex("#6cc7e8"),
        _ => Color.FromHex("#b0b0b0"),
    };

    private bool Matches(EventPanelEntry e, string search)
    {
        switch (_filter)
        {
            case Filter.Favorites when !_favorites.Contains(e.Id):
            case Filter.Danger when e.Category != EventPanelCategory.Danger:
            case Filter.Harmless when e.Category != EventPanelCategory.Harmless:
            case Filter.Antagonist when e.Category != EventPanelCategory.Antagonist:
            case Filter.Fun when e.Category != EventPanelCategory.Fun:
            case Filter.Other when e.Category != EventPanelCategory.Other:
                return false;
        }

        if (_hideTechnical.Pressed && e.Technical)
            return false;

        if (string.IsNullOrWhiteSpace(search))
            return true;

        return e.Name.Contains(search, StringComparison.CurrentCultureIgnoreCase)
               || e.Id.Contains(search, StringComparison.OrdinalIgnoreCase)
               || e.Description.Contains(search, StringComparison.CurrentCultureIgnoreCase);
    }

    private void RebuildCatalog()
    {
        _catalogList.RemoveAllChildren();
        var catalog = _panel.Catalog;

        if (catalog.Count == 0)
        {
            _status.Visible = true;
            _status.Text = Loc.GetString("event-panel-loading");
            return;
        }

        var search = _search.Text.Trim();
        var shown = 0;

        // Favoriten zuerst, danach nach Name (Katalog ist bereits nach Name sortiert).
        foreach (var pass in new[] { true, false })
        {
            foreach (var entry in catalog)
            {
                if (_favorites.Contains(entry.Id) != pass)
                    continue;

                if (!Matches(entry, search))
                    continue;

                _catalogList.AddChild(BuildRow(entry));
                shown++;
            }
        }

        _status.Visible = true;
        _status.Text = shown == 0
            ? Loc.GetString("event-panel-no-results")
            : Loc.GetString("event-panel-count", ("shown", shown), ("total", catalog.Count));
    }

    private Control BuildRow(EventPanelEntry entry)
    {
        var isFav = _favorites.Contains(entry.Id);
        var color = CategoryColor(entry.Category);

        var title = new Label
        {
            Text = entry.Name,
            Modulate = color,
            StyleClasses = { "LabelHeading" },
            HorizontalExpand = true,
            ClipText = true,
            ToolTip = entry.Id,
        };

        var categoryLabel = new Label
        {
            Text = Loc.GetString($"event-panel-category-{entry.Category.ToString().ToLowerInvariant()}"),
            Modulate = color,
        };

        var fav = new Button
        {
            Text = Loc.GetString(isFav ? "event-panel-favorite-on" : "event-panel-favorite-off"),
            ToolTip = Loc.GetString("event-panel-favorite-tooltip"),
            ToggleMode = true,
            Pressed = isFav,
        };
        var id = entry.Id;
        fav.OnPressed += _ =>
        {
            if (!_favorites.Add(id))
                _favorites.Remove(id);
            SaveFavorites();
            RebuildCatalog();
        };

        var start = new Button
        {
            Text = Loc.GetString("event-panel-start"),
            ModulateSelfOverride = entry.NeedsConfirmation ? Color.FromHex("#e0a050") : Color.FromHex("#70c070"),
            MinWidth = 80,
        };
        start.OnPressed += _ => TryStart(entry);

        var header = new BoxContainer
        {
            Orientation = LayoutOrientation.Horizontal,
            SeparationOverride = 6,
            Children = { title, categoryLabel, fav, start },
        };

        var desc = new RichTextLabel { HorizontalExpand = true };
        desc.SetMessage(FormattedMessage.FromUnformatted(entry.Description));
        desc.Modulate = Color.FromHex("#c8c8c8");

        var box = new BoxContainer
        {
            Orientation = LayoutOrientation.Vertical,
            Margin = new Thickness(6, 4),
            Children = { header, desc },
        };

        return new PanelContainer
        {
            PanelOverride = new Robust.Client.Graphics.StyleBoxFlat
            {
                BackgroundColor = Color.FromHex("#25252a"),
                BorderColor = color.WithAlpha(0.6f),
                BorderThickness = new Thickness(3, 0, 0, 0),
            },
            Children = { box },
        };
    }

    private void TryStart(EventPanelEntry entry)
    {
        if (!entry.NeedsConfirmation)
        {
            _panel.StartEvent(entry.Id);
            return;
        }

        _confirm?.Close();
        _confirm = new ConfirmWindow(entry, () => _panel.StartEvent(entry.Id));
        _confirm.OpenCentered();
    }

    /// <summary>Bestätigungsdialog für gefährliche Events.</summary>
    private sealed class ConfirmWindow : DefaultWindow
    {
        public ConfirmWindow(EventPanelEntry entry, Action onConfirm)
        {
            Title = Loc.GetString("event-panel-confirm-title");
            MinSize = new Vector2(380, 140);

            var text = new RichTextLabel { HorizontalExpand = true, MaxWidth = 420 };
            text.SetMessage(FormattedMessage.FromUnformatted(
                Loc.GetString("event-panel-confirm-text", ("name", entry.Name), ("id", entry.Id))));

            var yes = new Button
            {
                Text = Loc.GetString("event-panel-confirm-yes"),
                ModulateSelfOverride = Color.FromHex("#e07070"),
                HorizontalExpand = true,
            };
            yes.OnPressed += _ =>
            {
                onConfirm();
                Close();
            };

            var no = new Button { Text = Loc.GetString("event-panel-confirm-no"), HorizontalExpand = true };
            no.OnPressed += _ => Close();

            Contents.AddChild(new BoxContainer
            {
                Orientation = LayoutOrientation.Vertical,
                Margin = new Thickness(8),
                SeparationOverride = 10,
                Children =
                {
                    text,
                    new BoxContainer
                    {
                        Orientation = LayoutOrientation.Horizontal,
                        SeparationOverride = 6,
                        Children = { yes, no },
                    },
                },
            });
        }
    }
}
