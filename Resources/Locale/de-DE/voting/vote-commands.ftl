# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Voting system related console commands

## 'createvote' command

cmd-createvote-desc = Erzeugt eine Abstimmung
cmd-createvote-help = Verwendung: createvote <'restart'|'preset'|'map'>
cmd-createvote-cannot-call-vote-now = Du kannst gerade keine Abstimmung starten!
cmd-createvote-invalid-vote-type = Art der ungültigen Abstimmung
cmd-createvote-arg-vote-type = <Abstimmungstyp>

## 'customvote' command

cmd-customvote-desc = Erstellen einer Custom Vote
cmd-customvote-help = Verwendung: customvote <title> <option1> <option2> [option3...]
cmd-customvote-on-finished-tie = Die Abstimmung '{$title}' ist beendet: Gleichstand zwischen {$ties}!
cmd-customvote-on-finished-win = Die Abstimmung '{$title}' ist beendet: {$winner} gewinnt!
cmd-customvote-arg-title = <title>
cmd-customvote-arg-option-n = <Option{ $n }>

## 'vote' command

cmd-vote-desc = Abstimmungen über eine aktive Abstimmung
cmd-vote-help = vote <voteId> <option>
cmd-vote-cannot-call-vote-now = Du kannst gerade keine Abstimmung starten!
cmd-vote-on-execute-error-must-be-player = Muss ein Spieler sein
cmd-vote-on-execute-error-invalid-vote-id = ID der ungültigen Stimme
cmd-vote-on-execute-error-invalid-vote-options = Ungültige Wahloptionen
cmd-vote-on-execute-error-invalid-vote = Ungültige Abstimmung
cmd-vote-on-execute-error-invalid-option = Ungültige Option

## 'listvotes' command

cmd-listvotes-desc = Listen der derzeit aktiven Stimmen
cmd-listvotes-help = Verwendung: listvotes

## 'cancelvote' command

cmd-cancelvote-desc = Absagen einer aktiven Abstimmung
cmd-cancelvote-help = Verwendung: cancelvote <id>
                      Dich können die ID vom Befehl listvotes erhalten.
cmd-cancelvote-error-invalid-vote-id = ID der ungültigen Stimme
cmd-cancelvote-error-missing-vote-id = Fehlende ID
cmd-cancelvote-arg-id = <id>
