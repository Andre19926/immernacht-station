# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 TomaszKawalec <40093912+TK-A369@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Flesh <62557990+PolterTzi@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Tayrtahn <tayrtahn@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

guidebook-reagent-effect-description = {$quantity ->
        [0] {""}
        *[other] Wenn mindestens {$quantity}u {$reagent} vorhanden sind,{" "}
    }{$chance ->
        [1] { $effect }
        *[other] mit einer Chance von { NATURALPERCENT($chance, 2) }: { $effect }
    }{ $conditionCount ->
        [0] .
        *[other] {" "}wenn { $conditions }.
    }

guidebook-reagent-name = [bold][color={$color}]{CAPITALIZE($name)}[/color][/bold]
guidebook-reagent-recipes-header = Rezept
guidebook-reagent-recipes-reagent-display = [bold]{$reagent}[/bold] \[{$ratio}\]
guidebook-reagent-sources-header = Quellen
guidebook-reagent-sources-ent-wrapper = [bold]{$name}[/bold] \[1\]
guidebook-reagent-sources-gas-wrapper = [bold]{$name} (Gas)[/bold] \[1\]
guidebook-reagent-effects-header = Wirkungen
guidebook-reagent-effects-metabolism-group-rate = [bold]{$group}[/bold] [color=gray]({$rate} Einheiten pro Sekunde)[/color]
guidebook-reagent-plant-metabolisms-header = Pflanzenstoffwechsel
guidebook-reagent-plant-metabolisms-rate = [bold]Pflanzenstoffwechsel[/bold] [color=gray](1 Einheit alle 3 Sekunden als Basis)[/color]
guidebook-reagent-physical-description = [italic]Wirkt {$description}.[/italic]
guidebook-reagent-recipes-mix-info = {$minTemp ->
    [0] {$hasMax ->
            [true] {CAPITALIZE($verb)} unter {NATURALFIXED($maxTemp, 2)} K
            *[false] {CAPITALIZE($verb)}
        }
    *[other] {CAPITALIZE($verb)} {$hasMax ->
            [true] zwischen {NATURALFIXED($minTemp, 2)} K und {NATURALFIXED($maxTemp, 2)} K
            *[false] über {NATURALFIXED($minTemp, 2)} K
        }
}
