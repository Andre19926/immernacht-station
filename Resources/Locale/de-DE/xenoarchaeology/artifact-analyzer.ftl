# SPDX-FileCopyrightText: 2023 Guillaume E <262623+quatre@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vascreeper@yahoo.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Hannah Giovanna Dawson <karakkaraz@gmail.com>
# SPDX-FileCopyrightText: 2024 eoineoineoin <github@eoinrul.es>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

analysis-console-menu-title = Broad-Spectrum Mark 3 Analysekonsole
analysis-console-server-list-button = Server
analysis-console-extract-button = Auszugspunkte

analysis-console-info-no-scanner = Kein Analysator angeschlossen! Bitte verbinde eine mit einem Multitool.
analysis-console-info-no-artifact = Kein Artefakt vorhanden! Platziere einen auf dem Pad, um Knoteninformationen anzuzeigen.
analysis-console-info-ready = Systeme betriebsbereit. Scanbereit.

analysis-console-no-node = Wähle Node to View
analysis-console-info-id = [font="Monospace" size=11]ID:[/font]
analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{$id}[/color][/font]
analysis-console-info-class = [font="Monospace" size=11]Klasse:[/font]
analysis-console-info-class-value = [font="Monospace" size=11]{$class}[/font]
analysis-console-info-locked = [font="Monospace" size=11]Status:[/font]
analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
    [0] rot]gesperrt
    [1] Kalk Entsperrt
    *[2] Pflaumen Aktiv
}[/color][/font]
analysis-console-info-durability = [font="Monospace" size=11]Haltbarkeit:[/font]
analysis-console-info-durability-value = [font="Monospace" size=11][color={$color}]{$current}/{$max}[/color][/font]
analysis-console-info-effect = [font="Monospace" size=11]Wirkung:[/font]
analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
    [true] {$info}
    *[false] Entsperre Knoten, um Informationen zu erhalten
}[/color][/font]
analysis-console-info-trigger = [font="Monospace" size=11]Auslöser:[/font]
analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{$triggers}[/color][/font]
analysis-console-info-scanner = Scannen...
analysis-console-info-scanner-paused = Angehalten.
analysis-console-progress-text = {$seconds ->
    [one] T-{$seconds} zweite
    *[other] T-{$seconds} Sekunden
}

analysis-console-extract-value = [font="Monospace" size=11][color=orange]Knotenpunkt {$id} (+{$value})[/color][/font]
analysis-console-extract-none = [font="Monospace" size=11][color=orange] Keine entsperrten Knoten haben noch Punkte zum Extrahieren [/color][/font]
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]Gesamtforschung: {$value}[/color][/font]

analyzer-artifact-extract-popup = Energie schimmert auf der Oberfläche des Artefakts!
