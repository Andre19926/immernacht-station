# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Localization used for the invoke verb command.
# Mostly help + error messages.

invoke-verb-command-description = Ruft ein Verb mit dem Vornamen auf einer Entität auf, mit der Spielerentität
invoke-verb-command-help = callingverb <playerUid | "self"> <targetUid> <verbName | "interaction" | "active" | "alternative">

invoke-verb-command-invalid-args = vokverb nimmt 2 Argumente.

invoke-verb-command-invalid-player-uid = Spieler uid konnte nicht analysiert werden, oder "selbst" wurde nicht übergeben.
invoke-verb-command-invalid-target-uid = Ziel-UID konnte nicht analysiert werden.

invoke-verb-command-invalid-player-entity = Die gegebene Spieler-Uid entspricht nicht einer gültigen Entität.
invoke-verb-command-invalid-target-entity = Target uid given entspricht nicht einer gültigen Entität.

invoke-verb-command-success = Beschworenes Verb{ $verb }„ am { $target } mit { $player } als Benutzer.

invoke-verb-command-verb-not-found = Konnte kein Verb finden { $verb } am { $target }.
