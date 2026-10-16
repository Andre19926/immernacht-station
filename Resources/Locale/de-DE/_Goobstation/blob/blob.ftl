# SPDX-FileCopyrightText: 2024 Fishbait <Fishbait@git.ml>
# SPDX-FileCopyrightText: 2024 fishbait <gnesse@gmail.com>
# SPDX-FileCopyrightText: 2024 lanse12 <cloudability.ez@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 GitHubUser53123 <110841413+GitHubUser53123@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Ilya246 <57039557+Ilya246@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 JohnOakman <sremy2012@hotmail.fr>
# SPDX-FileCopyrightText: 2025 Panela <107573283+AgentePanela@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

ent-SpawnPointGhostBlob = Blob-Laicher
    .suffix = DEBUG, Ghost Role Spawner
    .desc = { ent-MarkerBase.desc }
ent-MobBlobPod = Blob Drop
    .desc = Ein gewöhnlicher Blob Fighter.
ent-MobBlobBlobbernaut = Blobbernau
    .desc = Ein Elite Blob Fighter.
ent-BaseBlob = Basic Blob.
    .desc = { "" }
ent-NormalBlobTile = Regelmäßiger Fliesenblob
    .desc = Ein gewöhnlicher Teil des Blobs, der für den Bau fortgeschrittener Fliesen erforderlich ist.
ent-CoreBlobTile = Blob Core
    .desc = Das wichtigste Organ des Blobs. Durch die Zerstörung des Kerns wird die Infektion aufhören.
ent-FactoryBlobTile = Blob Fabrik
    .desc = Spawnt Blob Drops und Blobbernauts im Laufe der Zeit.
ent-ResourceBlobTile = Resource Blob
    .desc = Produziert Ressourcen für den Blob.
ent-NodeBlobTile = Blob Node
    .desc = Eine Mini-Version des Kerns, mit der Sie spezielle Blob-Kacheln um sich herum platzieren können.
ent-StrongBlobTile = Starke Blob-Fliese
    .desc = Eine verstärkte Version der regulären Kachel. Es lässt keine Luft durch und schützt vor rohen Schäden.
ent-ReflectiveBlobTile = Blob Reflektierende Fliesen
    .desc = It reflects lasers, but does not protect against brute damage as well.
    .desc = Es reflektiert Laser, schützt aber auch nicht vor rohen Schäden.
objective-issuer-blob = Bohnen


ghost-role-information-blobbernaut-name = Blobbernau
ghost-role-information-blobbernaut-description = Du bist ein Blobbernaut. Sie müssen den Blob Core verteidigen. Verwenden sie + oder +e im chat, um im blobmind zu sprechen.

ghost-role-information-blob-name = Bohnen
ghost-role-information-blob-description = Sie sind die Blob-Infektion. Verbrauchen Sie die Station.

roles-antag-blob-name = Bohnen
roles-antag-blob-objective = Kritische Masse erreichen.

guide-entry-blob = Bohnen

# Popups
blob-target-normal-blob-invalid = Falscher Blob-Typ, wählen Sie einen normalen Blob.
blob-target-factory-blob-invalid = Falscher Blob-Typ, wählen Sie einen Factory-Blob.
blob-target-node-blob-invalid = Falscher Blob-Typ, wählen Sie einen Node-Blob.
blob-target-close-to-resource = Zu nah an einem anderen Ressourcen-Blob.
blob-target-nearby-not-node = Kein Knoten oder Ressourcen-Blob in der Nähe.
blob-target-close-to-node = Zu nah an einem anderen Knoten.
blob-target-already-produce-blobbernaut = Diese Fabrik hat bereits einen Blobbernaut produziert.
blob-cant-split = Sie können den Blob-Core nicht teilen.
blob-not-have-nodes = Sie haben keine Nodes.
blob-not-enough-resources = Nicht genügend Ressourcen.
blob-help = Nur Gott kann dir helfen.
blob-swap-chem = In der Entwicklung.
blob-mob-attack-blob = Du kannst einen Blob nicht angreifen.
blob-get-resource = +{ $point }
blob-spent-resource = -{ $point }
blobberaut-not-on-blob-tile = Sie sterben, während Sie nicht auf Blob Fliesen.
carrier-blob-alert = Sie haben { $second } Sekunden vor der Transformation.

blob-mob-zombify-second-start = { $pod } Es fängt an, dich in einen Zombie zu verwandeln.
blob-mob-zombify-third-start = { $pod } Angedreht { $target } In einen Zombie.

blob-mob-zombify-second-end = { $pod } macht dich zu einem Zombie.
blob-mob-zombify-third-end = { $pod } Wendeln { $target } In einen Zombie.

blobberaut-factory-destroy = Fabrikvernichtung
blob-target-already-connected = bereits verbunden


# UI
blob-chem-swap-ui-window-name = Swapchemikalien
blob-chem-reactivespines-info = Reaktive Dorne
                                Behandelt 8 brute, 8 slash, 8 pierce und 150 strukturelle Schäden.
blob-chem-blazingoil-info = Blazingöl
                            Verursacht 15 Verbrennungen und 150 strukturelle Schäden, zündet Ziele in Brand.
                            Macht dich anfällig für Wasser.
blob-chem-regenerativemateria-info = Regenerative Materia
                                    Behandelt 150 strukturelle Schäden und 15 Toxinschäden.
                                    Der Blob-Kern regeneriert die Gesundheit 10-mal schneller als normal und Ressourcen-Blobs erzeugen 1 zusätzliche Ressource.
blob-chem-explosivelattice-info = Explosives Gitter
                                    Verursacht 5 Verbrennungsschäden und 150 strukturelle Schäden, explodiert das Ziel und verursacht 10 Rohschäden.
                                    Sporen explodieren beim Tod.
                                    Sie werden immun gegen Explosionen.
                                    Sie nehmen 50% mehr Schaden durch Verbrennungen und elektrischen Schlag.
blob-chem-electromagneticweb-info = Elektromagnetisches Vlies
                                    Verursacht 20 Brandschäden und 150 strukturelle Schäden, 20% Chance, beim Angriff einen EMP-Puls zu verursachen.
                                    Blob-Kacheln verursachen einen EMP-Puls, wenn sie zerstört werden.
                                    Sie nehmen 25% mehr Brute und Hitzeschäden.
blob-chem-comatosefiber-info = Komatosefaser
                                Behandelt 22 Erstickungsschäden und 150 strukturelle Schäden.
blob-chem-chaincoating-info = Kettenbeschichtung
                                Verursacht 12 Schrägstrich- und stumpfe Schäden und 150 strukturelle Schäden.
                                Der Blob wird widerstandsfähiger gegen alle Arten von Schäden.
                                Die Ressourcenproduktion wird reduziert.
blob-chem-sinewytendons-info = Sinewy Tendons
                                Heilt 8 stumpf, Schrägstrich, Gifte, Punktionen, Erstickung, Kälte und Verbrennungen pro Treffer.
                                Die Pulsfrequenz steigt, die maximale Anzahl von Pods steigt von 3 auf 5.
                                Fabriken und Ressourcenblobs sind billiger.
blob-chem-corrosiveslime-info = Ätzender Schleim
                                Behandelt 320 strukturelle Schäden, 2 Zellschäden und 13 Säureschäden.
                                Blob Node Preis stieg von 50 auf 100.
blob-chem-cryogenicpoison-info = Kryogenes Gift
                                Behandelt 16 Kälteschäden, 4 Schrägstrichschäden und 100 strukturelle Schäden.


blob-alert-out-off-station = Der Blob wurde entfernt, weil er außerhalb der Station gefunden wurde!

# Announcment
blob-alert-recall-shuttle = Das Notfall-Shuttle kann nicht gesendet werden, während auf der Station ein Biorisiko der Stufe 5 vorhanden ist.
blob-alert-detect = Bestätigter Ausbruch der Biogefahr der Stufe 5 an Bord der Station. Alle Mitarbeiter müssen den Ausbruch eindämmen.
blob-alert-critical = Biohazard-Level kritische, nukleare Authentifizierungscodes wurden an die Station gesendet. Das CentComm befiehlt dem verbleibenden Personal, den Selbstzerstörungsmechanismus zu aktivieren.
blob-alert-critical-NoNukeCode = Kritische Biogefährdung. Das CentComm befiehlt dem verbleibenden Personal, Schutz zu suchen und auf Resque zu warten.
blob-alert-shuttle-arrived = Biogefährdung an Bord nachgewiesen. Das gesamte Personal muss sofort evakuiert werden.

# Actions
blob-teleport-to-node-action-name = Sprung zum Knoten (0)
blob-teleport-to-node-action-desc = Teleportiert sie zu einem zufälligen blob-knoten.
blob-help-action-name = Hilfe
blob-help-action-desc = Holen Sie sich grundlegende Informationen zum Spielen als Blob.

# Ghost role
blob-carrier-role-name = Kugelträger
blob-carrier-role-desc =  Eine Blob-infizierte Kreatur.
blob-carrier-role-rules = Du bist ein Antagonist. Sie haben 10 Minuten, bevor Sie sich in einen Blob verwandeln.
                        Nutzen Sie diese Zeit, um einen sicheren Ort auf der Station zu finden. Denken Sie daran, dass Sie direkt nach der Transformation sehr schwach sein werden.
blob-carrier-role-greeting = Du bist ein Träger von Blob. Finden Sie einen abgelegenen Ort am Bahnhof und verwandeln Sie sich in einen Blob. Verwandle die Station in eine Masse und ihre Bewohner in deine Diener. Wir sind alle Blobs.

# Verbs
blob-pod-verb-zombify = Zombify
blob-verb-upgrade-to-strong = Upgrade auf Strong Blob
blob-verb-upgrade-to-reflective = Upgrade auf Reflective Blob
blob-verb-remove-blob-tile = Entfernen Sie Blob

# Alerts
blob-resource-alert-name = Kernressourcen
blob-resource-alert-desc = Ihre Ressourcen, die von den Kern- und Ressourcenblobs produziert werden. Verwenden Sie sie, um spezielle Blobs zu erweitern und zu erstellen.
blob-health-alert-name = Kerngesundheit
blob-health-alert-desc = Die Gesundheit deines Kerns. Du wirst sterben, wenn es Null erreicht.

# Greeting
blob-role-greeting =
    Du bist Blob - eine parasitäre Weltraumkreatur, die ganze Stationen zerstören kann.
        Ihr Ziel ist es, zu überleben und so groß wie möglich zu wachsen.
        Sie sind fast unverwundbar gegenüber körperlichen Schäden, aber Hitze kann Sie immer noch verletzen.
        Verwenden Sie Alt + LMB, um normale Blob-Kacheln auf starken Blob und starken Blob auf reflektierenden Blob zu aktualisieren.
        Stellen Sie sicher, dass Ressourcenblobs platziert werden, um Ressourcen zu generieren.
        Beachten Sie, dass Ressourcen-Blobs und Fabriken nur neben Knoten-Blobs oder Kernen funktionieren.
        Sie können + oder +e im chat verwenden, um den blobmind zu verwenden, um mit ihren lakaien zu sprechen.
blob-zombie-greeting = Sie wurden infiziert und durch einen Blob Spore erhöht. Jetzt müssen Sie dem Blob helfen, die Station zu übernehmen. Verwenden sie +e im chat, um im blobmind zu sprechen.

# End round
blob-round-end-result =
    { $blobCount ->
        [one] Es gab eine Blob-Infektion.
        *[other] Es gab {$blobCount} Blobs.
    }

blob-user-was-a-blob = [color=gray]{$user}[/color] Es war ein Blob.
blob-user-was-a-blob-named = [color=White]{$name}[/color] ([color=gray]{$user}[/color]Es war ein Blob.
blob-was-a-blob-named = [color=White]{$name}[/color] Es war ein Blob.

preset-blob-objective-issuer-blob = [color=#33cc00]Bohnen[/color]

blob-user-was-a-blob-with-objectives = [color=gray]{$user}[/color] war ein Blob, der folgende Ziele hatte:
blob-user-was-a-blob-with-objectives-named = [color=White]{$name}[/color] ([color=gray]{$user}[/color]) war ein Blob, der folgende Ziele hatte:
blob-was-a-blob-with-objectives-named = [color=White]{$name}[/color] war ein Blob, der folgende Ziele hatte:

# Objectivies
objective-condition-blob-capture-title = Übernehmen Sie die Station
objective-condition-blob-capture-description = Ihr einziges Ziel ist es, die gesamte Station zu übernehmen. Sie müssen mindestens {$count} Blob Fliesen.
objective-condition-success = { $condition } | [color={ $markupColor }]Erfolg![/color]
objective-condition-fail = { $condition } | [color={ $markupColor }]Scheitern![/color] ({ $progress }%)

# Admin Verbs

admin-verb-make-blob = Machen Sie das Ziel zu einem Blob Carrier.
admin-verb-text-make-blob = Machen Sie Blob Carrier

# Language
language-Blob-name = Bohnen
chat-language-Blob-name = Bohnen
language-Blob-description = Bleeb Bob! Blob Blob!
