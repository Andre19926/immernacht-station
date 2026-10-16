# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 moonheart08 <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 20kdc <asdd2808@gmail.com>
# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Morber <14136326+Morb0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 wrexbe <81056464+wrexbe@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Moony <moony@hellomouse.net>
# SPDX-FileCopyrightText: 2023 crazybrain23 <44417085+crazybrain23@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Brandon Hu <103440971+Brandon-Huu@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Simon <63975668+Simyon264@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### for technical and/or system messages

## General

shell-command-success = Führung erfolgreich
shell-invalid-command = Ungültiges Führung.
shell-invalid-command-specific = Invalid {$commandName} Führung.
shell-can-only-run-from-pre-round-lobby = Sie können diesen Befehl nur ausführen, während sich das Spiel in der Vorrundenlobby befindet.
shell-can-only-run-while-round-is-active = Sie können diesen Befehl nur ausführen, während sich das Spiel in einer Runde befindet.
shell-cannot-run-command-from-server = Sie können diesen Befehl nicht vom Server aus ausführen.
shell-only-players-can-run-this-command = Nur Spieler können diesen Befehl ausführen.
shell-must-be-attached-to-entity = Sie müssen an eine Entität gebunden sein, um diesen Befehl auszuführen.
shell-must-have-body = Sie müssen einen Körper haben, um diesen Befehl auszuführen.

## Arguments

shell-need-exactly-one-argument = Es braucht genau ein Argument.
shell-wrong-arguments-number-need-specific = Bedarf {$properAmount} Argumente, gab es {$currentAmount}.
shell-argument-must-be-number = Argument muss eine Zahl sein.
shell-argument-must-be-boolean = Argument muss ein Boolean sein.
shell-wrong-arguments-number = Falsche Anzahl von Argumenten.
shell-need-between-arguments = Bedarf {$lower} bis {$upper} Argumente!
shell-need-minimum-arguments = Muss mindestens {$minimum} Argumente!
shell-need-minimum-one-argument = Benötigen Sie mindestens ein Argument!
shell-need-exactly-zero-arguments = Dieser Befehl nimmt null Argumente.

shell-argument-uid = EntityUid

## Guards

shell-missing-required-permission = Sie brauchen {$perm} Für diesen Befehl!
shell-entity-is-not-mob = Ziel-Entität ist kein Mob!
shell-invalid-entity-id = Kennung der ungültigen Stelle.
shell-invalid-grid-id = Ungültige Gitterkennung.
shell-invalid-map-id = Kennung der ungültigen Karte.
shell-invalid-entity-uid = {$uid} ist nicht erwerbsfähig
shell-invalid-bool = Invalid boolean.
shell-entity-uid-must-be-number = EntityUid muss eine Nummer sein.
shell-could-not-find-entity = Konnte keine Entität finden {$entity}
shell-could-not-find-entity-with-uid = Konnte keine Entität mit uid finden {$uid}
shell-entity-with-uid-lacks-component = Entität mit uid {$uid} hat nicht {INDEFINITE($componentName)} {$componentName} Komponente
shell-entity-target-lacks-component = Ziel-Entität hat nicht {INDEFINITE($componentName)} {$componentName} Komponente
shell-invalid-color-hex = Ungültige Farbe hex!
shell-target-player-does-not-exist = Zielspieler gibt es nicht!
shell-target-entity-does-not-have-message = Zielunternehmen hat nicht {INDEFINITE($missing)} {$missing}!
shell-timespan-minutes-must-be-correct = {$span} ist keine gültige Minutenspanne.
shell-argument-must-be-prototype = Argumentation {$index} muss ein {LOC($prototypeName)}!
shell-argument-number-must-be-between = Argumentation {$index} muss eine Zahl zwischen {$lower} und {$upper}!
shell-argument-station-id-invalid = Argumentation {$index} Es muss eine gültige Stations-ID sein!
shell-argument-map-id-invalid = Argumentation {$index} Muss eine gültige Map ID sein!
shell-argument-number-invalid = Argumentation {$index} Es muss eine gültige Nummer sein!

# Hints
shell-argument-username-hint = <Benutzername>
shell-argument-username-optional-hint = [username]
