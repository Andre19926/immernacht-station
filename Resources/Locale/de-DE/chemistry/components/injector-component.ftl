# SPDX-FileCopyrightText: 2021 20kdc <asdd2808@gmail.com>
# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Plykiya <58439124+Plykiya@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Plykiya <plykiya@protonmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## UI

injector-volume-transfer-label = Volumen: [color=white]{$currentVolume}/{$totalVolume}u[/color]
    Modus: [color=white]{$modeString}[/color] ([color=white]{$transferVolume}u[/color])
injector-volume-label = Volumen: [color=white]{$currentVolume}/{$totalVolume}u[/color]
    Modus: [color=white]{$modeString}[/color]
injector-toggle-verb-text = Injektormodus umschalten

## Entity

injector-component-inject-mode-name = Injizieren
injector-component-draw-mode-name = Aufziehen
injector-component-dynamic-mode-name = Dynamisch
injector-component-mode-changed-text = Jetzt: {$mode}
injector-component-transfer-success-message = Du überträgst {$amount}u in {THE($target)}.
injector-component-transfer-success-message-self = Du überträgst {$amount}u in dich selbst.
injector-component-inject-success-message = Du injizierst {$amount}u in {THE($target)}!
injector-component-inject-success-message-self = Du injizierst {$amount}u in dich selbst!
injector-component-draw-success-message = Du ziehst {$amount}u aus {THE($target)} auf.
injector-component-draw-success-message-self = Du ziehst {$amount}u aus dir selbst auf.

## Fail Messages

injector-component-target-already-full-message = {CAPITALIZE(THE($target))} ist schon voll!
injector-component-target-already-full-message-self = Du bist schon voll!
injector-component-target-is-empty-message = {CAPITALIZE(THE($target))} ist leer!
injector-component-target-is-empty-message-self = Du bist leer!
injector-component-cannot-toggle-draw-message = Zu voll zum Aufziehen!
injector-component-cannot-toggle-inject-message = Nichts zu injizieren!
injector-component-cannot-toggle-dynamic-message = Dynamik lässt sich nicht umschalten!
injector-component-empty-message = {CAPITALIZE(THE($injector))} ist leer!
injector-component-blocked-user = Schutzausrüstung blockiert deine Injektion!
injector-component-blocked-other = {CAPITALIZE(POSS-ADJ($target))} Panzerung blockiert die Injektion von {THE($user)}!
injector-component-cannot-transfer-message = Du kannst nichts in {THE($target)} übertragen!
injector-component-cannot-transfer-message-self = Du kannst nichts in dich selbst übertragen!
injector-component-cannot-inject-message = Du kannst nichts in {THE($target)} injizieren!
injector-component-cannot-inject-message-self = Du kannst dir nichts injizieren!
injector-component-cannot-draw-message = Du kannst nichts aus {THE($target)} aufziehen!
injector-component-cannot-draw-message-self = Du kannst nichts aus dir selbst aufziehen!
injector-component-ignore-mobs = Dieser Injektor kann nur mit Containern interagieren!

## mob-inject doafter messages

injector-component-needle-injecting-user = Du setzt die Nadel zum Injizieren an.
injector-component-needle-injecting-target = {CAPITALIZE(THE($user))} versucht, dir eine Nadel zu setzen!
injector-component-needle-drawing-user = Du setzt die Nadel zum Aufziehen an.
injector-component-needle-drawing-target = {CAPITALIZE(THE($user))} versucht, dir mit einer Nadel etwas zu entnehmen!
injector-component-spray-injecting-user = Du bereitest die Sprühdüse vor.
injector-component-spray-injecting-target = {CAPITALIZE(THE($user))} versucht, dir eine Sprühdüse anzusetzen!

## Target Popup Success messages
injector-component-feel-prick-message = Du spürst einen kleinen Stich!

# Goob
injector-component-deny-user = Exoskelett zu dick!
