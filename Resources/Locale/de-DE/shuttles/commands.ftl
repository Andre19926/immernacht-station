# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# FTLdiskburner
cmd-ftldisk-desc = Erstellt eine FTL-Koordinatendiskette, um zur Karte zu segeln, auf der die angegebene EntityID ist/auf
cmd-ftldisk-help = ftldisk [EntityID]

cmd-ftldisk-no-transform = Stelle {$destination} Es gibt keine Transform-Komponente!
cmd-ftldisk-no-map = Stelle {$destination} Hat keine Karte!
cmd-ftldisk-no-map-comp = Stelle {$destination} Irgendwie auf der Karte {$map} ohne Kartenkomponente.
cmd-ftldisk-map-not-init = Stelle {$destination} ist auf der Karte {$map} Was nicht initialisiert ist! Überprüfen Sie es ist sicher zu initialisieren, dann initialisieren Sie die Karte zuerst oder die Spieler werden an Ort und Stelle stecken!
cmd-ftldisk-map-paused = Stelle {$desintation} ist auf der Karte {$map} die innegehalten wird! Bitte unterbrechen Sie zuerst die Karte oder die Spieler bleiben an Ort und Stelle.
cmd-ftldisk-planet = Stelle {$desintation} auf der Planetenkarte {$map} Es wird ein FTL-Punkt benötigt. Es kann bereits existieren.
cmd-ftldisk-already-dest-not-enabled = Stelle {$destination} ist auf der Karte {$map} das bereits eine FTLDestinationComponent hat, aber es ist nicht aktiviert! Stellen Sie dies manuell für die Sicherheit.
cmd-ftldisk-requires-ftl-point = Stelle {$destination} ist auf der Karte {$map} Das erfordert einen FTL-Punkt, um dorthin zu reisen! Es kann bereits existieren.

cmd-ftldisk-hint = Karte netID
