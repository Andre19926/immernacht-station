# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-mapping-desc = Erstellen oder laden Sie eine Karte und teleportieren Sie dazu.
cmd-mapping-help = Verwendung: Mapping [MapID] [Path] [Grid]
cmd-mapping-server = Nur Spieler können diesen Befehl verwenden.
cmd-mapping-error = Beim Erstellen der neuen Karte ist ein Fehler aufgetreten.
cmd-mapping-try-grid = Die Datei konnte nicht als Karte geladen werden. Der Versuch, die Datei als Raster zu laden...
cmd-mapping-success-load = Erstellte uninitialisierte Karte aus Datei {$path} mit ID {$mapId}.
cmd-mapping-success-load-grid = Uninitialisiertes Raster aus Datei geladen {$path} auf eine neue Karte mit ID {$mapId}.
cmd-mapping-success = Erstellen einer uninitialisierten Karte mit ID {$mapId}.
cmd-mapping-warning = WARNUNG: Der Server verwendet einen Debug Build. Sie riskieren, Ihre Änderungen zu verlieren.


# duplicate text from engine load/save map commands.
# I CBF making this PR depend on that one.
cmd-mapping-failure-integer = {$arg} ist keine gültige Ganzzahl.
cmd-mapping-failure-float = {$arg} ist kein gültiger Float.
cmd-mapping-failure-bool = {$arg} Es ist kein gültiger bool.
cmd-mapping-nullspace = Sie können nicht in Karte 0 laden.
cmd-hint-mapping-id = [MapID]
cmd-mapping-hint-grid = [Grid]
cmd-hint-mapping-path = [Path]
cmd-mapping-exists = Karte {$mapId} bereits existiert.
