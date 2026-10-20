// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Collections.Generic;
using System.Linq;
using Content.Goobstation.Common.NTR.Scan;
using Content.Server.Atmos.Components;
using Content.Shared.Armor;
using Content.Shared.Contraband;
using Content.Shared.Preferences.Loadouts;
using Content.Shared.Roles;
using Content.Shared.Storage;
using Content.Shared.Storage.Components;
using Content.Shared.Radio.Components;
using Content.Shared.Store;
using Content.Shared.Store.Components;
using Robust.Shared.Containers;
using Robust.Shared.GameObjects;
using Robust.Shared.Prototypes;

namespace Content.IntegrationTests.Tests.Immernacht;

[TestFixture]
public sealed class SyndicateDiplomatTest
{
    private static readonly string[] DiplomatCategories =
    {
        "DiplomatLifestyle", "DiplomatGifts", "DiplomatOffice", "DiplomatSafety",
    };

    /// <summary>
    /// Der Diplomaten-Uplink darf nur seine eigene Waehrung nutzen und jedes Produkt muss spawnbar sein.
    /// </summary>
    [Test]
    public async Task UplinkListingsAreDiplomatOnly()
    {
        await using var pair = await PoolManager.GetServerClient(new PoolSettings { Dirty = true });
        var server = pair.Server;
        var testMap = await pair.CreateTestMap();

        await server.WaitAssertion(() =>
        {
            var listings = server.ProtoMan.EnumeratePrototypes<ListingPrototype>()
                .Where(l => l.Categories.Any(c => DiplomatCategories.Contains(c.Id)))
                .ToList();

            Assert.That(listings, Is.Not.Empty);

            foreach (var listing in listings)
            {
                // Keine Telekristalle, nur Gefallen
                Assert.That(listing.Cost.Keys.All(k => k.Id == "DiplomaticFavor"), $"{listing.ID} nutzt eine fremde Waehrung");
                Assert.That(listing.Cost.Values.All(v => v > 0), $"{listing.ID} hat keinen Preis");

                // Kein Eintrag darf zugleich im normalen Uplink stehen
                Assert.That(listing.Categories.All(c => DiplomatCategories.Contains(c.Id)), $"{listing.ID} liegt auch in fremden Kategorien");

                if (listing.ProductEntity is { } product)
                {
                    var ent = server.EntMan.SpawnEntity(product, testMap.GridCoords);
                    server.EntMan.DeleteEntity(ent);
                }
            }

            // Uplink-Geraet: eigene Preset-Kategorien, 30 Gefallen
            var uplink = server.EntMan.SpawnEntity("SyndicateDiplomatUplink", testMap.GridCoords);
            var store = server.EntMan.GetComponent<StoreComponent>(uplink);
            Assert.That(store.CurrencyWhitelist.Select(c => c.Id), Is.EquivalentTo(new[] { "DiplomaticFavor" }));
            Assert.That(store.Balance["DiplomaticFavor"].Int(), Is.EqualTo(30));
            Assert.That(store.Categories.Select(c => c.Id), Is.EquivalentTo(DiplomatCategories));
            server.EntMan.DeleteEntity(uplink);
        });

        await pair.CleanReturnAsync();
    }

    /// <summary>
    /// Headset: Common, Service und Syndicate - nichts anderes.
    /// </summary>
    [Test]
    public async Task HeadsetChannels()
    {
        await using var pair = await PoolManager.GetServerClient(new PoolSettings { Dirty = true });
        var server = pair.Server;
        var testMap = await pair.CreateTestMap();

        await server.WaitAssertion(() =>
        {
            var headset = server.EntMan.SpawnEntity("ClothingHeadsetSyndicateDiplomat", testMap.GridCoords);
            var holder = server.EntMan.GetComponent<EncryptionKeyHolderComponent>(headset);
            Assert.That(holder.Channels.Select(c => c.Id), Is.EquivalentTo(new[] { "Common", "Service", "Syndicate" }));
            server.EntMan.DeleteEntity(headset);
        });

        await pair.CleanReturnAsync();
    }

    /// <summary>
    /// Der gefuellte Aktenkoffer enthaelt Stempel, Siegel, Stift und die drei Vertragsvorlagen.
    /// </summary>
    [Test]
    public async Task BriefcaseContents()
    {
        await using var pair = await PoolManager.GetServerClient(new PoolSettings { Dirty = true });
        var server = pair.Server;
        var testMap = await pair.CreateTestMap();

        await server.WaitAssertion(() =>
        {
            var briefcase = server.EntMan.SpawnEntity("BriefcaseSyndicateDiplomatFilled", testMap.GridCoords);
            var storage = server.EntMan.GetComponent<StorageComponent>(briefcase);
            var protos = storage.Container.ContainedEntities
                .Select(e => server.EntMan.GetComponent<MetaDataComponent>(e).EntityPrototype?.ID)
                .ToList();

            foreach (var expected in new[]
                     {
                         "RubberStampSyndicateDiplomat", "RubberStampApproved", "RubberStampDenied", "LuxuryPen",
                         "PaperSyndicateDiplomatTradeAgreement", "PaperSyndicateDiplomatNonAggression", "PaperSyndicateDiplomatFavor",
                     })
            {
                Assert.That(protos, Does.Contain(expected));
            }

            Assert.That(protos.Count(p => p == "Paper"), Is.EqualTo(4));
            server.EntMan.DeleteEntity(briefcase);
        });

        await pair.CleanReturnAsync();
    }

    /// <summary>
    /// Syndikat-Agenten-Spielzeit: Antag-Tracker sind gesetzt, die Anforderung des Diplomaten
    /// (50h Syndikat-Agent) wird auch ohne Job-Tracker korrekt geprueft.
    /// </summary>
    [Test]
    public async Task SyndicateAgentPlaytimeRequirement()
    {
        await using var pair = await PoolManager.GetServerClient();
        var server = pair.Server;

        await server.WaitAssertion(() =>
        {
            foreach (var antag in new[] { "Traitor", "TraitorSleeper", "Nukeops", "NukeopsMedic", "NukeopsCommander", "Contractor" })
            {
                var proto = server.ProtoMan.Index<AntagPrototype>(antag);
                Assert.That(proto.PlayTimeTracker?.Id, Is.EqualTo("AntagSyndicateAgent"), antag);
            }

            var job = server.ProtoMan.Index<JobPrototype>("SyndicateDiplomat");
            var roleSys = server.EntMan.System<SharedRoleSystem>();
            var req = roleSys.GetRoleRequirements(job)?.OfType<RoleTimeRequirement>().Single(r => r.Role == "AntagSyndicateAgent");
            Assert.That(req, Is.Not.Null);
            Assert.That(req!.Time, Is.EqualTo(TimeSpan.FromHours(50)));

            var none = new Dictionary<string, TimeSpan>();
            var almost = new Dictionary<string, TimeSpan> { ["AntagSyndicateAgent"] = TimeSpan.FromHours(49) };
            var enough = new Dictionary<string, TimeSpan> { ["AntagSyndicateAgent"] = TimeSpan.FromHours(50) };

            Assert.That(req.Check(server.EntMan, server.ProtoMan, null, none, out var reason), Is.False);
            Assert.That(reason, Is.Not.Null);
            Assert.That(req.Check(server.EntMan, server.ProtoMan, null, almost, out _), Is.False);
            Assert.That(req.Check(server.EntMan, server.ProtoMan, null, enough, out _), Is.True);
        });

        await pair.CleanReturnAsync();
    }

    /// <summary>
    /// Garderobe: optional, ein Stück pro Slot, ohne Schmuggelmarkierung, Rüstung oder Weltraumschutz.
    /// </summary>
    [Test]
    public async Task WardrobeHasNoContrabandOrArmor()
    {
        await using var pair = await PoolManager.GetServerClient(new PoolSettings { Dirty = true });
        var server = pair.Server;
        var testMap = await pair.CreateTestMap();

        var pieces = new[]
        {
            "ClothingHeadHatSyndicateDiplomat",
            "ClothingHeadHatBeretSyndicateDiplomat",
            "ClothingHeadHatTophatSyndicateDiplomat",
            "ClothingHeadHatFezSyndicateDiplomat",
            "ClothingHeadHatBowlerSyndicateDiplomat",
            "ClothingHeadHatHoodWinterSyndicateDiplomat",
            "ClothingOuterCoatSyndicateDiplomat",
            "ClothingOuterWinterSyndicateDiplomat",
            "ClothingOuterWinterGildedSyndicateDiplomat",
            "ClothingOuterCoatEveningSyndicateDiplomat",
            "ClothingOuterCoatReceptionSyndicateDiplomat",
            "ClothingNeckPonchoSyndicateDiplomat",
            "ClothingNeckScarfSyndicateDiplomat",
            "ClothingNeckTieSyndicateDiplomat",
        };

        await server.WaitAssertion(() =>
        {
            var role = server.ProtoMan.Index<RoleLoadoutPrototype>("JobSyndicateDiplomat");
            var groupIds = role.Groups.Select(g => g.Id).ToList();
            Assert.That(groupIds, Does.Contain("SyndicateDiplomatHead"));
            Assert.That(groupIds, Does.Contain("SyndicateDiplomatOuter"));
            Assert.That(groupIds, Does.Contain("SyndicateDiplomatNeck"));

            foreach (var (groupId, slot) in new[]
                     {
                         ("SyndicateDiplomatHead", "head"),
                         ("SyndicateDiplomatOuter", "outerClothing"),
                         ("SyndicateDiplomatNeck", "neck"),
                     })
            {
                var group = server.ProtoMan.Index<LoadoutGroupPrototype>(groupId);
                Assert.That(group.MinLimit, Is.EqualTo(0), groupId);
                Assert.That(group.MaxLimit, Is.EqualTo(1), groupId);
                Assert.That(group.Loadouts, Is.Not.Empty, groupId);

                foreach (var loadoutId in group.Loadouts)
                {
                    var loadout = server.ProtoMan.Index<LoadoutPrototype>(loadoutId);
                    Assert.That(loadout.Effects, Is.Empty, $"{loadoutId} ist nicht frei wählbar");
                    Assert.That(loadout.Equipment.Keys, Is.EquivalentTo(new[] { slot }), loadoutId);
                    Assert.That(pieces, Does.Contain(loadout.Equipment[slot].Id), loadoutId);
                }
            }

            foreach (var id in pieces)
            {
                var proto = server.ProtoMan.Index<EntityPrototype>(id);
                Assert.That(proto.Components.ContainsKey("Contraband"), Is.False, id);
                Assert.That(proto.Components.ContainsKey("Armor"), Is.False, id);
                Assert.That(proto.Components.ContainsKey("ScannableForPoints"), Is.False, id);
                Assert.That(proto.Components.ContainsKey("PressureProtection"), Is.False, id);
                Assert.That(proto.Components.ContainsKey("SecretStash"), Is.False, id);

                var ent = server.EntMan.SpawnEntity(id, testMap.GridCoords);
                Assert.That(server.EntMan.HasComponent<ContrabandComponent>(ent), Is.False, id);
                Assert.That(server.EntMan.HasComponent<ArmorComponent>(ent), Is.False, id);
                Assert.That(server.EntMan.HasComponent<ScannableForPointsComponent>(ent), Is.False, id);
                Assert.That(server.EntMan.HasComponent<PressureProtectionComponent>(ent), Is.False, id);
                Assert.That(server.EntMan.HasComponent<SecretStashComponent>(ent), Is.False, id);

                if (id is "ClothingOuterWinterSyndicateDiplomat" or "ClothingOuterWinterGildedSyndicateDiplomat")
                {
                    var containers = server.EntMan.System<SharedContainerSystem>();
                    Assert.That(containers.TryGetContainer(ent, "toggleable-clothing", out var hoods), Is.True, id);
                    var hoodIds = hoods.ContainedEntities
                        .Select(e => server.EntMan.GetComponent<MetaDataComponent>(e).EntityPrototype?.ID)
                        .ToList();
                    Assert.That(hoodIds, Is.EquivalentTo(new[] { "ClothingHeadHatHoodWinterSyndicateDiplomat" }), id);
                }

                server.EntMan.DeleteEntity(ent);
            }
        });

        await pair.CleanReturnAsync();
    }
}
