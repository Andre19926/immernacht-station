# SPDX-FileCopyrightText: 2022 Aru Moon <anton17082003@gmail.com>
# SPDX-FileCopyrightText: 2022 Julian Giebel <juliangiebel@live.de>
# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 MishaUnity <81403616+MishaUnity@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Phill101 <28949487+Phill101@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Phill101 <holypics4@gmail.com>
# SPDX-FileCopyrightText: 2024 ArchRBX <5040911+ArchRBX@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Kot <1192090+koteq@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lapatison <100279397+lapatison@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Эдуард <36124833+Ertanic@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 deltanedas <39013340+deltanedas@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

device-pda-slot-component-slot-name-cartridge = Modul

default-program-name = Programm
notekeeper-program-name = Notekeeper
nano-task-program-name = NanoTask
news-read-program-name = Stationsnachrichten

crew-manifest-program-name = Crew-Manifest
crew-manifest-cartridge-loading = Lädt ...

net-probe-program-name = NetProbe
net-probe-scan = {$device} gescannt!
net-probe-label-name = Name
net-probe-label-address = Adresse
net-probe-label-frequency = Frequenz
net-probe-label-network = Netzwerk

log-probe-program-name = LogProbe
log-probe-scan = Protokolle von {$device} heruntergeladen!
log-probe-label-time = Zeit
log-probe-label-accessor = Abgerufen von
log-probe-label-number = #
log-probe-print-button = Protokolle drucken
log-probe-printout-device = Gescanntes Gerät: {$name}
log-probe-printout-header = Letzte Protokolle:
log-probe-printout-entry = #{$number} / {$time} / {$accessor}

astro-nav-program-name = AstroNav

med-tek-program-name = MedTek

# NanoTask cartridge

nano-task-ui-heading-high-priority-tasks =
    { $amount ->
        [zero] Keine Aufgaben mit hoher Priorität
        [one] 1 Aufgabe mit hoher Priorität
       *[other] {$amount} Aufgaben mit hoher Priorität
    }
nano-task-ui-heading-medium-priority-tasks =
    { $amount ->
        [zero] Keine Aufgaben mit mittlerer Priorität
        [one] 1 Aufgabe mit mittlerer Priorität
       *[other] {$amount} Aufgaben mit mittlerer Priorität
    }
nano-task-ui-heading-low-priority-tasks =
    { $amount ->
        [zero] Keine Aufgaben mit geringer Priorität
        [one] 1 Aufgabe mit niedriger Priorität
       *[other] {$amount} Aufgaben mit geringer Priorität
    }
nano-task-ui-done = Fertig
nano-task-ui-revert-done = Rückgängig
nano-task-ui-priority-low = Niedrig
nano-task-ui-priority-medium = Mittel
nano-task-ui-priority-high = Hoch
nano-task-ui-cancel = Abbrechen
nano-task-ui-print = Drucken
nano-task-ui-delete = Löschen
nano-task-ui-save = Speichern
nano-task-ui-new-task = Neue Aufgabe
nano-task-ui-description-label = Beschreibung:
nano-task-ui-description-placeholder = Besorg etwas Wichtiges
nano-task-ui-requester-label = Anfragender:
nano-task-ui-requester-placeholder = John Nanotrasen
nano-task-ui-item-title = Aufgabe bearbeiten
nano-task-printed-description = [bold]Beschreibung[/bold]: {$description}
nano-task-printed-requester = [bold]Antragsteller[/bold]: {$requester}
nano-task-printed-high-priority = [bold]Priorität[/bold]: [color=red]Hoch[/color]
nano-task-printed-medium-priority = [bold]Priorität[/bold]: Medium
nano-task-printed-low-priority = [bold]Priorität[/bold]: Niedrig

# Wanted list cartridge
wanted-list-program-name = Fahndungsliste
wanted-list-label-no-records = Alles klar, Cowboy
wanted-list-search-placeholder = Suche nach Name und Status

wanted-list-age-label = [color=darkgray]Alter:[/color] [color=white]{$age}[/color]
wanted-list-job-label = [color=darkgray]Tätigkeit:[/color] [color=white]{$job}[/color]
wanted-list-species-label = [color=darkgray]Art:[/color] [color=white]{$species}[/color]
wanted-list-gender-label = [color=darkgray]Geschlecht:[/color] [color=white]{$gender}[/color]

wanted-list-reason-label = [color=darkgray]Grund:[/color] [color=white]{$reason}[/color]
wanted-list-unknown-reason-label = unbekannter Grund

wanted-list-initiator-label = [color=darkgray]Auslöser:[/color] [color=white]{$initiator}[/color]
wanted-list-unknown-initiator-label = unbekannter Initiator

wanted-list-status-label = [color=darkgray]Status:[/color] {$status ->
        [suspected] [color=yellow]Verdacht[/color]
        [wanted] [color=red]gesucht[/color]
        [detained] [color=#b18644]in Gewahrsam[/color]
        [paroled] [color=green]auf Bewährung[/color]
        [discharged] [color=green]entlassen[/color]
        [hostile] [color=darkred]feindlich[/color]
        [eliminated] [color=gray]ausgeschaltet[/color]
        [search] [color=#33cccc]gesucht (Fahndung)[/color]
        [perma] [color=#343434]Perma[/color]
        [dangerous] [color=red]gefährlich[/color]
        [demote] [color=red]Degradierung[/color]
        *[other] keiner
    }

wanted-list-history-table-time-col = Zeit
wanted-list-history-table-reason-col = Verbrechen
wanted-list-history-table-initiator-col = Auslöser
