// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Linq;
using Content.Goobstation.Common.StationEvents.SecretPlus;
using Content.Server.Administration.Logs;
using Content.Server.Antag.Components;
using Content.Server.Chat.Managers;
using Content.Server.GameTicking;
using Content.Server.StationEvents.Components;
using Content.Shared.Administration;
using Content.Shared.Administration.EventPanel;
using Content.Shared.Administration.Managers;
using Content.Shared.Database;
using Content.Shared.GameTicking.Components;
using Robust.Shared.Player;
using Robust.Shared.Prototypes;

namespace Content.Server.Administration.EventPanel;

/// <summary>
///     Serverseitige Logik des Event-Panels im Admin-Menü.
///     Listet alle Spielregel-Prototypen (Events) auf, startet sie und beendet laufende Events.
///     Jede Anfrage wird serverseitig gegen <see cref="RequiredFlag"/> geprüft.
/// </summary>
public sealed class EventPanelSystem : EntitySystem
{
    [Dependency] private readonly GameTicker _gameTicker = default!;
    [Dependency] private readonly ISharedAdminManager _admin = default!;
    [Dependency] private readonly IAdminLogManager _adminLog = default!;
    [Dependency] private readonly IChatManager _chat = default!;
    [Dependency] private readonly IPrototypeManager _prototype = default!;

    /// <summary>Gleiche Berechtigung wie die Konsolenbefehle addgamerule/endgamerule.</summary>
    public const AdminFlags RequiredFlag = AdminFlags.Fun;

    private static readonly HashSet<string> DangerTypes = new() { "Chaotic", "HostilesSpawn", "Interference" };
    private static readonly HashSet<string> FunTypes = new() { "FriendlySpawn", "FreeStuff", "FreeStuffUseful" };

    // Der Katalog hängt nur von den Prototypen ab und wird beim ersten Zugriff erzeugt.
    private List<EventPanelEntry>? _catalog;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeNetworkEvent<EventPanelRequestEvent>(OnRequest);
        SubscribeNetworkEvent<EventPanelStartEvent>(OnStart);
        SubscribeNetworkEvent<EventPanelEndEvent>(OnEnd);

        _prototype.PrototypesReloaded += _ => _catalog = null;
    }

    private bool HasPermission(ICommonSession session)
    {
        return _admin.HasAdminFlag(session, RequiredFlag);
    }

    private void OnRequest(EventPanelRequestEvent msg, EntitySessionEventArgs args)
    {
        if (!HasPermission(args.SenderSession))
            return;

        if (msg.IncludeCatalog)
            RaiseNetworkEvent(new EventPanelCatalogEvent { Entries = GetCatalog() }, args.SenderSession);

        RaiseNetworkEvent(new EventPanelRunningEvent { Running = GetRunning() }, args.SenderSession);
    }

    private void OnStart(EventPanelStartEvent msg, EntitySessionEventArgs args)
    {
        var session = args.SenderSession;
        if (!HasPermission(session))
            return;

        // Nur echte, nicht-abstrakte Spielregel-Prototypen zulassen (keine beliebigen Entitäten spawnen).
        if (GetCatalog().All(e => e.Id != msg.PrototypeId))
            return;

        _adminLog.Add(LogType.EventStarted,
            LogImpact.High,
            $"{session} hat über das Event-Panel die Spielregel [{msg.PrototypeId}] gestartet");
        _chat.SendAdminAnnouncement(Loc.GetString("add-gamerule-admin", ("rule", msg.PrototypeId), ("admin", session)));

        var ent = _gameTicker.AddGameRule(msg.PrototypeId);

        // Wie addgamerule: Mitten in der Runde sofort starten, in der Lobby nur vormerken.
        if (_gameTicker.RunLevel == GameRunLevel.InRound)
            _gameTicker.StartGameRule(ent);

        RaiseNetworkEvent(new EventPanelRunningEvent { Running = GetRunning() }, session);
    }

    private void OnEnd(EventPanelEndEvent msg, EntitySessionEventArgs args)
    {
        var session = args.SenderSession;
        if (!HasPermission(session))
            return;

        if (!TryGetEntity(msg.Entity, out var ent) || !HasComp<GameRuleComponent>(ent))
            return;

        var proto = MetaData(ent.Value).EntityPrototype?.ID ?? "?";

        _adminLog.Add(LogType.EventStopped,
            LogImpact.High,
            $"{session} hat über das Event-Panel die Spielregel [{proto}] ({ToPrettyString(ent.Value)}) beendet");
        _chat.SendAdminAnnouncement(Loc.GetString("event-panel-admin-ended", ("rule", proto), ("admin", session)));

        _gameTicker.EndGameRule(ent.Value);

        RaiseNetworkEvent(new EventPanelRunningEvent { Running = GetRunning() }, session);
    }

    public List<EventPanelRunning> GetRunning()
    {
        var list = new List<EventPanelRunning>();
        foreach (var uid in _gameTicker.GetAddedGameRules())
        {
            var meta = MetaData(uid);
            var id = meta.EntityPrototype?.ID ?? "?";
            var active = HasComp<ActiveGameRuleComponent>(uid);
            var rule = Comp<GameRuleComponent>(uid);

            list.Add(new EventPanelRunning(
                GetNetEntity(uid),
                id,
                string.IsNullOrWhiteSpace(meta.EntityName) ? id : meta.EntityName,
                active,
                active ? rule.ActivatedAt : null));
        }

        return list.OrderByDescending(r => r.Active).ThenBy(r => r.Name, StringComparer.CurrentCultureIgnoreCase).ToList();
    }

    public List<EventPanelEntry> GetCatalog()
    {
        if (_catalog != null)
            return _catalog;

        var list = new List<EventPanelEntry>();
        foreach (var proto in _gameTicker.GetAllGameRulePrototypes())
        {
            var category = Categorize(proto);
            var name = string.IsNullOrWhiteSpace(proto.Name) ? proto.ID : proto.Name;

            list.Add(new EventPanelEntry(
                proto.ID,
                name,
                Describe(proto, category),
                category,
                category is EventPanelCategory.Danger or EventPanelCategory.Antagonist or EventPanelCategory.Other));
        }

        _catalog = list.OrderBy(e => e.Name, StringComparer.CurrentCultureIgnoreCase).ToList();
        return _catalog;
    }

    private EventPanelCategory Categorize(EntityPrototype proto)
    {
        if (proto.TryGetComponent<AntagSelectionComponent>(out _, EntityManager.ComponentFactory))
            return EventPanelCategory.Antagonist;

        if (!proto.TryGetComponent<StationEventComponent>(out var ev, EntityManager.ComponentFactory))
            return EventPanelCategory.Other;

        var type = ev.EventType.Id;
        if (DangerTypes.Contains(type))
            return EventPanelCategory.Danger;

        if (!ev.IsSelectable || FunTypes.Contains(type))
            return EventPanelCategory.Fun;

        return EventPanelCategory.Harmless;
    }

    private string Describe(EntityPrototype proto, EventPanelCategory category)
    {
        var parts = new List<string>();

        if (!string.IsNullOrWhiteSpace(proto.Description))
            parts.Add(proto.Description.Trim());

        if (proto.TryGetComponent<StationEventComponent>(out var ev, EntityManager.ComponentFactory))
        {
            if (ev.StartAnnouncement is { } key && Loc.TryGetString(key, out var announce) && !string.IsNullOrWhiteSpace(announce))
                parts.Add(Loc.GetString("event-panel-desc-announcement", ("text", Truncate(announce, 180))));

            parts.Add(Loc.GetString("event-panel-desc-stats",
                ("minPlayers", ev.MinimumPlayers),
                ("earliest", ev.EarliestStart),
                ("type", Loc.TryGetString($"event-panel-type-{ev.EventType.Id}", out var typeName) ? typeName : ev.EventType.Id)));
        }
        else if (category == EventPanelCategory.Antagonist)
        {
            parts.Add(Loc.GetString("event-panel-desc-antag"));
        }
        else if (parts.Count == 0)
        {
            parts.Add(Loc.GetString("event-panel-desc-other"));
        }

        return string.Join("\n", parts);
    }

    private static string Truncate(string text, int max)
    {
        text = text.Replace('\n', ' ');
        return text.Length <= max ? text : text[..max].TrimEnd() + "…";
    }
}
