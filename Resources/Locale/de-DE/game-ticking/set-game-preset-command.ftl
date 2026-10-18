# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Errant <35878406+Errant-4@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

set-game-preset-command-description = Legt die Spielvoreinstellung für die angegebene Anzahl der bevorstehenden Runden fest. Kann auch den Titel und die Beschreibung eines anderen Presets in der Lobby anzeigen, um Spieler zu täuschen.
set-game-preset-command-help-text = setgamepreset <id> [Anzahl der Runden, Standard: 1] [Täuschungs-Preset]
set-game-preset-command-hint-1 = <id>
set-game-preset-command-hint-2 = [number of rounds]
set-game-preset-command-hint-3 = [decoy preset]

set-game-preset-optional-argument-not-integer = Wenn Argument 2 angegeben wird, muss es eine Zahl sein.
set-game-preset-preset-error = Spielmodus „{$preset}“ nicht gefunden
set-game-preset-decoy-error = Wenn Argument 3 angegeben wird, muss es ein gültiger Spielmodus sein. Spielmodus „{$preset}“ nicht gefunden

# set-game-preset-preset-set = Set game preset to "{$preset}"
set-game-preset-preset-set-finite = Spielmodus „{$preset}“ für die nächsten {$rounds} Runden festgelegt.
set-game-preset-preset-set-finite-with-decoy = Spielmodus „{$preset}“ für die nächsten {$rounds} Runden festgelegt; in der Lobby wird {$decoy} angezeigt.
