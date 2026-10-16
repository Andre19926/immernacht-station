# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Riggle <27156122+RigglePrime@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Localization for role ban command

cmd-roleban-desc = Verbietet einem Spieler eine Rolle
cmd-roleban-help = Verwendung: roleban <name or user ID> <job> <reason> [duration in minutes, leave out or 0 for permanent ban]

## Completion result hints
cmd-roleban-hint-1 = <Name oder Benutzer-ID>
cmd-roleban-hint-2 = <job>
cmd-roleban-hint-3 = <Vernunft>
cmd-roleban-hint-4 = [duration in minutes, leave out or 0 for permanent ban]
cmd-roleban-hint-5 = [severity]

cmd-roleban-hint-duration-1 = Dauerhaft
cmd-roleban-hint-duration-2 = 1 Tag
cmd-roleban-hint-duration-3 = 3 Tage
cmd-roleban-hint-duration-4 = 1 Woche
cmd-roleban-hint-duration-5 = 2 Wochen
cmd-roleban-hint-duration-6 = 1 Monat


### Localization for role unban command

cmd-roleunban-desc = Verzeihen Sie das Rollenverbot eines Spielers
cmd-roleunban-help = Verwendung: roleunban <role ban id>
cmd-roleunban-unable-to-parse-id = Unfähig zu parsen {$id} Als ban id integer.
                                   {$help}

## Completion result hints
cmd-roleunban-hint-1 = <role ban id>


### Localization for roleban list command

cmd-rolebanlist-desc = Listet die Rollenverbote des Benutzers auf
cmd-rolebanlist-help = Verwendung: <name oder user ID> [include unbanned]

## Completion result hints
cmd-rolebanlist-hint-1 = <Name oder Benutzer-ID>
cmd-rolebanlist-hint-2 = [include unbanned]


cmd-roleban-minutes-parse = {$time} ist keine gültige Anzahl von Minuten.\n{$help}
cmd-roleban-severity-parse = ${severity} ist kein gültiger Schweregrad\n{$help}.
cmd-roleban-arg-count = Ungültige Anzahl von Argumenten.
cmd-roleban-job-parse = Arbeit {$job} existiert nicht.
cmd-roleban-name-parse = Unfähig, einen Spieler mit diesem Namen zu finden.
cmd-roleban-success = Rolle verboten {$target} von {$role} mit Gründen {$reason} {$length}.

cmd-roleban-inf = dauerhaft
cmd-roleban-until =  bis {$expires}

# Department bans
cmd-departmentban-desc = Verbietet einen Spieler aus den Rollen, die eine Abteilung umfassen
cmd-departmentban-help = Verwendung: departmentban <name or user ID> <department> <reason> [duration in minutes, leave out or 0 for permanent ban]
