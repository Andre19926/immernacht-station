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
emergency-shuttle-command-round-no = Das Rundenende kann nicht verzögert werden.

## Dock emergency shuttle
cmd-dockemergencyshuttle-desc = Ruft das Notfall-Shuttle und dockt es an die Station an ... wenn möglich.
cmd-dockemergencyshuttle-help = Nutzung: dockemergencyshuttle

## Launch emergency shuttle
cmd-launchemergencyshuttle-desc = Startet das Notfall-Shuttle vorzeitig, wenn möglich.
cmd-launchemergencyshuttle-help = Nutzung: launchemergencyshuttle

# Emergency shuttle
emergency-shuttle-left = Das Notfall-Shuttle hat die Station verlassen. Voraussichtlich erreicht es CentComm in {$transitTime} Sekunden.
emergency-shuttle-launch-time = Das Notfall-Shuttle startet in {$consoleAccumulator} Sekunden.
emergency-shuttle-docked = Das Notfall-Shuttle hat {$direction} der Station angedockt, {$location}. Es startet in {$time} Sekunden.{$extended}
emergency-shuttle-good-luck = Das Notfall-Shuttle findet keine Station. Viel Glück.
emergency-shuttle-nearby = Das Notfall-Shuttle findet keinen gültigen Andockpunkt. Es ist {$direction} der Station aufgetaucht, {$location}. Es startet in {$time} Sekunden.{$extended}
emergency-shuttle-extended = {" "}Die Startzeit wurde aufgrund unbequemer Umstände verlängert.

# Emergency shuttle console popup / announcement
emergency-shuttle-console-no-early-launches = Früher Start ist deaktiviert
emergency-shuttle-console-auth-left = Noch {$remaining} Freigaben nötig, bis das Shuttle früh startet.
emergency-shuttle-console-auth-revoked = Freigabe für den frühen Start widerrufen, noch {$remaining} Freigaben nötig.
emergency-shuttle-console-denied = Zugang verweigert

# UI
emergency-shuttle-console-window-title = Notfall-Shuttle-Konsole
emergency-shuttle-ui-engines = TRIEBWERKE:
emergency-shuttle-ui-idle = Leerlauf
emergency-shuttle-ui-repeal-all = Alle widerrufen
emergency-shuttle-ui-early-authorize = Freigabe für frühen Start
emergency-shuttle-ui-authorize = FREIGEBEN
emergency-shuttle-ui-repeal = WIDERRUFEN
emergency-shuttle-ui-authorizations = Freigaben
emergency-shuttle-ui-remaining = Verbleibend: {$remaining}

# Map Misc.
map-name-centcomm = CentComm
map-name-terminal = Ankunftsterminal
