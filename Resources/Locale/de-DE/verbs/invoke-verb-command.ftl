# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Localization used for the invoke verb command.
# Mostly help + error messages.

invoke-verb-command-description = Führt ein Verb mit dem angegebenen Namen auf einer Entity aus, mit der Spieler-Entity als Benutzer.
invoke-verb-command-help = invokeverb <playerUid | "self"> <targetUid> <verbName | "interaction" | "activation" | "alternative">

invoke-verb-command-invalid-args = invokeverb erwartet 2 Argumente.

invoke-verb-command-invalid-player-uid = Die Spieler-UID konnte nicht gelesen werden, oder „self“ wurde nicht angegeben.
invoke-verb-command-invalid-target-uid = Die Ziel-UID konnte nicht gelesen werden.

invoke-verb-command-invalid-player-entity = Die angegebene Spieler-UID gehört zu keiner gültigen Entity.
invoke-verb-command-invalid-target-entity = Die angegebene Ziel-UID gehört zu keiner gültigen Entity.

invoke-verb-command-success = Verb „{ $verb }“ auf { $target } mit { $player } als Benutzer ausgeführt.

invoke-verb-command-verb-not-found = Verb { $verb } auf { $target } nicht gefunden.
