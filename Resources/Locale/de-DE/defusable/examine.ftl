# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 eclips_e <67359748+Just-a-Unity-Dev@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

defusable-examine-defused = {CAPITALIZE(THE($name))} ist [color=lime]entschärft[/color].
defusable-examine-live = {CAPITALIZE(THE($name))} [color=red]tickt[/color] und hat noch [color=red]{$time}[/color] Sekunden.
defusable-examine-live-display-off = {CAPITALIZE(THE($name))} [color=red]tickt[/color]. Der Timer scheint ausgeschaltet zu sein.
defusable-examine-inactive = {CAPITALIZE(THE($name))} ist [color=lime]inaktiv[/color], kann aber trotzdem scharf gemacht werden.
defusable-examine-bolts = Die Bolzen sind {$down ->
    [true] [color=red]unten[/color]
    *[false] [color=green]oben[/color]
}.
