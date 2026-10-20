# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = Erlaubt einem Benutzer vorübergehend, die üblichen Verbindungsprüfungen zu umgehen.
cmd-grant_connect_bypass-help = Verwendung: grant_connect_bypass <user> [duration minutes]
    Erlaubt einem Benutzer vorübergehend, die üblichen Verbindungsbeschränkungen zu umgehen.
    Der Bypass gilt nur für diesen Spielserver und läuft standardmäßig nach 1 Stunde ab.
    Der Benutzer kann unabhängig von Whitelist, Panic Bunker oder Spielerlimit beitreten.

cmd-grant_connect_bypass-arg-user = <Benutzer>
cmd-grant_connect_bypass-arg-duration = [duration minutes]

cmd-grant_connect_bypass-invalid-args = Erwartete 1 oder 2 Argumente
cmd-grant_connect_bypass-unknown-user = Benutzer „{$user}“ nicht gefunden
cmd-grant_connect_bypass-invalid-duration = Ungültige Dauer „{$duration}“

cmd-grant_connect_bypass-success = Bypass für Benutzer „{$user}“ hinzugefügt
