# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 pathetic meowmeow <uhhadd@gmail.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

guidebook-microwave-ingredients-header = Zutaten
guidebook-microwave-cook-time-header = Kochzeit
guidebook-microwave-cook-time =
    { $time ->
        [0] Sofort
        [1] [bold]1[/bold] Sekunde
       *[other] [bold]{$time}[/bold] Sekunden
    }

guidebook-microwave-reagent-color-display = [color={$color}]■[/color]
guidebook-microwave-reagent-name-display = [bold]{$reagent}[/bold]
guidebook-microwave-reagent-quantity-display = × {$amount}u

guidebook-microwave-solid-name-display = [bold]{$ingredient}[/bold]
guidebook-microwave-solid-quantity-display = × {$amount}
