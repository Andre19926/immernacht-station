# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Swept <sweptwastaken@protonmail.com>
# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

shared-solution-container-component-on-examine-main-text = Enthält { $chemCount ->
    [1] eine Chemikalie
   *[other] eine Mischung aus Chemikalien
    } ([color={$color}]{$desc}[/color]).

examinable-solution-has-recognizable-chemicals = Du erkennst {$recognizedString} in der Lösung.
examinable-solution-recognized = [color={$color}]{$chemical}[/color]

examinable-solution-on-examine-volume = Die enthaltene Lösung { $fillLevel ->
    [exact] enthält [color=white]{$current}/{$max}u[/color].
   *[other] ist [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-no-max = Die enthaltene Lösung { $fillLevel ->
    [exact] enthält [color=white]{$current}u[/color].
   *[other] ist [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-puddle = Die Pfütze { $fillLevel ->
    [exact] enthält [color=white]{$current}u[/color].
    [full] ist riesig und läuft über!
    [mostlyfull] ist riesig und läuft über!
    [halffull] ist tief und fließt.
    [halfempty] ist sehr tief.
   *[mostlyempty] sammelt sich.
    [empty] bildet mehrere kleine Lachen.
}

-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]Voll[/color]
        [mostlyfull] [color=#DFDFDF]Fast voll[/color]
        [halffull] [color=#C8C8C8]Halb voll[/color]
        [halfempty] [color=#C8C8C8]Halb leer[/color]
        [mostlyempty] [color=#A4A4A4]Fast leer[/color]
       *[empty] [color=gray]Leer[/color]
    }
