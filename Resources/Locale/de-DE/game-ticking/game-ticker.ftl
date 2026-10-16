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

game-ticker-restart-round = Startrunde...
game-ticker-start-round = Die Runde beginnt jetzt...
game-ticker-start-round-cannot-start-game-mode-fallback = Start fehlgeschlagen {$failedGameMode} Modus! Standardmäßig {$fallbackMode}...
game-ticker-start-round-cannot-start-game-mode-restart = Start fehlgeschlagen {$failedGameMode} Modus! Startrunde...
game-ticker-start-round-invalid-map = Ausgewählte Karte {$map} ist für den Spielmodus unauslöschbar {$mode}Der Spielmodus funktioniert möglicherweise nicht wie vorgesehen...
game-ticker-unknown-role = Unbekannt
game-ticker-delay-start = Runde Start verzögert sich für {$seconds} Sekunden.
game-ticker-pause-start = Der runde Start wurde angehalten.
game-ticker-pause-start-resumed = Der Round Start Countdown wird nun wieder aufgenommen.
game-ticker-player-join-game-message = Willkommen auf der Raumstation 14! Wenn Sie zum ersten Mal spielen, lesen Sie unbedingt die Spielregeln und haben Sie keine Angst, in LOOC (lokales OOC) oder OOC (normalerweise nur zwischen den Runden verfügbar) um Hilfe zu bitten.
game-ticker-get-info-text = Hallo und willkommen [color=white]Raumstation 14![/color]
                            Die aktuelle Runde lautet: [color=white]#{$roundId}[/color]
                            Die aktuelle Spielerzahl ist: [color=white]{$playerCount}[/color]
                            Die aktuelle Karte lautet: [color=white]{$mapName}[/color]
                            Der aktuelle Spielmodus ist: [color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-get-info-preround-text = Hallo und willkommen [color=white]Raumstation 14![/color]
                            Die aktuelle Runde lautet: [color=white]#{$roundId}[/color]
                            The current player count is: [color=white]{$playerCount}[/color] ([color=white]{$readyCount}[/color] {$readyCount ->
                                [one] ist
                                *[other] sind
                            } bereit
                            Die aktuelle Karte lautet: [color=white]{$mapName}[/color]
                            Der aktuelle Spielmodus ist: [color=white]{$gmTitle}[/color]
                            >[color=yellow]{$desc}[/color]
game-ticker-no-map-selected = [color=yellow]Karte noch nicht ausgewählt![/color]
game-ticker-player-no-jobs-available-when-joining = Beim Versuch, dem Spiel beizutreten, waren keine Jobs verfügbar.

# Displayed in chat to admins when a player joins
player-join-message = Spieler {$name} verbunden.
player-first-join-message = Spieler {$name} Zum ersten Mal beigetreten.

# Displayed in chat to admins when a player leaves
player-leave-message = Spieler {$name} links.

latejoin-arrival-announcement = {$character} ({$job}Am Bahnhof angekommen!
latejoin-arrival-announcement-special = {$job} {$character} an Deck!
latejoin-arrival-sender = Bahnhof
latejoin-arrivals-direction = Ein Shuttle, der Sie zu Ihrer Station bringt, wird in Kürze ankommen.
latejoin-arrivals-direction-time = Ein Shuttle, der Sie zu Ihrer Station bringt, wird ankommen {$time}.
latejoin-arrivals-dumped-from-shuttle = Eine mysteriöse Kraft verhindert, dass Sie mit dem Ankunfts-Shuttle gehen.
latejoin-arrivals-teleport-to-spawn = Eine mysteriöse Kraft teleportiert Sie vom Ankunfts-Shuttle. Eine sichere Verschiebung!

preset-not-enough-ready-players = Kann nicht anfangen {$presetName}. Erfordert {$minimumPlayers} Spieler, aber wir haben {$readyPlayersCount}.
preset-no-one-ready = Kann nicht anfangen {$presetName}Keine Spieler sind bereit.

game-run-level-PreRoundLobby = Pre-Round Lobby
game-run-level-InRound = im Runden
game-run-level-PostRound = Postrunde
