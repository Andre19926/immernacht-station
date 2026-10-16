# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Kira Bridgeton <161087999+Verbalase@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 KrasnoshchekovPavel <119816022+KrasnoshchekovPavel@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Steve <marlumpy@gmail.com>
# SPDX-FileCopyrightText: 2024 icekot8 <93311212+icekot8@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 marc-pelletier <113944176+marc-pelletier@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 potato1234_x <79580518+potato1234x@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648] Es hat mindestens {NATURALFIXED($min, 2)} Gesamtschaden
        *[other] { $min ->
                    [0] Es hat höchstens {NATURALFIXED($max, 2)} Gesamtschaden
                    *[other] Es hat zwischen {NATURALFIXED($min, 2)} und {NATURALFIXED($max, 2)} Gesamtschaden
                 }
    }

entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648] Es hat mindestens {NATURALFIXED($min, 2)} von {$type} Schäden
        *[other] { $min ->
                    [0] Es hat höchstens {NATURALFIXED($max, 2)} von {$type} Schäden
                    *[other] Es hat zwischen {NATURALFIXED($min, 2)} und {NATURALFIXED($max, 2)} von {$type} Schäden
                 }
    }

entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648] Es hat mindestens {NATURALFIXED($min, 2)} von {$type} Schäden.
        *[other] { $min ->
                    [0] Es hat höchstens {NATURALFIXED($max, 2)} von {$type} Schäden.
                    *[other] Es hat zwischen {NATURALFIXED($min, 2)} und {NATURALFIXED($max, 2)} von {$type} Schäden
                 }
    }

entity-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] Das Ziel hat mindestens {NATURALFIXED($min, 2)} Hunger insgesamt
        *[other] { $min ->
                    [0] Das Ziel hat höchstens {NATURALFIXED($max, 2)} Hunger insgesamt
                    *[other] Das Ziel hat zwischen {NATURALFIXED($min, 2)} und {NATURALFIXED($max, 2)} Hunger insgesamt
                 }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] Es gibt mindestens {NATURALFIXED($min, 2)}u von {$reagent}
        *[other] { $min ->
                    [0] Es gibt höchstens {NATURALFIXED($max, 2)}u von {$reagent}
                    *[other] Da ist zwischen {NATURALFIXED($min, 2)}u und {NATURALFIXED($max, 2)}u von {$reagent}
                 }
    }

entity-condition-guidebook-mob-state-condition =
    Der Mob ist { $state }

entity-condition-guidebook-job-condition =
    Die Aufgabe des Ziels ist { $job }

entity-condition-guidebook-solution-temperature =
    the solution's temperature is { $max ->
            [2147483648] mindestens {NATURALFIXED($min, 2)}k
            *[other] { $min ->
                        [0] höchstens {NATURALFIXED($max, 2)}k
                        *[other] zwischen {NATURALFIXED($min, 2)}k und {NATURALFIXED($max, 2)}k
                     }
    }

entity-condition-guidebook-body-temperature =
    the body's temperature is { $max ->
            [2147483648] mindestens {NATURALFIXED($min, 2)}k
            *[other] { $min ->
                        [0] höchstens {NATURALFIXED($max, 2)}k
                        *[other] zwischen {NATURALFIXED($min, 2)}k und {NATURALFIXED($max, 2)}k
                     }
    }

entity-condition-guidebook-organ-type =
    the metabolizing organ { $shouldhave ->
                                [true] ist
                                *[false] ist nicht
                           } {INDEFINITE($name)} {$name} Organ

entity-condition-guidebook-has-tag =
    the target { $invert ->
                 [true] hat nicht
                 *[false] hat
                } Der Tag {$tag}

entity-condition-guidebook-this-reagent = dieses Reagenz

# Goobstation?
entity-condition-guidebook-blood-reagent-threshold =
    { $max ->
        [2147483648] Es gibt mindestens {NATURALFIXED($min, 2)}u von {$reagent}
        *[other] { $min ->
                    [0] Es gibt höchstens {NATURALFIXED($max, 2)}u von {$reagent}
                    *[other] Da ist zwischen {NATURALFIXED($min, 2)}u und {NATURALFIXED($max, 2)}u von {$reagent}
                 }
    }
# Goobstation?

entity-condition-guidebook-breathing =
    the metabolizer is { $isBreathing ->
                [true] Atmung normal
                *[false] Ersticken
               }

entity-condition-guidebook-internals =
    the metabolizer is { $usingInternals ->
                [true] Verwendung von Einbauten
                *[false] Atmung atmosphärischer Luft
               }
