# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

generator-clogged = {CAPITALIZE(THE($generator))} schaltet sich abrupt ab!

portable-generator-verb-start = Generator starten
portable-generator-verb-start-msg-unreliable = Starte den Generator. Dies kann einige Versuche erfordern.
portable-generator-verb-start-msg-reliable = Starte den Generator.
portable-generator-verb-start-msg-unanchored = Der Generator muss zuerst verankert werden!
portable-generator-verb-stop = Generator stoppen
portable-generator-start-fail = Du ziehst an der Schnur, aber er springt nicht an.
portable-generator-start-success = Du ziehst an der Schnur, und er surrt los.

portable-generator-ui-title = Tragbarer Generator
portable-generator-ui-status-stopped = Gestoppt:
portable-generator-ui-status-starting = Startet:
portable-generator-ui-status-running = Läuft:
portable-generator-ui-start = Start
portable-generator-ui-stop = Stopp
portable-generator-ui-target-power-label = Zielleistung (kW):
portable-generator-ui-efficiency-label = Effizienz:
portable-generator-ui-fuel-use-label = Treibstoffverbrauch:
portable-generator-ui-fuel-left-label = Treibstoff übrig:
portable-generator-ui-clogged = Verunreinigungen im Treibstofftank erkannt!
portable-generator-ui-eject = Auswerfen
portable-generator-ui-eta = (~{ $minutes } min)
portable-generator-ui-unanchored = Nicht verankert
portable-generator-ui-current-output = Aktuelle Ausgangsspannung: {$voltage}
portable-generator-ui-network-stats = Stromnetz:
portable-generator-ui-network-stats-value = { POWERWATTS($supply) } / { POWERWATTS($load) }
portable-generator-ui-network-stats-not-connected = Nicht verbunden

power-switchable-generator-examine = Der Ausgang ist auf {$voltage} eingestellt.
power-switchable-generator-switched = Ausgang auf {$voltage} umgeschaltet!

power-switchable-voltage = { $voltage ->
    [HV] [color=orange]HV[/color]
    [MV] [color=yellow]MV[/color]
    *[LV] [color=green]LV[/color]
}
power-switchable-switch-voltage = Auf {$voltage} umschalten

fuel-generator-verb-disable-on = Schalte zuerst den Generator aus!
