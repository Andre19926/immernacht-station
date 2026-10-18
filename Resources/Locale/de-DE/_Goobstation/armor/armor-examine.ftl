# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 username <113782077+whateverusername0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Aviu00 <93730715+Aviu00@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

armor-examine-stamina = - [color=cyan]Ausdauer[/color]schaden um [color=lightblue]{$num}%[/color] verringert.

armor-examine-cancel-delayed-knockdown = - [color=green]Verhindert vollständig[/color] den verzögerten Niederschlag durch Betäubungsstäbe.

armor-examine-modify-delayed-knockdown-delay =
    - { $deltasign ->
          [1] [color=green]Erhöht[/color]
          *[-1] [color=red]Senkt[/color]
      } die Verzögerung des verzögerten Niederschlags von Betäubungsstäben um [color=lightblue]{NATURALFIXED($amount, 2)} { $amount ->
          [1] Sekunde
          *[other] Sekunden
      }[/color].

armor-examine-modify-delayed-knockdown-time =
    - { $deltasign ->
          [1] [color=red]Erhöht[/color]
          *[-1] [color=green]Senkt[/color]
      } die Dauer des verzögerten Niederschlags von Betäubungsstäben um [color=lightblue]{NATURALFIXED($amount, 2)} { $amount ->
          [1] Sekunde
          *[other] Sekunden
      }[/color].
