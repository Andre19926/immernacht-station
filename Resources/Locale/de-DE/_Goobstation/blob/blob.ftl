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

ent-SpawnPointGhostBlob = Blob-Spawn
    .suffix = DEBUG, Ghost Role Spawner
    .desc = { ent-MarkerBase.desc }
ent-MobBlobPod = Blob-Pod
    .desc = Ein gewöhnlicher Blob-Kämpfer.
ent-MobBlobBlobbernaut = Blobbernaut
    .desc = Ein Elite-Blob-Kämpfer.
ent-BaseBlob = Einfacher Blob
    .desc = { "" }
ent-NormalBlobTile = Normale Blob-Kachel
    .desc = Ein gewöhnlicher Teil des Blobs, der für den Bau fortgeschrittener Kacheln erforderlich ist.
ent-CoreBlobTile = Blob-Kern
    .desc = Das wichtigste Organ des Blobs. Wird der Kern zerstört, endet die Infektion.
ent-FactoryBlobTile = Blob-Fabrik
    .desc = Erzeugt mit der Zeit Blob-Pods und Blobbernauts.
ent-ResourceBlobTile = Ressourcen-Blob
    .desc = Produziert Ressourcen für den Blob.
ent-NodeBlobTile = Blob-Knoten
    .desc = Eine Mini-Version des Kerns, mit der du spezielle Blob-Kacheln um dich herum platzieren kannst.
ent-StrongBlobTile = Starke Blob-Kachel
    .desc = Eine verstärkte Version der normalen Kachel. Sie lässt keine Luft durch und schützt vor physischem Schaden.
ent-ReflectiveBlobTile = Reflektierende Blob-Kachel
    .desc = Sie reflektiert Laser, schützt aber nicht so gut vor physischem Schaden.
    .desc = Sie reflektiert Laser, schützt aber nicht so gut vor physischem Schaden.
objective-issuer-blob = Blob


ghost-role-information-blobbernaut-name = Blobbernaut
ghost-role-information-blobbernaut-description = Du bist ein Blobbernaut. Du musst den Blob-Kern verteidigen. Benutze + oder +e im Chat, um im Blobmind zu sprechen.

ghost-role-information-blob-name = Blob
ghost-role-information-blob-description = Du bist die Blob-Infektion. Verschlinge die Station.

roles-antag-blob-name = Blob
roles-antag-blob-objective = Erreiche die kritische Masse.

guide-entry-blob = Blob

# Popups
blob-target-normal-blob-invalid = Falscher Blob-Typ, wähle einen normalen Blob.
blob-target-factory-blob-invalid = Falscher Blob-Typ, wähle eine Blob-Fabrik.
blob-target-node-blob-invalid = Falscher Blob-Typ, wähle einen Blob-Knoten.
blob-target-close-to-resource = Zu nah an einem anderen Ressourcen-Blob.
blob-target-nearby-not-node = Kein Knoten oder Kern in der Nähe.
blob-target-close-to-node = Zu nah an einem anderen Knoten.
blob-target-already-produce-blobbernaut = Diese Fabrik hat bereits einen Blobbernaut produziert.
blob-cant-split = Du kannst den Blob-Kern nicht teilen.
blob-not-have-nodes = Du hast keine Knoten.
blob-not-enough-resources = Nicht genügend Ressourcen.
blob-help = Nur Gott kann dir jetzt helfen.
blob-swap-chem = In Entwicklung.
blob-mob-attack-blob = Du kannst keinen Blob angreifen.
blob-get-resource = +{ $point }
blob-spent-resource = -{ $point }
blobberaut-not-on-blob-tile = Du stirbst, solange du nicht auf einer Blob-Kachel stehst.
carrier-blob-alert = Du hast { $second } Sekunden bis zur Verwandlung.

blob-mob-zombify-second-start = { $pod } beginnt, dich in einen Zombie zu verwandeln.
blob-mob-zombify-third-start = { $pod } beginnt, { $target } in einen Zombie zu verwandeln.

blob-mob-zombify-second-end = { $pod } macht dich zu einem Zombie.
blob-mob-zombify-third-end = { $pod } verwandelt { $target } in einen Zombie.

blobberaut-factory-destroy = Fabrik zerstört
blob-target-already-connected = Bereits verbunden


# UI
blob-chem-swap-ui-window-name = Chemikalie wechseln
blob-chem-reactivespines-info = Reaktive Dornen
                                Verursacht je 8 Stumpf-, Schnitt- und Stichschaden sowie 150 Strukturschaden.
blob-chem-blazingoil-info = Flammendes Öl
                            Verursacht 15 Verbrennungsschaden und 150 Strukturschaden, setzt Ziele in Brand.
                            Macht dich anfällig für Wasser.
blob-chem-regenerativemateria-info = Regenerative Materie
                                    Heilt 150 Strukturschaden und 15 Giftschaden.
                                    Der Blob-Kern regeneriert Gesundheit 10-mal schneller als normal und Ressourcen-Blobs erzeugen 1 zusätzliche Ressource.
blob-chem-explosivelattice-info = Explosives Gitter
                                    Verursacht 5 Verbrennungsschaden und 150 Strukturschaden, lässt das Ziel explodieren und verursacht 10 Rohschaden.
                                    Sporen explodieren beim Tod.
                                    Du wirst immun gegen Explosionen.
                                    Du erleidest 50% mehr Schaden durch Verbrennungen und Stromschlag.
blob-chem-electromagneticweb-info = Elektromagnetisches Netz
                                    Verursacht 20 Verbrennungsschaden und 150 Strukturschaden, 20 % Chance, beim Angriff einen EMP-Impuls auszulösen.
                                    Blob-Kacheln lösen beim Zerstören einen EMP-Impuls aus.
                                    Du erleidest 25 % mehr Stumpf- und Hitzeschaden.
blob-chem-comatosefiber-info = Komatöse Faser
                                Heilt 22 Erstickungsschaden und 150 Strukturschaden.
blob-chem-chaincoating-info = Kettenbeschichtung
                                Verursacht 12 Schnitt- und Stumpfschaden und 150 Strukturschaden.
                                Der Blob wird widerstandsfähiger gegen alle Schadensarten.
                                Die Ressourcenproduktion wird verringert.
blob-chem-sinewytendons-info = Sehnige Sehnen
                                Heilt pro Treffer je 8 Stumpf-, Schnitt-, Gift-, Stich-, Erstickungs-, Kälte- und Verbrennungsschaden.
                                Die Pulsfrequenz steigt, die maximale Anzahl von Pods steigt von 3 auf 5.
                                Fabriken und Ressourcen-Blobs sind billiger.
blob-chem-corrosiveslime-info = Ätzender Schleim
                                Heilt 320 Strukturschaden, 2 Zellschaden und 13 Säureschaden.
                                Der Preis für Blob-Knoten steigt von 50 auf 100.
blob-chem-cryogenicpoison-info = Kryogenes Gift
                                Heilt 16 Kälteschaden, 4 Hiebschaden und 100 Strukturschaden.


blob-alert-out-off-station = Der Blob wurde entfernt, weil er sich außerhalb der Station befand!

# Announcment
blob-alert-recall-shuttle = Das Notfall-Shuttle kann nicht gerufen werden, solange auf der Station Biogefährdung der Stufe 5 herrscht.
blob-alert-detect = Bestätigter Ausbruch einer Biogefährdung der Stufe 5 an Bord der Station. Alle Mitarbeiter müssen den Ausbruch eindämmen.
blob-alert-critical = Kritische Biogefährdung, nukleare Authentifizierungscodes wurden an die Station gesendet. CentComm befiehlt dem verbleibenden Personal, den Selbstzerstörungsmechanismus zu aktivieren.
blob-alert-critical-NoNukeCode = Kritische Biogefährdung. CentComm befiehlt dem verbleibenden Personal, Schutz zu suchen und auf Rettung zu warten.
blob-alert-shuttle-arrived = Biogefährdung an Bord festgestellt. Das gesamte Personal muss sofort evakuiert werden.

# Actions
blob-teleport-to-node-action-name = Zum Knoten springen (0)
blob-teleport-to-node-action-desc = Teleportiert dich zu einem zufälligen Blob-Knoten.
blob-help-action-name = Hilfe
blob-help-action-desc = Erhalte grundlegende Informationen zum Spielen als Blob.

# Ghost role
blob-carrier-role-name = Blob-Träger
blob-carrier-role-desc = Eine von Blob infizierte Kreatur.
blob-carrier-role-rules = Du bist ein Antagonist. Du hast 10 Minuten, bevor du dich in einen Blob verwandelst.
                        Nutze diese Zeit, um einen sicheren Ort auf der Station zu finden. Denke daran, dass du direkt nach der Verwandlung sehr schwach sein wirst.
blob-carrier-role-greeting = Du bist ein Träger des Blobs. Finde einen abgelegenen Ort auf der Station und verwandle dich in einen Blob. Verwandle die Station in eine Masse und ihre Bewohner in deine Diener. Wir sind alle Blobs.

# Verbs
blob-pod-verb-zombify = Zombifizieren
blob-verb-upgrade-to-strong = Zu starkem Blob aufwerten
blob-verb-upgrade-to-reflective = Zu reflektierendem Blob aufwerten
blob-verb-remove-blob-tile = Blob entfernen

# Alerts
blob-resource-alert-name = Kernressourcen
blob-resource-alert-desc = Deine Ressourcen, produziert von Kern und Ressourcen-Blobs. Nutze sie, um den Blob zu erweitern und spezielle Blobs zu erschaffen.
blob-health-alert-name = Kerngesundheit
blob-health-alert-desc = Die Gesundheit deines Kerns. Du stirbst, wenn sie null erreicht.

# Greeting
blob-role-greeting =
    Du bist der Blob - eine parasitäre Weltraumkreatur, die ganze Stationen zerstören kann.
        Dein Ziel ist es, zu überleben und so groß wie möglich zu werden.
        Du bist gegen körperlichen Schaden fast unverwundbar, aber Hitze kann dich immer noch verletzen.
        Benutze Alt + LMB, um normale Blob-Kacheln zu starken Blobs und starke Blobs zu reflektierenden Blobs aufzuwerten.
        Stelle sicher, dass Ressourcen-Blobs platziert werden, um Ressourcen zu erzeugen.
        Beachte, dass Ressourcen-Blobs und Fabriken nur neben Knoten-Blobs oder Kernen funktionieren.
        Du kannst + oder +e im Chat benutzen, um über den Blobmind mit deinen Dienern zu sprechen.
blob-zombie-greeting = Du wurdest infiziert und von einer Blob-Spore erweckt. Jetzt musst du dem Blob helfen, die Station zu übernehmen. Benutze +e im Chat, um im Blobmind zu sprechen.

# End round
blob-round-end-result =
    { $blobCount ->
        [one] Es gab eine Blob-Infektion.
        *[other] Es gab {$blobCount} Blobs.
    }

blob-user-was-a-blob = [color=gray]{$user}[/color] war ein Blob.
blob-user-was-a-blob-named = [color=White]{$name}[/color] ([color=gray]{$user}[/color]) war ein Blob.
blob-was-a-blob-named = [color=White]{$name}[/color] war ein Blob.

preset-blob-objective-issuer-blob = [color=#33cc00]Blob[/color]

blob-user-was-a-blob-with-objectives = [color=gray]{$user}[/color] war ein Blob, der folgende Ziele hatte:
blob-user-was-a-blob-with-objectives-named = [color=White]{$name}[/color] ([color=gray]{$user}[/color]) war ein Blob, der folgende Ziele hatte:
blob-was-a-blob-with-objectives-named = [color=White]{$name}[/color] war ein Blob, der folgende Ziele hatte:

# Objectivies
objective-condition-blob-capture-title = Übernimm die Station
objective-condition-blob-capture-description = Dein einziges Ziel ist es, die gesamte Station zu übernehmen. Du brauchst mindestens {$count} Blob-Kacheln.
objective-condition-success = { $condition } | [color={ $markupColor }]Erfolg![/color]
objective-condition-fail = { $condition } | [color={ $markupColor }]Fehlgeschlagen![/color] ({ $progress }%)

# Admin Verbs

admin-verb-make-blob = Macht das Ziel zu einem Blob-Träger.
admin-verb-text-make-blob = Zum Blob-Träger machen

# Language
language-Blob-name = Blob
chat-language-Blob-name = Blob
language-Blob-description = Bleeb Bob! Blob Blob!
