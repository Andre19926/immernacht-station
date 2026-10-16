# SPDX-FileCopyrightText: 2022 LittleBuilderJane <63973502+LittleBuilderJane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Myctai <108953437+Myctai@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <metalgearsloth@gmail.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 MilenVolf <63782763+MilenVolf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 strO0pwafel <153459934+strO0pwafel@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Commands
## Delay shuttle round end
cmd-delayroundend-desc = Stoppt den Timer, der die Runde beendet, wenn das Notfall-Shuttle den Hyperraum verlässt.
cmd-delayroundend-help = Nutzung: delayroundend
emergency-shuttle-command-round-yes = Runde verzögert.
emergency-shuttle-command-round-no = Das runde Ende kann nicht verzögert werden.

## Dock emergency shuttle
cmd-dockemergencyshuttle-desc = Ruft das Notfall-Shuttle an und andockt es an die Station ... wenn es kann.
cmd-dockemergencyshuttle-help = Nutzung: dockemergencyshuttle

## Launch emergency shuttle
cmd-launchemergencyshuttle-desc = Startet das Notfall-Shuttle, wenn möglich.
cmd-launchemergencyshuttle-help = Nutzung: launchemergencyshuttle

# Emergency shuttle
emergency-shuttle-left = Das Emergency Shuttle hat die Station verlassen. Schätzung {$transitTime} Sekunden, bis der Shuttle bei CentComm ankommt.
emergency-shuttle-launch-time = Das Notfall-Shuttle startet in {$consoleAccumulator} Sekunden.
emergency-shuttle-docked = Das Emergency Shuttle hat angedockt {$direction} des Bahnhofs, {$location}Es wird in {$time} Sekunden.{$extended}
emergency-shuttle-good-luck = Das Emergency Shuttle kann keine Station finden. Viel Glück.
emergency-shuttle-nearby = Das Emergency Shuttle kann keinen gültigen Docking-Port finden. Es hat sich in {$direction} des Bahnhofs, {$location}Es wird in {$time} Sekunden.{$extended}
emergency-shuttle-extended = {" "}Die Startzeit wurde aufgrund unbequemer Umstände verlängert.

# Emergency shuttle console popup / announcement
emergency-shuttle-console-no-early-launches = Early Launch ist deaktiviert
emergency-shuttle-console-auth-left = {$remaining} Genehmigungen erforderlich, bis das Shuttle frühzeitig gestartet wird.
emergency-shuttle-console-auth-revoked = vorzeitige Startgenehmigung widerrufen, {$remaining} Genehmigungen erforderlich.
emergency-shuttle-console-denied = Zugang verweigert

# UI
emergency-shuttle-console-window-title = Emergency Shuttle Konsole
emergency-shuttle-ui-engines = VORSCHRIFTEN
emergency-shuttle-ui-idle = Idle
emergency-shuttle-ui-repeal-all = Aufhebung aller
emergency-shuttle-ui-early-authorize = Early Launch Authorization
emergency-shuttle-ui-authorize = BEHÖRDE
emergency-shuttle-ui-repeal = AUFHEBUNG
emergency-shuttle-ui-authorizations = Genehmigungen
emergency-shuttle-ui-remaining = Verbleibend: {$remaining}

# Map Misc.
map-name-centcomm = CentComm
map-name-terminal = Ankunftsterminal
