// SPDX-License-Identifier: AGPL-3.0-or-later

using Robust.Shared.Serialization;

namespace Content.Shared.Administration.EventPanel;

/// <summary>
///     Kategorien des Event-Panels. Wird serverseitig anhand der Spielregel-Komponenten bestimmt.
/// </summary>
[Serializable, NetSerializable]
public enum EventPanelCategory : byte
{
    /// <summary>Events, die der Station ernsthaft schaden können (Feinde, Chaos, Störungen).</summary>
    Danger,

    /// <summary>Weitgehend ungefährliche Events (Wartung, Neutrales).</summary>
    Harmless,

    /// <summary>Antagonisten-Spielregeln.</summary>
    Antagonist,

    /// <summary>Spaß-Events (Geschenke, freundliche Spawns, Admeme).</summary>
    Fun,

    /// <summary>Alles andere (Spielmodi, Planer, Hilfsregeln). Mit Vorsicht benutzen.</summary>
    Other,
}

/// <summary>
///     Ein startbares Event (eine Spielregel-Prototype).
/// </summary>
[Serializable, NetSerializable]
public sealed record EventPanelEntry(
    string Id,
    string Name,
    string Description,
    EventPanelCategory Category,
    bool NeedsConfirmation,
    bool Technical);

/// <summary>
///     Ein aktuell hinzugefügtes bzw. laufendes Event (Spielregel-Entität).
///     <c>Starter</c> ist der Name des Admins, der es gestartet hat (Panel oder addgamerule),
///     <c>null</c> bedeutet "System" (Spielmodus, Event-Scheduler, Dynamic, Zufallsevent).
///     <c>Technical</c> markiert Map-Gen-/Variations-Passes und ähnliche Hilfsregeln.
/// </summary>
[Serializable, NetSerializable]
public sealed record EventPanelRunning(
    NetEntity Entity,
    string PrototypeId,
    string Name,
    bool Active,
    TimeSpan? ActivatedAt,
    string? Starter,
    bool Technical);

/// <summary>Client -> Server: Katalog und laufende Events anfordern.</summary>
[Serializable, NetSerializable]
public sealed class EventPanelRequestEvent : EntityEventArgs
{
    /// <summary>Wenn true, wird zusätzlich der (statische) Katalog gesendet.</summary>
    public bool IncludeCatalog;
}

/// <summary>Server -> Client: Katalog aller startbaren Events.</summary>
[Serializable, NetSerializable]
public sealed class EventPanelCatalogEvent : EntityEventArgs
{
    public List<EventPanelEntry> Entries = new();
}

/// <summary>Server -> Client: Liste der aktuell laufenden Events.</summary>
[Serializable, NetSerializable]
public sealed class EventPanelRunningEvent : EntityEventArgs
{
    public List<EventPanelRunning> Running = new();
}

/// <summary>Client -> Server: Event starten.</summary>
[Serializable, NetSerializable]
public sealed class EventPanelStartEvent : EntityEventArgs
{
    public string PrototypeId = string.Empty;
}

/// <summary>Client -> Server: Laufendes Event beenden.</summary>
[Serializable, NetSerializable]
public sealed class EventPanelEndEvent : EntityEventArgs
{
    public NetEntity Entity;
}
