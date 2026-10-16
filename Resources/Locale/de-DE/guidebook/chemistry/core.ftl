# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 TomaszKawalec <40093912+TK-A369@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Flesh <62557990+PolterTzi@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Tayrtahn <tayrtahn@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

guidebook-reagent-effect-description =
    {$quantity ->
        [0] {""}
        *[other] Wenn es mindestens {$quantity}u {$reagent},{" "}
    }{$chance ->
        [1] { $effect }
        *[other] Hat einen { NATURALPERCENT($chance, 2) } Chance auf { $effect }
    }{ $conditionCount ->
        [0] .
        *[other] {" "}wann { $conditions }.
    }

guidebook-reagent-name = [bold][color={$color}]{CAPITALIZE($name)}[/color][/bold]
guidebook-reagent-recipes-header = Rezeptur
guidebook-reagent-recipes-reagent-display = [bold]{$reagent}[/bold] \[{$ratio}\]
guidebook-reagent-sources-header = Quellen
guidebook-reagent-sources-ent-wrapper = [bold]{$name}[/bold] \[1\]
guidebook-reagent-sources-gas-wrapper = [bold]{$name} (Gas)[/bold] \[1\]
guidebook-reagent-effects-header = Auswirkungen
guidebook-reagent-effects-metabolism-group-rate = [bold]{$group}[/bold] [color=gray]({$rate} Einheiten pro Sekunde[/color]
guidebook-reagent-plant-metabolisms-header = Pflanzenmetabolismus
guidebook-reagent-plant-metabolisms-rate = [bold]Pflanzenmetabolismus[/bold] [color=gray](1 Einheit alle 3 Sekunden als Basis)[/color]
guidebook-reagent-physical-description = [italic]Scheint zu sein {$description}.[/italic]
guidebook-reagent-recipes-mix-info = {$minTemp ->
    [0] {$hasMax ->
            [true] {CAPITALIZE($verb)} unten {NATURALFIXED($maxTemp, 2)}K
            *[false] {CAPITALIZE($verb)}
        }
    *[other] {CAPITALIZE($verb)} {$hasMax ->
            [true] zwischen {NATURALFIXED($minTemp, 2)}K und {NATURALFIXED($maxTemp, 2)}K
            *[false] oben {NATURALFIXED($minTemp, 2)}K
        }
}
