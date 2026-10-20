# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Paul Ritter <ritter.paul1@googlemail.com>
# SPDX-FileCopyrightText: 2021 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2021 Vera Aguilera Puerto <6766154+Zumorica@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Mervill <mervills.email@gmail.com>
# SPDX-FileCopyrightText: 2023 alexkar598 <25136265+alexkar598@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Repo <47093363+Titian3@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 SlamBamActionman <83650252+SlamBamActionman@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Displayed as initiator of vote when no user creates the vote
ui-vote-initiator-server = Der Server

## Default.Votes

ui-vote-restart-title = Runde neu starten
ui-vote-restart-succeeded = Abstimmung zum Neustart angenommen.
ui-vote-restart-failed = Abstimmung zum Neustart abgelehnt (benötigt { TOSTRING($ratio, "P0") }).
ui-vote-restart-fail-not-enough-ghost-players = Abstimmung zum Neustart gescheitert: Für eine Neustart-Abstimmung sind mindestens { $ghostPlayerRequirement } % Geister-Spieler nötig. Aktuell gibt es nicht genug Geister-Spieler.
ui-vote-restart-yes = Ja
ui-vote-restart-no = No
ui-vote-restart-abstain = Enthaltung

ui-vote-gamemode-title = Nächster Spielmodus
ui-vote-gamemode-tie = Gleichstand bei der Spielmodus-Abstimmung! Es wird gewählt ... { $picked }
ui-vote-gamemode-win = { $winner } hat die Spielmodus-Abstimmung gewonnen!

ui-vote-map-title = Nächste Karte
ui-vote-map-tie = Gleichstand bei der Kartenabstimmung! Es wird gewählt ... { $picked }
ui-vote-map-win = { $winner } hat die Kartenabstimmung gewonnen!
ui-vote-map-notlobby = Die Kartenabstimmung ist nur in der Lobby vor der Runde möglich!
ui-vote-map-notlobby-time = Die Kartenabstimmung ist nur in der Lobby vor der Runde möglich, mit { $time } verbleibend!


# Votekick votes
ui-vote-votekick-unknown-initiator = Ein Spieler
ui-vote-votekick-unknown-target = Unbekannter Spieler
ui-vote-votekick-title = { $initiator } hat eine Votekick-Abstimmung gegen { $targetEntity } gestartet. Grund: { $reason }
ui-vote-votekick-yes = Ja
ui-vote-votekick-no = No
ui-vote-votekick-abstain = Enthaltung
ui-vote-votekick-success = Votekick gegen { $target } erfolgreich. Grund: { $reason }
ui-vote-votekick-failure = Votekick gegen { $target } fehlgeschlagen. Grund: { $reason }
ui-vote-votekick-not-enough-eligible = Nicht genug stimmberechtigte Spieler online, um einen Votekick zu starten: { $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = Der Votekick gegen { $target } wurde vom Server abgebrochen.
