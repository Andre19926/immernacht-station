# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# FTLdiskburner
cmd-ftldisk-desc = Erstellt eine FTL-Koordinatendiskette, um zu der Karte zu fliegen, auf der sich die angegebene EntityID befindet
cmd-ftldisk-help = ftldisk [EntityID]

cmd-ftldisk-no-transform = Entity {$destination} hat keine Transform-Komponente!
cmd-ftldisk-no-map = Entity {$destination} hat keine Karte!
cmd-ftldisk-no-map-comp = Entity {$destination} befindet sich irgendwie auf Karte {$map}, die keine Kartenkomponente hat.
cmd-ftldisk-map-not-init = Entity {$destination} befindet sich auf Karte {$map}, die nicht initialisiert ist! Prüfe, ob das gefahrlos möglich ist, und initialisiere die Karte zuerst, sonst stecken die Spieler fest!
cmd-ftldisk-map-paused = Entity {$desintation} befindet sich auf der Karte {$map}, die pausiert ist! Bitte hebe zuerst die Pause der Karte auf, sonst bleiben die Spieler an Ort und Stelle stecken.
cmd-ftldisk-planet = Entity {$desintation} befindet sich auf der Planetenkarte {$map} und benötigt einen FTL-Punkt. Er existiert möglicherweise bereits.
cmd-ftldisk-already-dest-not-enabled = Entity {$destination} befindet sich auf Karte {$map}, die bereits eine FTLDestinationComponent hat, aber nicht aktiviert ist! Setze das zur Sicherheit manuell.
cmd-ftldisk-requires-ftl-point = Entity {$destination} befindet sich auf Karte {$map}, für die ein FTL-Punkt zum Hinreisen nötig ist! Er existiert möglicherweise bereits.

cmd-ftldisk-hint = Karten-NetID
