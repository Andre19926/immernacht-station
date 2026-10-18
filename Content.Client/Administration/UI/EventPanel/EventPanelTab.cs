// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Numerics;
using Content.Client.Administration.Systems;
using Content.Shared.Administration.EventPanel;
using Content.Shared.CCVar;
using Robust.Client.UserInterface;
using Robust.Client.UserInterface.Controls;
using Robust.Client.UserInterface.CustomControls;
using Robust.Shared.Configuration;
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

    public EventPanelTab()
    {
        IoCManager.InjectDependencies(this);
        _panel = _sysMan.GetEntitySystem<EventPanelSystem>();

        Orientation = LayoutOrientation.Vertical;
        Margin = new Thickness(4);
        MinSize = new Vector2(620, 360);
        VerticalExpand = true;
        HorizontalExpand = true;

        LoadFavorites();

        // --- Laufende Events -------------------------------------------------
        _runningHeader = new Label
        {
            StyleClasses = { "LabelHeading" },
            Text = Loc.GetString("event-panel-running-header", ("count", 0)),
        };
        AddChild(_runningHeader);

        _runningEmpty = new Label
        {
            Text = Loc.GetString("event-panel-running-empty"),
            Modulate = Color.Gray,
        };
        _runningList = new BoxContainer { Orientation = LayoutOrientation.Vertical, SeparationOverride = 2 };
        AddChild(new ScrollContainer
        {
            MinHeight = 80,
            MaxHeight = 130,
            HScrollEnabled = false,
            HorizontalExpand = true,
            Children = { _runningList },
        });

        AddChild(new Control { MinHeight = 6 });

        // --- Suche + Filter ---------------------------------------------------
        _search = new LineEdit
        {
            PlaceHolder = Loc.GetString("event-panel-search-placeholder"),
            HorizontalExpand = true,
        };
        _search.OnTextChanged += _ => RebuildCatalog();
        var clear = new Button { Text = Loc.GetString("event-panel-search-clear") };
        clear.OnPressed += _ => _search.Clear();
        AddChild(new BoxContainer
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

        AddChild(filterRow);

        // --- Katalog ----------------------------------------------------------
        _status = new Label { Modulate = Color.Gray, Text = Loc.GetString("event-panel-loading") };
        AddChild(_status);

        _catalogList = new BoxContainer { Orientation = LayoutOrientation.Vertical, SeparationOverride = 3 };
        AddChild(new ScrollContainer
        {
            VerticalExpand = true,
            HorizontalExpand = true,
            HScrollEnabled = false,
            Children = { _catalogList },
        });

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

    private void RebuildRunning()
    {
        _runningList.RemoveAllChildren();
        var running = _panel.Running;
        _runningHeader.Text = Loc.GetString("event-panel-running-header", ("count", running.Count));

        if (running.Count == 0)
        {
            _runningList.AddChild(_runningEmpty);
            return;
        }

        foreach (var r in running)
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

            var stateLabel = new Label
            {
                Text = state,
                Modulate = r.Active ? Color.LightGreen : Color.Gold,
                MinWidth = 150,
            };

            var end = new Button
            {
                Text = Loc.GetString("event-panel-end"),
                ToolTip = Loc.GetString("event-panel-end-tooltip"),
                ModulateSelfOverride = Color.FromHex("#e07070"),
            };
            var entity = r.Entity;
            end.OnPressed += _ => _panel.EndEvent(entity);

            row.AddChild(name);
            row.AddChild(stateLabel);
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
