# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = Erlauben Sie einem Benutzer vorübergehend, regelmäßige Verbindungsüberprüfungen zu umgehen.
cmd-grant_connect_bypass-help = Nutzung: grant connect bypass <user> [duration minutes]
    Ein Benutzer erhält vorübergehend die Möglichkeit, regelmäßige Verbindungsbeschränkungen zu umgehen.
    Der Bypass gilt nur für diesen Spielserver und läuft standardmäßig nach 1 Stunde ab.
    Sie können unabhängig von whitelist, panikbunker oder spielerkappe beitreten.

cmd-grant_connect_bypass-arg-user = <Benutzer>
cmd-grant_connect_bypass-arg-duration = [duration minutes]

cmd-grant_connect_bypass-invalid-args = Erwartete 1 oder 2 Argumente
cmd-grant_connect_bypass-unknown-user = Unfähig Benutzer zu finden{$user}'
cmd-grant_connect_bypass-invalid-duration = Ungültige Dauer{$duration}'

cmd-grant_connect_bypass-success = Erfolgreich hinzugefügt Bypass für Benutzer '{$user}'
