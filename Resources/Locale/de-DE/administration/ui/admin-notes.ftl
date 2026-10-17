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
admin-notes-title = Admin-Notizen für {$player}
admin-notes-new-note = Neue Admin-Notiz
admin-notes-show-more = Mehr anzeigen
admin-notes-for = Admin-Notiz für: {$player}
admin-notes-id = Id: {$id}
admin-notes-type = Typ: {$type}
admin-notes-severity = Schweregrad: {$severity}
admin-notes-secret = Geheim
admin-notes-notsecret = Nicht geheim
admin-notes-expires = Läuft ab am: {$expires}
admin-notes-expires-never = Läuft nicht ab
admin-notes-edited-never = nie
admin-notes-round-id = Runden-ID: {$id}
admin-notes-round-id-unknown = Runden-ID: Unbekannt
admin-notes-created-by = Erstellt von: {$author}
admin-notes-created-at = Erstellt am: {$date}
admin-notes-last-edited-by = Zuletzt bearbeitet von: {$author}
admin-notes-last-edited-at = Zuletzt bearbeitet am: {$date}
admin-notes-edit = Bearbeiten
admin-notes-delete = Löschen
admin-notes-hide = Ausblenden
admin-notes-delete-confirm = Löschen bestätigen
admin-notes-edited = Zuletzt bearbeitet von {$author} am {$date}
admin-notes-unbanned = Entbannt von {$admin} am {$date}
admin-notes-message-desc = [color=white]Seit deinem letzten Besuch auf diesem Server hast du { $count ->
    [1] eine Admin-Nachricht
    *[other] Admin-Nachrichten
} erhalten.[/color]
admin-notes-message-admin = Von [bold]{ $admin }[/bold], geschrieben am { TOSTRING($date, "f") }:
admin-notes-message-wait = Der Button wird in {$time} Sekunden aktiviert.
admin-notes-message-accept = Dauerhaft schließen
admin-notes-message-dismiss = Vorerst schließen
admin-notes-message-seen = Gesehen
admin-notes-banned-from = Gebannt von
admin-notes-the-server = dem Server
admin-notes-permanently = dauerhaft
admin-notes-days = {$days} Tage
admin-notes-hours = {$hours} Stunden
admin-notes-minutes = {$minutes} Minuten

# Note editor UI
admin-note-editor-title-new = Neue Admin-Notiz für {$player} erstellen
admin-note-editor-title-existing = Admin-Notiz {$id} für {$player} bearbeiten (Autor: {$author})
admin-note-editor-pop-out = Herauslösen
admin-note-editor-secret = Geheim?
admin-note-editor-secret-tooltip = Wenn aktiviert, ist die Notiz für den Spieler nicht sichtbar.
admin-note-editor-type-note = Notiz
admin-note-editor-type-message = Nachricht
admin-note-editor-type-watchlist = Watchlist
admin-note-editor-type-server-ban = Server-Ban
admin-note-editor-type-role-ban = Rollenban
admin-note-editor-severity-select = Auswählen
admin-note-editor-severity-none = Keine
admin-note-editor-severity-low = Niedrig
admin-note-editor-severity-medium = Mittel
admin-note-editor-severity-high = Hoch
admin-note-editor-expiry-checkbox = Dauerhaft?
admin-note-editor-expiry-checkbox-tooltip = Deaktivieren, damit die Notiz abläuft.
admin-note-editor-expiry-label = Läuft ab am:
admin-note-editor-expiry-label-params = Läuft ab am: {$date} (in {$expiresIn})
admin-note-editor-expiry-label-expired = Abgelaufen
admin-note-editor-expiry-placeholder = Verfallsdatum (JJJJ-MM-TT HH:mm:ss)
admin-note-editor-submit = Speichern
admin-note-editor-submit-confirm = Bist du sicher?

# Verb
admin-notes-verb-text = Admin-Notizen öffnen

# Watchlist and message login
admin-notes-watchlist = Watchlist für {$player}: {$message}
admin-notes-new-message = Du hast eine Admin-Nachricht von {$admin} erhalten: {$message}
admin-notes-fallback-admin-name = [System]

# Admin remarks
admin-remarks-command-description = Öffnet die Seite mit den Admin-Notizen
admin-remarks-command-error = Admin-Notizen wurden deaktiviert
admin-remarks-title = Admin-Notizen

# Misc
system-user = [System]
