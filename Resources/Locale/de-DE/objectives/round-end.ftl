# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2023 themias <89101928+themias@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

objectives-round-end-result = {$count ->
    [one] Es gab einen {$agent}.
    *[other] Es gab {$count} {MAKEPLURAL($agent)}.
}

objectives-round-end-result-in-custody = {$custody} von {$count} {MAKEPLURAL($agent)} waren in Gewahrsam.

objectives-player-user-named = [color=White]{$name}[/color] ([color=gray]{$user}[/color])
objectives-player-named = [color=White]{$name}[/color]

# goob
objectives-no-objectives = {$custody} {$title} war {$agent}.
objectives-with-objectives = {$custody} {$title} war {$agent} und hatte folgende Ziele:

objectives-objective-success = {$objective} | [color=green]Erfolg![/color] ({TOSTRING($progress, "P0")})
objectives-objective-partial-success = {$objective} | [color=yellow]Teilweiser Erfolg![/color] ({TOSTRING($progress, "P0")})
objectives-objective-partial-failure = {$objective} | [color=orange]Teilweises Scheitern![/color] ({TOSTRING($progress, "P0")})
objectives-objective-fail = {$objective} | [color=red]Scheitern![/color] ({TOSTRING($progress, "P0")})

objectives-in-custody = [bold][color=red]| IN GEWAHRSAM |[/color][/bold]
