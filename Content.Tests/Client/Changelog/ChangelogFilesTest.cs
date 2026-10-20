// SPDX-License-Identifier: AGPL-3.0-or-later

using System;
using System.Globalization;
using System.IO;
using System.Linq;
using NUnit.Framework;
using YamlDotNet.RepresentationModel;

namespace Content.Tests.Client.Changelog;

/// <summary>
///     Prueft, dass alle Dateien in Resources/Changelog vom Client geladen werden koennen.
///     Ein einziger kaputter time-Wert laesst den gesamten Aenderungsprotokoll-Dialog leer bleiben.
/// </summary>
[TestFixture]
public sealed class ChangelogFilesTest
{
    private static string FindChangelogDir()
    {
        var dir = new DirectoryInfo(TestContext.CurrentContext.TestDirectory);
        while (dir != null)
        {
            var candidate = Path.Combine(dir.FullName, "Resources", "Changelog");
            if (Directory.Exists(candidate))
                return candidate;
            dir = dir.Parent;
        }

        throw new DirectoryNotFoundException("Resources/Changelog nicht gefunden");
    }

    [Test]
    public void AllChangelogFilesParse()
    {
        var files = Directory.GetFiles(FindChangelogDir(), "*.yml");
        Assert.That(files, Is.Not.Empty);

        foreach (var file in files)
        {
            var yaml = new YamlStream();
            using (var reader = new StreamReader(file))
                yaml.Load(reader);

            if (yaml.Documents.Count == 0)
                continue;

            var root = (YamlMappingNode) yaml.Documents[0].RootNode;
            if (!root.Children.TryGetValue(new YamlScalarNode("Entries"), out var entriesNode))
                continue;

            var ids = new System.Collections.Generic.HashSet<int>();
            foreach (var entry in ((YamlSequenceNode) entriesNode).Cast<YamlMappingNode>())
            {
                var id = int.Parse(((YamlScalarNode) entry["id"]).Value!, CultureInfo.InvariantCulture);
                ids.Add(id);

                var time = ((YamlScalarNode) entry["time"]).Value!;
                Assert.That(DateTime.TryParse(time, CultureInfo.InvariantCulture, DateTimeStyles.None, out _),
                    $"{Path.GetFileName(file)}: id {id} hat ungueltigen time-Wert '{time}'");
            }
        }
    }
}
