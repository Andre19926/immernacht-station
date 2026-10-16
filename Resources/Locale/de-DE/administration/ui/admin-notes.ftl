# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Riggle <27156122+RigglePrime@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 beck-thompson <107373427+beck-thompson@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# UI
admin-notes-title = Anmerkungen für {$player}
admin-notes-new-note = Neue Note
admin-notes-show-more = Mehr anzeigen
admin-notes-for = Anmerkung zu: {$player}
admin-notes-id = Id: {$id}
admin-notes-type = Typ: {$type}
admin-notes-severity = Schweregrad: {$severity}
admin-notes-secret = Geheimnis
admin-notes-notsecret = Nicht geheim
admin-notes-expires = Läuft ab am: {$expires}
admin-notes-expires-never = nicht abläuft
admin-notes-edited-never = nie
admin-notes-round-id = Runde Id: {$id}
admin-notes-round-id-unknown = Round Id: Unbekannt
admin-notes-created-by = Erstellt von: {$author}
admin-notes-created-at = Erstellt in: {$date}
admin-notes-last-edited-by = Zuletzt herausgegeben von: {$author}
admin-notes-last-edited-at = Zuletzt bearbeitet unter: {$date}
admin-notes-edit = Edit
admin-notes-delete = Löschung
admin-notes-hide = Hüllen
admin-notes-delete-confirm = Bestätigen Sie löschen
admin-notes-edited = Last Edit von {$author} am {$date}
admin-notes-unbanned = Unbanned von {$admin} am {$date}
admin-notes-message-desc = [color=white]You have received { $count ->
    [1] eine Verwaltungsmeldung
    *[other] Verwaltungsmeldungen
} seit dem letzten Mal, als Sie auf diesem Server gespielt haben.[/color]
admin-notes-message-admin = von [bold]{ $admin }[/bold], geschrieben am { TOSTRING($date, "f") }:
admin-notes-message-wait = Der Accept Button wird aktiviert, nachdem {$time} Sekunden.
admin-notes-message-accept = Dauerhaft entlassen
admin-notes-message-dismiss = Entlassung für jetzt
admin-notes-message-seen = Gesehen
admin-notes-banned-from = Verboten von
admin-notes-the-server = Der Server
admin-notes-permanently = dauerhaft
admin-notes-days = {$days} Tage
admin-notes-hours = {$hours} Stunden
admin-notes-minutes = {$minutes} Minuten

# Note editor UI
admin-note-editor-title-new = Erstellen einer neuen Note für {$player}
admin-note-editor-title-existing = Rediting Note {$id} am {$player} durch {$author}
admin-note-editor-pop-out = Pop-out
admin-note-editor-secret = Geheimnis?
admin-note-editor-secret-tooltip = Wenn Sie dies überprüfen, wird die Notiz für den Spieler nicht sichtbar
admin-note-editor-type-note = Anmerkung:
admin-note-editor-type-message = Nachricht
admin-note-editor-type-watchlist = Beobachtungsliste
admin-note-editor-type-server-ban = Server-Verbot
admin-note-editor-type-role-ban = Rollenverbot
admin-note-editor-severity-select = Wählen
admin-note-editor-severity-none = Keine
admin-note-editor-severity-low = niedrig
admin-note-editor-severity-medium = Medium
admin-note-editor-severity-high = hoch
admin-note-editor-expiry-checkbox = Permanent?
admin-note-editor-expiry-checkbox-tooltip = Überprüfen Sie dies, damit es abläuft
admin-note-editor-expiry-label = Läuft ab am:
admin-note-editor-expiry-label-params = Läuft ab am: {$date} (in) {$expiresIn})
admin-note-editor-expiry-label-expired = Abgelaufen
admin-note-editor-expiry-placeholder = Verfallsdatum (JJJJ-MM-TT HH:mm:ss)
admin-note-editor-submit = Einreichung
admin-note-editor-submit-confirm = Sind Sie sicher?

# Verb
admin-notes-verb-text = Offene Admin-Notizen

# Watchlist and message login
admin-notes-watchlist = Watchlist für {$player}: {$message}
admin-notes-new-message = Sie haben eine Admin-Nachricht von {$admin}: {$message}
admin-notes-fallback-admin-name = [System]

# Admin remarks
admin-remarks-command-description = Öffnet die Admin-Bemerkungen Seite
admin-remarks-command-error = Admin Bemerkungen wurden deaktiviert
admin-remarks-title = Anmerkungen des Admin

# Misc
system-user = [System]
