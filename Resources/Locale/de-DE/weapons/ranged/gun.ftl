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
gun-fire-rate-examine = Die Feuerrate beträgt [color={$color}]{$fireRate}[/color] pro Sekunde.
gun-selector-verb = Wechseln zu {$mode}
gun-selected-mode = {$mode} gewählt
gun-disabled = Du kannst keine Schusswaffen benutzen!
gun-set-fire-mode-examine = Eingestellt auf [color=yellow]{$mode}[/color].
gun-set-fire-mode-popup = Gewechselt zu {$mode}
gun-magazine-whitelist-fail = Das passt nicht in die Waffe!
gun-magazine-fired-empty = Keine Munition mehr!

# SelectiveFire
gun-SemiAuto = Halbautomatik
gun-Burst = Salve
gun-FullAuto = Vollautomatik

# BallisticAmmoProvider
gun-ballistic-cycle = Durchladen
gun-ballistic-cycled = Durchgeladen
gun-ballistic-cycled-empty = Durchgeladen (leer)
gun-ballistic-transfer-invalid = {CAPITALIZE(THE($ammoEntity))} passt nicht in {THE($targetEntity)}!
gun-ballistic-transfer-empty = {CAPITALIZE(THE($entity))} ist leer.
gun-ballistic-transfer-target-full = {CAPITALIZE(THE($entity))} ist bereits vollständig geladen.

# CartridgeAmmo
gun-cartridge-spent = Sie ist [color=red]verbraucht[/color].
gun-cartridge-unspent = Sie ist [color=lime]nicht verbraucht[/color].

# BatteryAmmoProvider
gun-battery-examine = Sie hat genug Ladung für [color={$color}]{$count}[/color] Schüsse.

# CartridgeAmmoProvider
gun-chamber-bolt-ammo = Waffe nicht verriegelt
gun-chamber-bolt = Der Bolzen ist [color={$color}]{$bolt}[/color].
gun-chamber-bolt-closed = Verschluss geschlossen
gun-chamber-bolt-opened = Verschluss geöffnet
gun-chamber-bolt-close = Verschluss schließen
gun-chamber-bolt-open = Verschluss öffnen
gun-chamber-bolt-closed-state = offen
gun-chamber-bolt-open-state = geschlossen
gun-chamber-rack = Repetieren

# MagazineAmmoProvider
gun-magazine-examine = Es hat noch [color={$color}]{$count}[/color] Schüsse.

# RevolverAmmoProvider
gun-revolver-empty = Leerer Revolver
gun-revolver-full = Revolver voll
gun-revolver-insert = eingesetzt
gun-revolver-spin = Trommel drehen
gun-revolver-spun = Gedreht
gun-speedloader-empty = Speedloader leer

# GunSpreadModifier
examine-gun-spread-modifier-reduction = Die Streuung wurde um [color=yellow]{$percentage}%[/color] verringert.
examine-gun-spread-modifier-increase = Die Streuung wurde um [color=yellow]{$percentage}%[/color] erhöht.
