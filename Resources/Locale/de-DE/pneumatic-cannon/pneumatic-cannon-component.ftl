# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Loc for the pneumatic cannon.

pneumatic-cannon-component-itemslot-name = Gasbehälter

## Shown when trying to fire, but no gas

pneumatic-cannon-component-fire-no-gas = { CAPITALIZE(THE($cannon)) } Klicks, aber kein Gas kommt heraus.

## Shown when changing power.

pneumatic-cannon-component-change-power = { $power ->
    [High] Du stellst den Begrenzer auf maximale Leistung. Es fühlt sich ein bisschen zu mächtig an …
    [Medium] Du stellst den Begrenzer auf mittlere Leistung.
    *[Low] Du stellst den Begrenzer auf niedrige Leistung.
}

## Shown when being stunned by having the power too high.

pneumatic-cannon-component-power-stun = Die reine Kraft des { THE($cannon) } klopft dich um!

