# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

power-radiation-collector-gas-tank-missing = Der Plasmatank Slot ist [color=darkred]leer[/color].
power-radiation-collector-gas-tank-present = The plasma tank slot is [color=darkgreen]filled[/color] and the tank indicator reads [color={$fullness ->
    *[0]rot]leer
    [1]rot) niedrig
    [2]gelb halb voll
    [3]Kalk]voll
}[/color].
power-radiation-collector-enabled = It's switched [color={$state ->
    [true] dunkelgrün;on
    *[false] dunkelrot
}[/color].
