# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

admin-explosion-eui-title = Spawnexplosionen

admin-explosion-eui-label-type = Explosionsart
admin-explosion-eui-label-mapid = Karten-ID
admin-explosion-eui-label-xmap = X (Karte)
admin-explosion-eui-label-ymap = Y (Karte)
admin-explosion-eui-label-current = Aktuelle Position
admin-explosion-eui-label-preview = Vorschau
admin-explosion-eui-label-total = Gesamtintensität
admin-explosion-eui-label-slope = Intensitätsgefälle
admin-explosion-eui-label-max = Maximale Intensität
admin-explosion-eui-label-directional = Gerichtet
admin-explosion-eui-label-angle = Winkel
admin-explosion-eui-label-spread = Ausbreitung
admin-explosion-eui-label-distance = Entfernung
admin-explosion-eui-label-spawn = Kabloom!

cmd-explosionui-desc = Öffnet ein Fenster für einen einfachen Zugang zur Zerstörung der Station.
cmd-explosionui-help = Verwendung: explosionui

cmd-explosion-desc = Erzeugt eine Explosion (Tschu-tschu, Bumm)
cmd-explosion-help = Verwendung: explosion [intensity] [slope] [maxIntensity] [x y] [mapId] [prototypeId]
cmd-explosion-failed-to-parse-intensity = Intensität konnte nicht gelesen werden: {$value}
cmd-explosion-failed-to-parse-float = Fließkommazahl konnte nicht gelesen werden: {$value}
cmd-explosion-failed-to-parse-coords = Koordinaten konnten nicht gelesen werden: {$value1} {$value2}
cmd-explosion-failed-to-parse-map-id = Karten-ID konnte nicht gelesen werden: {$value}
cmd-explosion-need-coords-explicit = Standardkoordinaten/-karte konnten nicht über die Transform des Spielers ermittelt werden. Bitte explizit angeben.
cmd-explosion-unknown-prototype = Unbekannter Explosionsprototyp: {$value}
cmd-explosion-no-prototypes = Der Prototype-Manager kennt keine Explosionsprototypen?
