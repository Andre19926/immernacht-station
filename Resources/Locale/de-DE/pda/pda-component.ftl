# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Alex Evgrashin <aevgrashin@yandex.ru>
# SPDX-FileCopyrightText: 2022 TheDarkElites <73414180+TheDarkElites@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 ike709 <ike709@github.com>
# SPDX-FileCopyrightText: 2022 ike709 <ike709@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <comedian_vs_clown@hotmail.com>
# SPDX-FileCopyrightText: 2023 Chronophylos <nikolai@chronophylos.com>
# SPDX-FileCopyrightText: 2023 Daniil Sikinami <60344369+VigersRay@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 Julian Giebel <juliangiebel@live.de>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later


### UI

# For the PDA screen
comp-pda-ui = ID: [color=white]{$owner}[/color], [color=yellow]{$jobTitle}[/color]

comp-pda-ui-blank = ID:

comp-pda-ui-owner = Eigentümer: [color=white]{$actualOwnerName}[/color]

comp-pda-io-program-list-button = Programme

comp-pda-io-settings-button = Einstellungen

comp-pda-io-program-fallback-title = Programm

comp-pda-io-no-programs-available = Keine Programme verfügbar

pda-bound-user-interface-show-uplink-title = Open Uplink
pda-bound-user-interface-show-uplink-description = Zugriff auf Ihren Uplink

pda-bound-user-interface-lock-uplink-title = Lock Uplink
pda-bound-user-interface-lock-uplink-description = Verhindern Sie, dass jemand ohne Code auf Ihren Uplink zugreift

comp-pda-ui-menu-title = PDA

comp-pda-ui-footer = Persönlicher digitaler Assistent

comp-pda-ui-station = Station: [color=white]{$station}[/color]

comp-pda-ui-station-alert-level = Alarmstufe: [color={ $color }]{ $level }[/color]

comp-pda-ui-station-alert-level-instructions = Anweisungen: [color=white]{ $instructions }[/color]

comp-pda-ui-station-time = Schaltdauer: [color=white]{ $time }[/color]

comp-pda-ui-eject-id-button = Auswurf-ID

comp-pda-ui-eject-pen-button = Kugelschreiber

comp-pda-ui-ringtone-button = Rington

comp-pda-ui-ringtone-button-description = Ändern Sie den Klingelton Ihres PDA

comp-pda-ui-toggle-flashlight-button = Taschenlampe

pda-bound-user-interface-music-button = Musikinstrument

pda-bound-user-interface-music-button-description = Musik auf Ihrem PDA abspielen

comp-pda-ui-unknown = Unbekannt

comp-pda-ui-unassigned = Nicht zugewiesen

pda-notification-message = [font size=12][bold]PDA[/bold] { $header }: [/font]
    "{ $message }"
