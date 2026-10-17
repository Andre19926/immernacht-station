# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Damage command loc.

damage-command-description = Fügt einer Entität Schaden hinzu oder entfernt ihn. 
damage-command-help = Verwendung: {$command} <type/group> <amount> [ignoreResistances] [uid]

damage-command-arg-type = <Schadenstyp oder Gruppe>
damage-command-arg-quantity = [quantity]
damage-command-arg-target = [target euid]

damage-command-error-type = {$arg} ist keine gültige Schadensgruppe oder -art.
damage-command-error-euid = {$arg} ist keine gültige Entitäts-UID.
damage-command-error-quantity = {$arg} ist keine gültige Menge.
damage-command-error-bool = {$arg} ist kein gültiger Bool-Wert.
damage-command-error-player = Keine Entität mit der Sitzung verbunden. Du musst eine Ziel-UID angeben.
damage-command-error-args = Ungültige Anzahl an Argumenten 