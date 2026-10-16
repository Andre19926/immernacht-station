# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

logic-gate-examine = Es ist derzeit {INDEFINITE($gate)} {$gate} Gate.

logic-gate-cycle = Umgestellt auf {INDEFINITE($gate)} {$gate} Tor

power-sensor-examine = It is currently checking the network's {$output ->
    [true] Ausgangsleistung
    *[false] Eingang
} Batterie.
power-sensor-voltage-examine = Es prüft die {$voltage} Stromnetz.

power-sensor-switch = Switched to checking the network's {$output ->
    [true] Ausgangsleistung
    *[false] Eingang
} Batterie.
power-sensor-voltage-switch = Schaltnetz an {$voltage}!
