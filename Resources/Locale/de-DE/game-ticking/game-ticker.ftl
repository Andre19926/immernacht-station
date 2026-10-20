# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 moonheart08 <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 pointer-to-null <91910481+pointer-to-null@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Myctai <108953437+Myctai@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Radosvik <65792927+Radosvik@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 ShadowCommander <10494922+ShadowCommander@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 ZeroDayDaemon <60460608+ZeroDayDaemon@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 theashtronaut <112137107+theashtronaut@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Tom Leys <tom@crump-leys.com>
# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Mervill <mervills.email@gmail.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Rainfey <rainfey0+github@gmail.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

game-ticker-restart-round = Runde wird neu gestartet …
game-ticker-start-round = Die Runde beginnt jetzt …
game-ticker-start-round-cannot-start-game-mode-fallback = Der Spielmodus {$failedGameMode} konnte nicht gestartet werden! Es wird {$fallbackMode} verwendet …
game-ticker-start-round-cannot-start-game-mode-restart = Der Spielmodus {$failedGameMode} konnte nicht gestartet werden! Runde wird neu gestartet …
game-ticker-start-round-invalid-map = Die gewählte Karte {$map} ist für den Spielmodus {$mode} nicht geeignet. Der Spielmodus funktioniert womöglich nicht wie vorgesehen …
game-ticker-unknown-role = Unbekannt
game-ticker-delay-start = Der Rundenstart verzögert sich um {$seconds} Sekunden.
game-ticker-pause-start = Der Rundenstart wurde angehalten.
game-ticker-pause-start-resumed = Der Countdown zum Rundenstart läuft wieder.
game-ticker-player-join-game-message = Willkommen auf Space Station 14! Wenn du zum ersten Mal spielst, lies unbedingt die Regeln. Und keine Scheu: Im LOOC (lokales OOC) oder im OOC (meist nur zwischen den Runden verfügbar) kannst du jederzeit um Hilfe bitten.
game-ticker-get-info-text = Hallo und willkommen bei [color=white]Space Station 14![/color]
                            Aktuelle Runde: [color=white]#{$roundId}[/color]
                            Aktuelle Spielerzahl: [color=white]{$playerCount}[/color]
                            Aktuelle Karte: [color=white]{$mapName}[/color]
                            Aktueller Spielmodus: [color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-get-info-preround-text = Hallo und willkommen bei [color=white]Space Station 14![/color]
                            Aktuelle Runde: [color=white]#{$roundId}[/color]
                            Aktuelle Spielerzahl: [color=white]{$playerCount}[/color] ([color=white]{$readyCount}[/color] {$readyCount ->
                                [one] ist
                                *[other] sind
                            } bereit)
                            Aktuelle Karte: [color=white]{$mapName}[/color]
                            Aktueller Spielmodus: [color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-no-map-selected = [color=yellow]Es ist noch keine Karte ausgewählt![/color]
game-ticker-player-no-jobs-available-when-joining = Beim Beitreten war kein Job mehr frei.

# Displayed in chat to admins when a player joins
player-join-message = Spieler {$name} hat sich verbunden.
player-first-join-message = Spieler {$name} ist zum ersten Mal beigetreten.

# Displayed in chat to admins when a player leaves
player-leave-message = Spieler {$name} hat das Spiel verlassen.

latejoin-arrival-announcement = {$character} ({$job}) ist auf der Station angekommen!
latejoin-arrival-announcement-special = {$job} {$character} ist an Deck!
latejoin-arrival-sender = Station
latejoin-arrivals-direction = Ein Shuttle bringt dich in Kürze zu deiner Station.
latejoin-arrivals-direction-time = Ein Shuttle bringt dich zu deiner Station, Ankunft in {$time}.
latejoin-arrivals-dumped-from-shuttle = Eine mysteriöse Kraft hindert dich daran, mit dem Ankunfts-Shuttle zu fliegen.
latejoin-arrivals-teleport-to-spawn = Eine mysteriöse Kraft teleportiert dich vom Ankunfts-Shuttle. Sicher ist sicher!

preset-not-enough-ready-players = {$presetName} kann nicht gestartet werden. Es braucht {$minimumPlayers} Spieler, es sind aber nur {$readyPlayersCount} bereit.
preset-no-one-ready = {$presetName} kann nicht gestartet werden. Kein Spieler ist bereit.

game-run-level-PreRoundLobby = Lobby vor der Runde
game-run-level-InRound = In der Runde
game-run-level-PostRound = Nach der Runde
