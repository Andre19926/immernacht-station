# SPDX-FileCopyrightText: 2024 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2024 Plykiya <58439124+Plykiya@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 ThatGuyUSA <thatguyusa123@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Ignaz "Ian" Kraft <ignaz.k@live.de>
# SPDX-FileCopyrightText: 2025 Killerqu00 <47712032+Killerqu00@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Goobstation? Clown?
contraband-examine-text-Clown = [color=yellow]Dieser Gegenstand gehört dem Clown, gib ihn zurück, bevor er traurig wird.[/color]
contraband-examine-text-Minor =
    { $type ->
        *[item] [color=yellow]This item is considered minor contraband.[/color]
        [reagent] [color=yellow]This reagent is considered minor contraband.[/color]
    }

contraband-examine-text-Restricted =
    { $type ->
        *[item] [color=yellow]This item is departmentally restricted.[/color]
        [reagent] [color=yellow]This reagent is departmentally restricted.[/color]
    }

contraband-examine-text-Restricted-department =
    { $type ->
        *[item] [color=yellow]Dieser Artikel ist beschränkt auf {$departments}und kann als Schmuggelware angesehen werden.[/color]
        [reagent] [color=yellow]Dieses Reagenz ist beschränkt auf {$departments}und kann als Schmuggelware angesehen werden.[/color]
    }

contraband-examine-text-Major =
    { $type ->
        *[item] [color=red]This item is considered major contraband.[/color]
        [reagent] [color=red]This reagent is considered major contraband.[/color]
    }

contraband-examine-text-GrandTheft =
    { $type ->
        *[item] [color=red]This item is a highly valuable target for Syndicate agents![/color]
        [reagent] [color=red]This reagent is a highly valuable target for Syndicate agents![/color]
    }

contraband-examine-text-Highly-Illegal =
    { $type ->
        *[item] [color=crimson]Dieser Gegenstand ist hochgradig illegale Schmuggelware![/color]
        [reagent] [color=crimson]Dieses Reagenz ist hochgradig illegale Schmuggelware![/color]
    }

contraband-examine-text-Syndicate =
    { $type ->
        *[item] [color=crimson]This item is highly illegal Syndicate contraband![/color]
        [reagent] [color=crimson]This reagent is highly illegal Syndicate contraband![/color]
    }

contraband-examine-text-Magical =
    { $type ->
        *[item] [color=#b337b3]This item is highly illegal magical contraband![/color]
        [reagent] [color=#b337b3]This reagent is highly illegal magical contraband![/color]
    }

contraband-examine-text-avoid-carrying-around = [color=red][italic]Du solltest das besser nicht ohne guten Grund sichtbar mit dir herumtragen.[/italic][/color]
contraband-examine-text-in-the-clear = [color=green][italic]Du kannst das bedenkenlos sichtbar mit dir herumtragen.[/italic][/color]

contraband-examinable-verb-text = Legalität
contraband-examinable-verb-message = Überprüfe die Rechtmäßigkeit dieses Artikels.

contraband-department-plural = {$department}
contraband-job-plural = {MAKEPLURAL($job)}
