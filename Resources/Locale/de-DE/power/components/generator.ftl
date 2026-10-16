# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

generator-clogged = {CAPITALIZE(THE($generator))} schaltet abrupt ab!

portable-generator-verb-start = Startgenerator
portable-generator-verb-start-msg-unreliable = Starte den Generator. Dies kann einige Versuche erfordern.
portable-generator-verb-start-msg-reliable = Starte den Generator.
portable-generator-verb-start-msg-unanchored = Der Generator muss zuerst verankert werden!
portable-generator-verb-stop = Stoppgenerator
portable-generator-start-fail = Sie ziehen das Kabel, aber es hat nicht angefangen.
portable-generator-start-success = Sie ziehen die Schnur, und es wirbelt zum Leben.

portable-generator-ui-title = Tragbarer Generator
portable-generator-ui-status-stopped = Angehalten:
portable-generator-ui-status-starting = Beginn:
portable-generator-ui-status-running = Laufen:
portable-generator-ui-start = Beginn
portable-generator-ui-stop = Stopp
portable-generator-ui-target-power-label = Zielleistung (kW):
portable-generator-ui-efficiency-label = Effizienz:
portable-generator-ui-fuel-use-label = Kraftstoffverbrauch:
portable-generator-ui-fuel-left-label = Kraftstoff nach links:
portable-generator-ui-clogged = Schadstoffe im Kraftstofftank nachgewiesen!
portable-generator-ui-eject = Auswurf
portable-generator-ui-eta = (~{ $minutes } min.
portable-generator-ui-unanchored = nicht verankert
portable-generator-ui-current-output = Stromverbrauch: {$voltage}
portable-generator-ui-network-stats = Netz:
portable-generator-ui-network-stats-value = { POWERWATTS($supply) } / { POWERWATTS($load) }
portable-generator-ui-network-stats-not-connected = nicht verbunden

power-switchable-generator-examine = Die Leistung ist auf {$voltage}.
power-switchable-generator-switched = Geschaltener Ausgang {$voltage}!

power-switchable-voltage = { $voltage ->
    [HV] [color=orange]HV[/color]
    [MV] [color=yellow]MV[/color]
    *[LV] [color=green]LV[/color]
}
power-switchable-switch-voltage = Wechsel zu {$voltage}

fuel-generator-verb-disable-on = Schalten Sie zuerst den Generator aus!
