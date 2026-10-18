// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Linq;
using Content.Server.Administration.EventPanel;
using Content.Server.GameTicking;
using Content.Shared.Administration.EventPanel;
using Robust.Shared.GameObjects;

namespace Content.IntegrationTests.Tests.Administration;

[TestFixture]
[TestOf(typeof(EventPanelSystem))]
public sealed class EventPanelTest
{
    /// <summary>
    ///     Der Katalog muss ohne Fehler aufgebaut werden, Kategorien enthalten und jede Beschreibung/Name gefüllt sein.
    ///     Außerdem wird ein Event gestartet, in der Laufend-Liste gefunden und wieder beendet.
    /// </summary>
    [Test]
    public async Task CatalogAndStartEnd()
    {
        await using var pair = await PoolManager.GetServerClient(new PoolSettings { DummyTicker = false, Connected = true });
        var server = pair.Server;
        var panel = server.System<EventPanelSystem>();
        var ticker = server.System<GameTicker>();

        await server.WaitAssertion(() =>
        {
            var catalog = panel.GetCatalog();
            Assert.That(catalog, Is.Not.Empty);
            Assert.That(catalog.All(e => !string.IsNullOrWhiteSpace(e.Name) && !string.IsNullOrWhiteSpace(e.Description)));
            TestContext.Out.WriteLine($"Katalog: {catalog.Count} Einträge");
            foreach (var group in catalog.GroupBy(e => e.Category))
            {
                TestContext.Out.WriteLine($"  {group.Key}: {group.Count()}");
            }

            Assert.That(catalog.Any(e => e.Category == EventPanelCategory.Harmless));
            Assert.That(catalog.Any(e => e.Category == EventPanelCategory.Danger));
            Assert.That(catalog.Any(e => e.Category == EventPanelCategory.Antagonist));

            var before = panel.GetRunning().Count;
            var harmless = catalog.First(e => e.Category == EventPanelCategory.Harmless);
            var ent = ticker.AddGameRule(harmless.Id);
            Assert.That(panel.GetRunning().Count, Is.EqualTo(before + 1));
            Assert.That(panel.GetRunning().Any(r => r.Entity == server.EntMan.GetNetEntity(ent)));
            ticker.EndGameRule(ent);
            Assert.That(panel.GetRunning().Count, Is.EqualTo(before));
        });

        await pair.CleanReturnAsync();
    }
}
