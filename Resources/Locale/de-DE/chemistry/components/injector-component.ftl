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
injector-toggle-verb-text = Injektormodus

## Entity

injector-component-inject-mode-name = Injizieren
injector-component-draw-mode-name = Zug
injector-component-dynamic-mode-name = dynamisch
injector-component-mode-changed-text = Jetzt {$mode}
injector-component-transfer-success-message = Sie übertragen {$amount}u in {THE($target)}.
injector-component-transfer-success-message-self = Sie übertragen {$amount}U in sich selbst.
injector-component-inject-success-message = Sie injizieren {$amount}u in {THE($target)}!
injector-component-inject-success-message-self = Sie injizieren {$amount}U in dich selbst!
injector-component-draw-success-message = Sie zeichnen {$amount}u aus {THE($target)}.
injector-component-draw-success-message-self = Sie zeichnen {$amount}u von dir selbst.

## Fail Messages

injector-component-target-already-full-message = {CAPITALIZE(THE($target))} ist schon voll!
injector-component-target-already-full-message-self = Du bist schon voll!
injector-component-target-is-empty-message = {CAPITALIZE(THE($target))} ist leer!
injector-component-target-is-empty-message-self = Du bist leer!
injector-component-cannot-toggle-draw-message = Zu voll zum Zeichnen!
injector-component-cannot-toggle-inject-message = Nichts zu injizieren!
injector-component-cannot-toggle-dynamic-message = Kann nicht dynamisch umschalten!
injector-component-empty-message = {CAPITALIZE(THE($injector))} ist leer!
injector-component-blocked-user = Schutzausrüstung blockiert Ihre Injektion!
injector-component-blocked-other = {CAPITALIZE(THE(POSS-ADJ($target)))} Panzerung blockiert {THE($user)}'s Injektion!
injector-component-cannot-transfer-message = Sie können nicht übertragen in {THE($target)}!
injector-component-cannot-transfer-message-self = Du kannst nicht in dich selbst übergehen!
injector-component-cannot-inject-message = Sie können nicht injizieren in {THE($target)}!
injector-component-cannot-inject-message-self = Du kannst nicht in dich hineinspritzen!
injector-component-cannot-draw-message = Du kannst nicht aus {THE($target)}!
injector-component-cannot-draw-message-self = Du kannst nicht aus dir selbst schöpfen!
injector-component-ignore-mobs = Dieser Injektor kann nur mit Containern interagieren!

## mob-inject doafter messages

injector-component-needle-injecting-user = Sie fangen an, die Nadel zu injizieren.
injector-component-needle-injecting-target = {CAPITALIZE(THE($user))} versucht, dir eine Nadel injizieren!
injector-component-needle-drawing-user = Sie fangen an, die Nadel zu zeichnen.
injector-component-needle-drawing-target = {CAPITALIZE(THE($user))} versucht, eine Nadel zu benutzen, um von Ihnen zu zeichnen!
injector-component-spray-injecting-user = Sie fangen an, die Sprühdüse vorzubereiten.
injector-component-spray-injecting-target = {CAPITALIZE(THE($user))} versucht, eine Sprühdüse auf Sie zu legen!

## Target Popup Success messages
injector-component-feel-prick-message = Du spürst einen kleinen Stich!

# Goob
injector-component-deny-user = Exoskelett zu dick!
