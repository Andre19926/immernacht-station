# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

logic-gate-examine = Es ist derzeit ein {$gate}-Gatter.

logic-gate-cycle = Umgestellt auf {$gate}-Gatter

power-sensor-examine = Es prüft derzeit die {$output ->
    [true] Ausgangsleistung
    *[false] Eingangsleistung
} des Netzes.
power-sensor-voltage-examine = Es prüft die {$voltage} Stromnetz.

power-sensor-switch = Prüft jetzt die {$output ->
    [true] Ausgangsleistung
    *[false] Eingangsleistung
} des Netzes.
power-sensor-voltage-switch = Schaltnetz an {$voltage}!
