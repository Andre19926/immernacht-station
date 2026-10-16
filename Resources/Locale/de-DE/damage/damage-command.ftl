# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Damage command loc.

damage-command-description = Hinzufügen oder Entfernen von Schäden an einer Entität. 
damage-command-help = Verwendung: {$command} <type/group> <mount> [ignoreResistances] [uid]

damage-command-arg-type = <Schadenstyp oder Gruppe>
damage-command-arg-quantity = [quantity]
damage-command-arg-target = [target euid]

damage-command-error-type = {$arg} ist keine gültige Schadensgruppe oder -art.
damage-command-error-euid = {$arg} ist keine gültige Entity uid.
damage-command-error-quantity = {$arg} ist keine gültige Menge.
damage-command-error-bool = {$arg} Es ist kein gültiger bool.
damage-command-error-player = Keine Entität, die an eine Sitzung angeschlossen ist. Sie müssen eine Ziel-UID angeben
damage-command-error-args = Ungültige Anzahl von Argumenten 