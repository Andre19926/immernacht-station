# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Killerqu00 <47712032+Killerqu00@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 BarryNorfolk <barrynorfolkman@protonmail.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

bounty-console-menu-title = Frachtprämien-Konsole
bounty-console-label-button-text = Etikett drucken
bounty-console-skip-button-text = Überspringen
bounty-console-time-label = Zeit: [color=orange]{$time}[/color]
bounty-console-reward-label = Belohnung: [color=limegreen]${$reward}[/color]
bounty-console-manifest-label = Manifest: [color=orange]{$item}[/color]
bounty-console-manifest-entry =
    { $amount ->
        [1] {$item}
        *[other] {$item} x{$amount}
    }
bounty-console-manifest-reward = Belohnung: ${$reward}
bounty-console-description-label = [color=gray]{$description}[/color]
bounty-console-id-label = ID#{$id}

bounty-console-flavor-left = Prämien stammen von lokalen, skrupellosen Händlern.
bounty-console-flavor-right = v1.4

bounty-manifest-header = [font size=14][bold]Offizielles Frachtprämien-Manifest[/bold] (ID#{$id})[/font]
bounty-manifest-list-start = Warenliste:

bounty-console-tab-available-label = Verfügbar
bounty-console-tab-history-label = Verlauf
bounty-console-history-empty-label = Kein Prämienverlauf gefunden
bounty-console-history-notice-completed-label = [color=limegreen]Abgeschlossen[/color]
bounty-console-history-notice-skipped-label = [color=red]Übersprungen[/color] von {$id}
