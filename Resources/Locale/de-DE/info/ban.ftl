# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2023 Riggle <27156122+RigglePrime@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2024 Julian Giebel <juliangiebel@live.de>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# ban
cmd-ban-desc = Bannt jemanden
cmd-ban-help = Verwendung: ban <name or user ID> <reason> [duration in minutes, leave out or 0 for permanent ban]
cmd-ban-player = Kein Spieler mit diesem Namen gefunden.
cmd-ban-invalid-minutes = {$minutes} ist keine gültige Anzahl von Minuten!
cmd-ban-invalid-severity = {$severity} ist kein gültiger Schweregrad!
cmd-ban-invalid-arguments = Ungültige Anzahl an Argumenten
cmd-ban-hint = <Name/Benutzer-ID>
cmd-ban-hint-reason = <Grund>
cmd-ban-hint-duration = [duration]
cmd-ban-hint-severity = [severity]

cmd-ban-hint-duration-1 = Dauerhaft
cmd-ban-hint-duration-2 = 1 Tag
cmd-ban-hint-duration-3 = 3 Tage
cmd-ban-hint-duration-4 = 1 Woche
cmd-ban-hint-duration-5 = 2 Wochen
cmd-ban-hint-duration-6 = 1 Monat

# ban panel
cmd-banpanel-desc = Öffnet das Bann-Panel
cmd-banpanel-help = Verwendung: banpanel [name or user guid]
cmd-banpanel-server = Dies kann nicht von der Serverkonsole aus verwendet werden
cmd-banpanel-player-err = Der angegebene Spieler konnte nicht gefunden werden

# listbans
cmd-banlist-desc = Listet die aktiven Bans eines Benutzers auf.
cmd-banlist-help = Verwendung: banlist <Name oder Benutzer-ID>
cmd-banlist-empty = Keine aktiven Bans für {$user} gefunden
cmd-banlist-hint = <Name/Benutzer-ID>

cmd-ban_exemption_update-desc = Legt für einen Spieler eine Ausnahme von einer Ban-Art fest.
cmd-ban_exemption_update-help = Verwendung: ban_exemption_update <player> <flag> [<flag> [...]]
    Gib mehrere Flags an, um einem Spieler mehrere Ban-Ausnahme-Flags zu geben.
    Um alle Ausnahmen zu entfernen, führe diesen Befehl mit "None" als einzigem Flag aus.

cmd-ban_exemption_update-nargs = Erwartet mindestens 2 Argumente
cmd-ban_exemption_update-locate = Spieler „{$player}“ nicht gefunden.
cmd-ban_exemption_update-invalid-flag = Ungültiges Flag „{$flag}“.
cmd-ban_exemption_update-success = Ban-Ausnahme-Flags für „{$player}“ ({$uid}) aktualisiert.
cmd-ban_exemption_update-arg-player = <Spieler>
cmd-ban_exemption_update-arg-flag = <Flag>

cmd-ban_exemption_get-desc = Zeigt die Ban-Ausnahmen eines Spielers an.
cmd-ban_exemption_get-help = Verwendung: ban_exemption_get <Spieler>

cmd-ban_exemption_get-nargs = Genau 1 Argument erwartet
cmd-ban_exemption_get-none = Der Benutzer ist von keinem Ban ausgenommen.
cmd-ban_exemption_get-show = Der Benutzer ist von den folgenden Ban-Flags ausgenommen: {$flags}.
cmd-ban_exemption_get-arg-player = <Spieler>

# Ban panel
ban-panel-title = Bann-Panel
ban-panel-player = Spieler
ban-panel-ip = IP
ban-panel-hwid = HWID
ban-panel-reason = Grund
ban-panel-last-conn = IP und HWID der letzten Verbindung verwenden?
ban-panel-submit = Bannen
ban-panel-confirm = Bist du sicher?
ban-panel-tabs-basic = Allgemeine Infos
ban-panel-tabs-reason = Grund
ban-panel-tabs-players = Spielerliste
ban-panel-tabs-role = Infos zum Rollenbann
ban-panel-no-data = Du musst einen Benutzer, eine IP oder eine HWID angeben, um zu bannen.
ban-panel-invalid-ip = Die IP-Adresse konnte nicht gelesen werden. Bitte versuche es erneut.
ban-panel-select = Typ wählen
ban-panel-server = Serverbann
ban-panel-role = Rollenbann
ban-panel-minutes = Minuten
ban-panel-hours = Stunden
ban-panel-days = Tage
ban-panel-weeks = Wochen
ban-panel-months = Monate
ban-panel-years = Jahre
ban-panel-permanent = Dauerhaft
ban-panel-ip-hwid-tooltip = Leer lassen und unten das Kontrollkästchen aktivieren, um die Daten der letzten Verbindung zu verwenden
ban-panel-severity = Schweregrad:
ban-panel-erase = Chatnachrichten und Spieler aus der Runde löschen
ban-panel-expiry-error = err

# Ban string
server-ban-string = {$admin} hat einen Server-Ban mit Schweregrad {$severity} erstellt (läuft ab: {$expires}) für [{$name}, {$ip}, {$hwid}], Grund: {$reason}
server-ban-string-no-pii = {$admin} hat einen Server-Ban mit Schweregrad {$severity} erstellt (läuft ab: {$expires}) für {$name}, Grund: {$reason}
server-ban-string-never = nie

# Kick on ban
ban-kick-reason = Du wurdest gebannt
