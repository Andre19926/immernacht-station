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

            // Gruppenspawns/Trupps/Angriffe dürfen nie Harmlos/Spaß sein und brauchen Bestätigung.
            foreach (var id in new[] { "SpawnDeathsquad", "SpawnCBURN", "SpawnHECU", "SpawnERTSecurity", "SpawnERTMedical", "PiratesSpawn", "SpacePirates", "Nukeops", "LoneOpsSpawn", "ZombieOutbreak", "BlobSpawn", "GameRuleMeteorSwarmLarge", "ImmovableRodSpawn", "MalignRiftSpawn", "MimicVendorRule" })
            {
                var e = catalog.FirstOrDefault(c => c.Id == id);
                Assert.That(e, Is.Not.Null, id);
                Assert.That(e!.Category, Is.AnyOf(EventPanelCategory.Antagonist, EventPanelCategory.Danger), id);
                Assert.That(e.NeedsConfirmation, Is.True, id);
            }

            foreach (var e in catalog)
                TestContext.Out.WriteLine($"CAT {e.Category} {e.Id}");

            // Technische Regeln (Variation-Passes) müssen markiert sein, normale Events nicht.
            Assert.That(catalog.Any(e => e.Technical && e.Id.Contains("VariationPass")));
            Assert.That(catalog.Where(e => e.Category == EventPanelCategory.Harmless).Any(e => !e.Technical));

            var before = panel.GetRunning().Count;
            var harmless = catalog.First(e => e.Category == EventPanelCategory.Harmless);
            var ent = ticker.AddGameRule(harmless.Id);
            Assert.That(panel.GetRunning().Count, Is.EqualTo(before + 1));
            Assert.That(panel.GetRunning().Any(r => r.Entity == server.EntMan.GetNetEntity(ent)));

            // Ohne Eintrag: "System"; mit Eintrag: Name des Admins.
            Assert.That(panel.GetRunning().First(r => r.Entity == server.EntMan.GetNetEntity(ent)).Starter, Is.Null);
            ticker.GameRuleStarters[ent] = "TestAdmin";
            Assert.That(panel.GetRunning().First(r => r.Entity == server.EntMan.GetNetEntity(ent)).Starter, Is.EqualTo("TestAdmin"));

            var technical = ticker.AddGameRule("BasicDecalDirtVariationPass");
            Assert.That(panel.GetRunning().First(r => r.Entity == server.EntMan.GetNetEntity(technical)).Technical);
            ticker.EndGameRule(technical);
            ticker.EndGameRule(ent);
            Assert.That(panel.GetRunning().Count, Is.EqualTo(before));
        });

        await pair.CleanReturnAsync();
    }
}
