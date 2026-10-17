# SPDX-FileCopyrightText: 2024 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Simon <63975668+Simyon264@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Loading Screen

replay-loading = Lädt ({$cur}/{$total})
replay-loading-reading = Lesedateien
replay-loading-processing = Verarbeitungsdateien
replay-loading-spawning = Laichereinrichtungen
replay-loading-initializing = Initialisierung von Entitäten
replay-loading-starting= Gründungsgesellschaften
replay-loading-failed = Fehlgeschlagen, Replay zu laden. Fehler:
                        {$reason}
replay-loading-retry = Versuche, mit mehr Ausnahmetoleranz zu laden - KÖNNEN KAUFEN!
replay-loading-cancel = Abbrechen

# Main Menu
replay-menu-subtext = Replay-Client
replay-menu-load = Load Selected Replay
replay-menu-select = Wähle ein Replay
replay-menu-open = Open Replay Ordner
replay-menu-none = Keine Wiederholungen gefunden.

# Main Menu Info Box
replay-info-title = Angaben zur Wiedergabe
replay-info-none-selected = Keine Wiederholung ausgewählt
replay-info-invalid = [color=red]Ungültige Wiederholung ausgewählt[/color]
replay-info-info = {"["}color=gray]Ausgewählt:[/color]  {$name} ({$file})
    {"["}color=gray]Zeit:[/color]   {$time}
    {"["}color=gray]Runden-ID:[/color]   {$roundId}
    {"["}color=gray]Dauer:[/color]   {$duration}
    {"["}color=gray]ForkId:[/color]   {$forkId}
    {"["}color=gray]Version:[/color]   {$version}
    {"["}color=gray]Engine:[/color]   {$engVersion}
    {"["}color=gray]Type Hash:[/color]   {$hash}
    {"["}color=gray]Comp Hash:[/color]   {$compHash}

# Replay selection window
replay-menu-select-title = Wähle Replay

# Replay related verbs
replay-verb-spectate = Spektat

# command
cmd-replay-spectate-help = Verwendung: replay_spectate [optional entity]
cmd-replay-spectate-desc = Hängt den lokalen Spieler an eine bestimmte Entity-UID an oder löst ihn davon.
cmd-replay-spectate-hint = Fakultative EntityUid

