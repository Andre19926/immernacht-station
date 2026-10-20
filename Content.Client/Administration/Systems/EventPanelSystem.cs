// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.Administration.EventPanel;

namespace Content.Client.Administration.Systems;

/// <summary>
///     Client-Seite des Event-Panels: hält die zuletzt empfangenen Daten und verschickt Anfragen.
///     Die eigentliche Berechtigungsprüfung passiert ausschließlich auf dem Server.
/// </summary>
public sealed class EventPanelSystem : EntitySystem
{
    public IReadOnlyList<EventPanelEntry> Catalog { get; private set; } = Array.Empty<EventPanelEntry>();
    public IReadOnlyList<EventPanelRunning> Running { get; private set; } = Array.Empty<EventPanelRunning>();

    public event Action? CatalogUpdated;
    public event Action? RunningUpdated;

    public override void Initialize()
    {
        base.Initialize();
        SubscribeNetworkEvent<EventPanelCatalogEvent>(OnCatalog);
        SubscribeNetworkEvent<EventPanelRunningEvent>(OnRunning);
    }

    private void OnCatalog(EventPanelCatalogEvent msg)
    {
        Catalog = msg.Entries;
        CatalogUpdated?.Invoke();
    }

    private void OnRunning(EventPanelRunningEvent msg)
    {
        Running = msg.Running;
        RunningUpdated?.Invoke();
    }

    public void Request(bool includeCatalog)
    {
        RaiseNetworkEvent(new EventPanelRequestEvent { IncludeCatalog = includeCatalog });
    }

    public void StartEvent(string prototypeId)
    {
        RaiseNetworkEvent(new EventPanelStartEvent { PrototypeId = prototypeId });
    }

    public void EndEvent(NetEntity entity)
    {
        RaiseNetworkEvent(new EventPanelEndEvent { Entity = entity });
    }
}
