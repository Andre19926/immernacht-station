# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

power-radiation-collector-gas-tank-missing = Der Plasmatank-Slot ist [color=darkred]leer[/color].
power-radiation-collector-gas-tank-present = Der Plasmatank-Slot ist [color=darkgreen]belegt[/color] und die Tankanzeige steht auf [color={$fullness ->
    *[0]red]leer
    [1]red]niedrig
    [2]yellow]halb voll
    [3]lime]voll
    }[/color].
power-radiation-collector-enabled = Er ist [color={$state ->
    [true] darkgreen]an
    *[false] darkred]aus
    }[/color].
