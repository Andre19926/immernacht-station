# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2022 Veritius <veritiusgaming@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

parse-minutes-fail = „{$minutes}“ konnte nicht als Minuten gelesen werden
parse-session-fail = Keine Sitzung für „{$username}“ gefunden

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = Fügt die angegebenen Minuten zur Gesamtspielzeit eines Spielers hinzu
cmd-playtime_addoverall-help = Verwendung: {$command} <Benutzername> <Minuten>
cmd-playtime_addoverall-succeed = Gesamtzeit für {$username} erhöht auf {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addoverall-arg-user = <Benutzername>
cmd-playtime_addoverall-arg-minutes = <Minuten>
cmd-playtime_addoverall-error-args = Erwartet genau zwei Argumente

# - playtime_addrole
cmd-playtime_addrole-desc = Fügt die angegebenen Minuten zur Rollenspielzeit eines Spielers hinzu
cmd-playtime_addrole-help = Verwendung: {$command} <Benutzername> <Rolle> <Minuten>
cmd-playtime_addrole-succeed = Rollenspielzeit erhöht für {$username} / \'{$role}\' auf {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addrole-arg-user = <Benutzername>
cmd-playtime_addrole-arg-role = <Rolle>
cmd-playtime_addrole-arg-minutes = <Minuten>
cmd-playtime_addrole-error-args = Erwartet genau drei Argumente

# - playtime_getoverall
cmd-playtime_getoverall-desc = Zeigt die Gesamtspielzeit eines Spielers in Minuten an
cmd-playtime_getoverall-help = Verwendung: {$command} <Benutzername>
cmd-playtime_getoverall-success = Gesamtzeit für {$username} ist {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getoverall-arg-user = <Benutzername>
cmd-playtime_getoverall-error-args = Erwartet genau ein Argument

# - GetRoleTimer
cmd-playtime_getrole-desc = Zeigt alle oder einen Rollen-Timer eines Spielers an
cmd-playtime_getrole-help = Verwendung: {$command} <Benutzername> [role]
cmd-playtime_getrole-no = Keine Rollen-Timer gefunden
cmd-playtime_getrole-role = Rolle: {$role}, Spielzeit: {$time}
cmd-playtime_getrole-overall = Die Gesamtspielzeit ist {$time}
cmd-playtime_getrole-succeed = Spielzeit für {$username} ist: {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getrole-arg-user = <Benutzername>
cmd-playtime_getrole-arg-role = <Rolle|'Overall'>
cmd-playtime_getrole-error-args = Erwartet genau ein oder zwei Argumente

# - playtime_save
cmd-playtime_save-desc = Speichert die Spielzeiten des Spielers in der DB
cmd-playtime_save-help = Verwendung: {$command} <Benutzername>
cmd-playtime_save-succeed = Spielzeit für {$username} gespeichert
cmd-playtime_save-arg-user = <Benutzername>
cmd-playtime_save-error-args = Erwartet genau ein Argument

## 'playtime_flush' command'

cmd-playtime_flush-desc = Schreibt aktive Tracker in die Spielzeitverfolgung zurück (Flush).
cmd-playtime_flush-help = Verwendung: {$command} [user name]
    Das leert nur in den internen Speicher (Flush), nicht sofort in die DB.
    Wird ein Benutzer angegeben, wird nur dieser Benutzer geleert.

cmd-playtime_flush-error-args = Erwartet null oder ein Argument
cmd-playtime_flush-arg-user = [user name]
