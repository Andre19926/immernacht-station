# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

limited-charges-charges-remaining = {$charges ->
    [one] Es hat [color=fuchsia]{$charges}[/color] verbleibende Ladung.
    *[other] Es hat [color=fuchsia]{$charges}[/color] verbleibende Ladungen.
}

limited-charges-max-charges = Es hat die [color=green]maximale[/color] Anzahl an Ladungen.
limited-charges-recharging = {$seconds ->
    [one] Noch [color=yellow]{$seconds}[/color] Sekunde bis zur nächsten Ladung.
    *[other] Noch [color=yellow]{$seconds}[/color] Sekunden bis zur nächsten Ladung.
}
