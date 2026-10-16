# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2022 Veritius <veritiusgaming@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

parse-minutes-fail = Unfähig zu analysieren{$minutes}in Minuten
parse-session-fail = Ich fand keine Sitzung für '{$username}'

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = Fügt die angegebenen Minuten zur Gesamtspielzeit eines Spielers hinzu
cmd-playtime_addoverall-help = Verwendung: {$command} <Benutzername> <Minuten>
cmd-playtime_addoverall-succeed = Erhöhte Gesamtzeit für {$username} bis {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addoverall-arg-user = <Benutzername>
cmd-playtime_addoverall-arg-minutes = <Minuten>
cmd-playtime_addoverall-error-args = Erwartet genau zwei Argumente

# - playtime_addrole
cmd-playtime_addrole-desc = Fügt die angegebenen Minuten zur Rollenspielzeit eines Spielers hinzu
cmd-playtime_addrole-help = Verwendung: {$command} <Benutzername> <rolle> <Minuten>
cmd-playtime_addrole-succeed = Erhöhte Rollenspielzeit für {$username} / \'{$role}\' bis {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addrole-arg-user = <Benutzername>
cmd-playtime_addrole-arg-role = <Rolle>
cmd-playtime_addrole-arg-minutes = <Minuten>
cmd-playtime_addrole-error-args = Erwartet genau drei Argumente

# - playtime_getoverall
cmd-playtime_getoverall-desc = Erhalten Sie die angegebenen Minuten für die Gesamtspielzeit eines Spielers
cmd-playtime_getoverall-help = Verwendung: {$command} <Benutzername>
cmd-playtime_getoverall-success = Gesamtzeit für {$username} ist {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getoverall-arg-user = <Benutzername>
cmd-playtime_getoverall-error-args = Erwartet genau ein Argument

# - GetRoleTimer
cmd-playtime_getrole-desc = Bekommt alle oder einen rollentimer von einem spieler.
cmd-playtime_getrole-help = Verwendung: {$command} <Benutzername> [role]
cmd-playtime_getrole-no = Keine Rolle Timer gefunden
cmd-playtime_getrole-role = Rolle: {$role}Playtime: {$time}
cmd-playtime_getrole-overall = Die Gesamtspielzeit ist {$time}
cmd-playtime_getrole-succeed = Playtime für {$username} ist: {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getrole-arg-user = <Benutzername>
cmd-playtime_getrole-arg-role = <role|'Overall'>
cmd-playtime_getrole-error-args = Erwartet genau ein oder zwei Argumente

# - playtime_save
cmd-playtime_save-desc = Speichert die Spielzeiten des Spielers auf die DB
cmd-playtime_save-help = Verwendung: {$command} <Benutzername>
cmd-playtime_save-succeed = Speicherte Spielzeit für {$username}
cmd-playtime_save-arg-user = <Benutzername>
cmd-playtime_save-error-args = Erwartet genau ein Argument

## 'playtime_flush' command'

cmd-playtime_flush-desc = Flush aktive Tracker in Playtime Tracking gespeichert.
cmd-playtime_flush-help = Verwendung: {$command} [user name]
    Dies führt nur zu einer Spülung des internen Speichers, es spült nicht sofort zu DB.
    Wenn ein Benutzer bereitgestellt wird, wird nur dieser Benutzer gespült.

cmd-playtime_flush-error-args = Erwartete null oder ein Argument
cmd-playtime_flush-arg-user = [user name]
