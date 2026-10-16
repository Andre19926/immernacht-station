# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 username <113782077+whateverusername0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Aviu00 <93730715+Aviu00@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

armor-examine-stamina = - [color=cyan]Ausdauer[/color] Schadensminderung durch [color=lightblue]{$num}%[/color].

armor-examine-cancel-delayed-knockdown = - [color=green]Vollständig abbrechen[/color] Betäubungsstab verzögert Knockdown.

armor-examine-modify-delayed-knockdown-delay =
    - { $deltasign ->
          [1] [color=green]Erhöhungen[/color]
          *[-1] [color=red]Abnahme[/color]
      } stun baton delayed knockdown delay by [color=lightblue]{NATURALFIXED($amount, 2)} { $amount ->
          [1] zweite
          *[other] Sekunden
      }[/color].

armor-examine-modify-delayed-knockdown-time =
    - { $deltasign ->
          [1] [color=red]Erhöhungen[/color]
          *[-1] [color=green]Abnahme[/color]
      } stun baton delayed knockdown time by [color=lightblue]{NATURALFIXED($amount, 2)} { $amount ->
          [1] zweite
          *[other] Sekunden
      }[/color].
