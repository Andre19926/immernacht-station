# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 PixelTK <85175107+PixelTheKermit@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Errant <35878406+errant@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 MendaxxDev <153332064+MendaxxDev@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 TaralGit <76408146+TaralGit@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vordenburg <114301317+Vordenburg@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 and_a <and_a@DESKTOP-RJENGIR>
# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Errant <35878406+Errant-4@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later


gun-selected-mode-examine = Der aktuell ausgewählte Feuermodus ist [color={$color}]{$mode}[/color].
gun-fire-rate-examine = Feuerrate ist [color={$color}]{$fireRate}[/color] pro Sekunde.
gun-selector-verb = Änderung {$mode}
gun-selected-mode = Ausgewählt {$mode}
gun-disabled = Sie können keine Waffen benutzen!
gun-set-fire-mode-examine = Aufgesetzt auf [color=yellow]{$mode}[/color].
gun-set-fire-mode-popup = Geändert in {$mode}
gun-magazine-whitelist-fail = Das passt nicht in die Waffe!
gun-magazine-fired-empty = Keine Munition mehr!

# SelectiveFire
gun-SemiAuto = semi-auto
gun-Burst = Bruch
gun-FullAuto = Vollautomat

# BallisticAmmoProvider
gun-ballistic-cycle = Zyklus
gun-ballistic-cycled = zyklisch
gun-ballistic-cycled-empty = zyklisch (leer)
gun-ballistic-transfer-invalid = {CAPITALIZE(THE($ammoEntity))} wird nicht hineinpassen {THE($targetEntity)}!
gun-ballistic-transfer-empty = {CAPITALIZE(THE($entity))} ist leer.
gun-ballistic-transfer-target-full = {CAPITALIZE(THE($entity))} ist bereits vollständig geladen.

# CartridgeAmmo
gun-cartridge-spent = Es ist [color=red]ausgegeben[/color].
gun-cartridge-unspent = Es ist [color=lime]nicht ausgegeben[/color].

# BatteryAmmoProvider
gun-battery-examine = Es hat genug Ladung für [color={$color}]{$count}[/color] Schüsse.

# CartridgeAmmoProvider
gun-chamber-bolt-ammo = nicht mit einer Pistole
gun-chamber-bolt = Der Bolzen ist [color={$color}]{$bolt}[/color].
gun-chamber-bolt-closed = Verschlussbolzen
gun-chamber-bolt-opened = Geöffneter Bolzen
gun-chamber-bolt-close = Schließbolzen
gun-chamber-bolt-open = Offener Bolzen
gun-chamber-bolt-closed-state = offen
gun-chamber-bolt-open-state = geschlossen
gun-chamber-rack = Rack

# MagazineAmmoProvider
gun-magazine-examine = Es hat [color={$color}]{$count}[/color] verbleibende Schüsse.

# RevolverAmmoProvider
gun-revolver-empty = Leerer Revolver
gun-revolver-full = Revolver voll
gun-revolver-insert = eingesetzt
gun-revolver-spin = Spin Revolver
gun-revolver-spun = Spinnerei
gun-speedloader-empty = Lastwagen leer

# GunSpreadModifier
examine-gun-spread-modifier-reduction = Die Ausbreitung wurde reduziert durch [color=yellow]{$percentage}%[/color].
examine-gun-spread-modifier-increase = Die Ausbreitung wurde erhöht durch [color=yellow]{$percentage}%[/color].
