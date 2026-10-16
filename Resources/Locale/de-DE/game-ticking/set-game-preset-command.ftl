# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Errant <35878406+Errant-4@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

set-game-preset-command-description = Legt die Spielvoreinstellung für die angegebene Anzahl der bevorstehenden Runden fest. Kann auch den Titel und die Beschreibung eines anderen Presets in der Lobby anzeigen, um Spieler zu täuschen.
set-game-preset-command-help-text = setgamepreset <id> [number of rounds, defaulting to 1] [decoy preset]
set-game-preset-command-hint-1 = <id>
set-game-preset-command-hint-2 = [number of rounds]
set-game-preset-command-hint-3 = [decoy preset]

set-game-preset-optional-argument-not-integer = Wenn Argument 2 angegeben wird, muss es eine Zahl sein.
set-game-preset-preset-error = Unfähig, Spiel Preset zu finden{$preset}"
set-game-preset-decoy-error = Wenn Argument 3 bereitgestellt wird, muss es eine gültige Voreinstellung sein. Unfähig, Spiel Preset zu finden{$preset}"

# set-game-preset-preset-set = Set game preset to "{$preset}"
set-game-preset-preset-set-finite = Setzen Sie das Spiel voreingestellt auf ""{$preset}„für den nächsten {$rounds} Rundungen.
set-game-preset-preset-set-finite-with-decoy = Setzen Sie das Spiel voreingestellt auf ""{$preset}„für den nächsten {$rounds} Runden, mit {$decoy} In der Lobby.
