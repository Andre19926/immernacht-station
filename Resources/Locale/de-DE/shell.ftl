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

shell-command-success = Befehl erfolgreich
shell-invalid-command = Ungültiger Befehl.
shell-invalid-command-specific = Ungültiger Befehl „{$commandName}“.
shell-can-only-run-from-pre-round-lobby = Du kannst diesen Befehl nur ausführen, solange sich das Spiel in der Vorrundenlobby befindet.
shell-can-only-run-while-round-is-active = Du kannst diesen Befehl nur ausführen, solange eine Runde läuft.
shell-cannot-run-command-from-server = Du kannst diesen Befehl nicht vom Server aus ausführen.
shell-only-players-can-run-this-command = Nur Spieler können diesen Befehl ausführen.
shell-must-be-attached-to-entity = Du musst an eine Entität gebunden sein, um diesen Befehl auszuführen.
shell-must-have-body = Du musst einen Körper haben, um diesen Befehl auszuführen.

## Arguments

shell-need-exactly-one-argument = Es braucht genau ein Argument.
shell-wrong-arguments-number-need-specific = Es werden {$properAmount} Argumente benötigt, angegeben wurden {$currentAmount}.
shell-argument-must-be-number = Argument muss eine Zahl sein.
shell-argument-must-be-boolean = Argument muss ein Boolean sein.
shell-wrong-arguments-number = Falsche Anzahl von Argumenten.
shell-need-between-arguments = Es werden {$lower} bis {$upper} Argumente benötigt!
shell-need-minimum-arguments = Es werden mindestens {$minimum} Argumente benötigt!
shell-need-minimum-one-argument = Es wird mindestens ein Argument benötigt!
shell-need-exactly-zero-arguments = Dieser Befehl akzeptiert keine Argumente.

shell-argument-uid = EntityUid

## Guards

shell-missing-required-permission = Du brauchst {$perm} für diesen Befehl!
shell-entity-is-not-mob = Die Ziel-Entität ist kein Mob!
shell-invalid-entity-id = Ungültige Entitäts-ID.
shell-invalid-grid-id = Ungültige Struktur-ID.
shell-invalid-map-id = Ungültige Karten-ID.
shell-invalid-entity-uid = {$uid} ist keine gültige Entitäts-UID
shell-invalid-bool = Ungültiger Boolean-Wert.
shell-entity-uid-must-be-number = Die EntityUid muss eine Zahl sein.
shell-could-not-find-entity = Entität {$entity} nicht gefunden
shell-could-not-find-entity-with-uid = Entität mit UID {$uid} nicht gefunden
shell-entity-with-uid-lacks-component = Entität mit UID {$uid} hat keine {$componentName}-Komponente.
shell-entity-target-lacks-component = Ziel-Entität hat keine {$componentName}-Komponente.
shell-invalid-color-hex = Ungültige Farbe hex!
shell-target-player-does-not-exist = Zielspieler gibt es nicht!
shell-target-entity-does-not-have-message = Ziel-Entität hat kein „{$missing}“!
shell-timespan-minutes-must-be-correct = {$span} ist keine gültige Minutenspanne.
shell-argument-must-be-prototype = Argumentation {$index} muss ein {LOC($prototypeName)}!
shell-argument-number-must-be-between = Argumentation {$index} muss eine Zahl zwischen {$lower} und {$upper}!
shell-argument-station-id-invalid = Argumentation {$index} Es muss eine gültige Stations-ID sein!
shell-argument-map-id-invalid = Argumentation {$index} Muss eine gültige Map ID sein!
shell-argument-number-invalid = Argumentation {$index} Es muss eine gültige Nummer sein!

# Hints
shell-argument-username-hint = <Benutzername>
shell-argument-username-optional-hint = [username]
