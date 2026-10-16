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
cmd-ban-desc = Jemanden verbieten
cmd-ban-help = Verwendung: Ban <name or user ID> <reason> [duration in minutes, leave out or 0 for permanent ban]
cmd-ban-player = Unfähig, einen Spieler mit diesem Namen zu finden.
cmd-ban-invalid-minutes = {$minutes} ist keine gültige Anzahl von Minuten!
cmd-ban-invalid-severity = {$severity} ist keine gültige Strenge!
cmd-ban-invalid-arguments = Ungültige Anzahl von Argumenten
cmd-ban-hint = <Name/Benutzer-ID>
cmd-ban-hint-reason = <Vernunft>
cmd-ban-hint-duration = [duration]
cmd-ban-hint-severity = [severity]

cmd-ban-hint-duration-1 = Dauerhaft
cmd-ban-hint-duration-2 = 1 Tag
cmd-ban-hint-duration-3 = 3 Tage
cmd-ban-hint-duration-4 = 1 Woche
cmd-ban-hint-duration-5 = 2 Wochen
cmd-ban-hint-duration-6 = 1 Monat

# ban panel
cmd-banpanel-desc = Öffnet das Ban Panel
cmd-banpanel-help = Verwendung: Banpanel [name or user guid]
cmd-banpanel-server = Dies kann nicht von der Serverkonsole aus verwendet werden
cmd-banpanel-player-err = Der angegebene Spieler konnte nicht gefunden werden

# listbans
cmd-banlist-desc = Listet die aktiven verbote eines benutzers auf.
cmd-banlist-help = Verwendung: Banlist <Name oder Benutzer-ID>
cmd-banlist-empty = Keine aktiven Verbote gefunden für {$user}
cmd-banlist-hint = <Name/Benutzer-ID>

cmd-ban_exemption_update-desc = Legen Sie eine Ausnahme von einer Art von Verbot für einen Spieler fest.
cmd-ban_exemption_update-help = Nutzung: ban exemption update <player> <flag> [<flag> [...]]
    Geben Sie mehrere Flaggen an, um einem Spieler mehrere Sperrflaggen zu geben.
    Um alle Ausnahmen zu entfernen, führen Sie diesen Befehl aus und geben Sie "None" als nur Flag.

cmd-ban_exemption_update-nargs = Erwartet mindestens 2 Argumente
cmd-ban_exemption_update-locate = Unfähig, Spieler zu finden{$player}'.
cmd-ban_exemption_update-invalid-flag = Ungültige Flagge{$flag}'.
cmd-ban_exemption_update-success = Aktualisierte Ban Ausnahme Flags für '{$player}' ({$uid}).
cmd-ban_exemption_update-arg-player = <Spieler>
cmd-ban_exemption_update-arg-flag = <flagge>

cmd-ban_exemption_get-desc = Verbot Ausnahmen für einen bestimmten Spieler zeigen.
cmd-ban_exemption_get-help = Nutzung: ban exemption get <player>

cmd-ban_exemption_get-nargs = Erwartet genau 1 Argument
cmd-ban_exemption_get-none = Der Nutzer ist nicht von Verboten ausgenommen.
cmd-ban_exemption_get-show = Der Benutzer ist von den folgenden Ban-Flags ausgenommen: {$flags}.
cmd-ban_exemption_get-arg-player = <Spieler>

# Ban panel
ban-panel-title = Verbotspanel
ban-panel-player = Spieler
ban-panel-ip = IP
ban-panel-hwid = HWID
ban-panel-reason = Grund
ban-panel-last-conn = Verwenden Sie IP und HWID von der letzten Verbindung?
ban-panel-submit = Verbot
ban-panel-confirm = Sind Sie sicher?
ban-panel-tabs-basic = Grundlegende Informationen
ban-panel-tabs-reason = Grund
ban-panel-tabs-players = Spielerliste
ban-panel-tabs-role = Info zum Rollenverbot
ban-panel-no-data = Sie müssen entweder einen benutzer, ip oder hwid angeben, um zu verbieten.
ban-panel-invalid-ip = Die IP-Adresse konnte nicht analysiert werden. Bitte versuchen Sie es noch einmal
ban-panel-select = Art der Auswahl
ban-panel-server = Serververbot
ban-panel-role = Rollenverbot
ban-panel-minutes = Protokoll
ban-panel-hours = Stunden
ban-panel-days = Tage
ban-panel-weeks = Wochen
ban-panel-months = Monate
ban-panel-years = Jahre
ban-panel-permanent = Dauerhaft
ban-panel-ip-hwid-tooltip = Lassen Sie leer und aktivieren Sie das Kontrollkästchen unten, um die Details der letzten Verbindung zu verwenden
ban-panel-severity = Schweregrad:
ban-panel-erase = Löschen Sie Chat-Nachrichten und Player aus der Runde
ban-panel-expiry-error = err

# Ban string
server-ban-string = {$admin} geschaffen a {$severity} Strenge-Server-Verbot, das abläuft {$expires} für [{$name}, {$ip}, {$hwid}], mit Gründen: {$reason}
server-ban-string-no-pii = {$admin} geschaffen a {$severity} Strenge-Server-Verbot, das abläuft {$expires} für {$name} mit Gründen: {$reason}
server-ban-string-never = nie

# Kick on ban
ban-kick-reason = Sie wurden verboten
