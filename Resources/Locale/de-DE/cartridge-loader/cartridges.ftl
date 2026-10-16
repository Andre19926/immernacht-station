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

device-pda-slot-component-slot-name-cartridge = Kartusche

default-program-name = Programm
notekeeper-program-name = Notekeeper
nano-task-program-name = NanoAufgabe
news-read-program-name = Station Nachrichten

crew-manifest-program-name = Manifest der Crew
crew-manifest-cartridge-loading = Beladung ...

net-probe-program-name = NetProbe
net-probe-scan = Gescannt {$device}!
net-probe-label-name = Name
net-probe-label-address = Anschrift
net-probe-label-frequency = Häufigkeit
net-probe-label-network = Netz

log-probe-program-name = LogProbe
log-probe-scan = Heruntergeladene Logs von {$device}!
log-probe-label-time = Uhrzeit
log-probe-label-accessor = Zugegriffen von
log-probe-label-number = #
log-probe-print-button = Druckprotokolle
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
        [zero] Keine mittleren Prioritätsaufgaben
        [one] 1 Mittlere Prioritätsaufgabe
       *[other] {$amount} Mittlere prioritäre Aufgaben
    }
nano-task-ui-heading-low-priority-tasks =
    { $amount ->
        [zero] Keine Aufgaben mit geringer Priorität
        [one] 1 Aufgabe mit niedriger Priorität
       *[other] {$amount} Aufgaben mit geringer Priorität
    }
nano-task-ui-done = Geschehen
nano-task-ui-revert-done = Undo
nano-task-ui-priority-low = niedrig
nano-task-ui-priority-medium = Medium
nano-task-ui-priority-high = hoch
nano-task-ui-cancel = Stornierung
nano-task-ui-print = Druck
nano-task-ui-delete = Löschung
nano-task-ui-save = Sparen
nano-task-ui-new-task = Neue Aufgabe
nano-task-ui-description-label = Beschreibung:
nano-task-ui-description-placeholder = Bekommen Sie etwas Wichtiges
nano-task-ui-requester-label = Antragsteller:
nano-task-ui-requester-placeholder = John Nanotrasen
nano-task-ui-item-title = Aufgabe bearbeiten
nano-task-printed-description = [bold]Beschreibung[/bold]: {$description}
nano-task-printed-requester = [bold]Antragsteller[/bold]: {$requester}
nano-task-printed-high-priority = [bold]Priorität[/bold]: [color=red]hoch[/color]
nano-task-printed-medium-priority = [bold]Priorität[/bold]: Medium
nano-task-printed-low-priority = [bold]Priorität[/bold]: niedrig

# Wanted list cartridge
wanted-list-program-name = Gesuchte Liste
wanted-list-label-no-records = Es ist in Ordnung, Cowboy
wanted-list-search-placeholder = Suche nach Name und Status

wanted-list-age-label = [color=darkgray]Alter:[/color] [color=white]{$age}[/color]
wanted-list-job-label = [color=darkgray]Tätigkeit:[/color] [color=white]{$job}[/color]
wanted-list-species-label = [color=darkgray]Art:[/color] [color=white]{$species}[/color]
wanted-list-gender-label = [color=darkgray]Geschlecht:[/color] [color=white]{$gender}[/color]

wanted-list-reason-label = [color=darkgray]Grund:[/color] [color=white]{$reason}[/color]
wanted-list-unknown-reason-label = unbekannter Grund

wanted-list-initiator-label = [color=darkgray]Initiator:[/color] [color=white]{$initiator}[/color]
wanted-list-unknown-initiator-label = unbekannter Initiator

wanted-list-status-label = [color=darkgray]status:[/color] {$status ->
        [suspected] [color=yellow]Verdacht[/color]
        [wanted] [color=red]gewollt[/color]
        [detained] [color=#b18644]Inhaftiert[/color]
        [paroled] [color=green]auf Bewährung[/color]
        [discharged] [color=green]entladen[/color]
        [hostile] [color=darkred]Feindschaft[/color]
        [eliminated] [color=gray]Ausscheiden[/color]
        [search] [color=#33cccc]Suche[/color]
        [perma] [color=#343434]Perma[/color]
        [dangerous] [color=red]gefährlich[/color]
        [demote] [color=red]Demot[/color]
        *[other] nicht
    }

wanted-list-history-table-time-col = Uhrzeit
wanted-list-history-table-reason-col = Verbrechen
wanted-list-history-table-initiator-col = Initiator
