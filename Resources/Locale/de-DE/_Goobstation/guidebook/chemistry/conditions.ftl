reagent-effect-condition-guidebook-stamina-damage-threshold = { $max ->
        [2147483648] das Ziel mindestens {NATURALFIXED($min, 2)} Ausdauerschaden hat
        *[other] { $min ->
                    [0] das Ziel höchstens {NATURALFIXED($max, 2)} Ausdauerschaden hat
                    *[other] das Ziel zwischen {NATURALFIXED($min, 2)} und {NATURALFIXED($max, 2)} Ausdauerschaden hat
                 }
    }
reagent-effect-condition-guidebook-unique-bloodstream-chem-threshold = { $max ->
        [2147483648] { $min ->
                        [1] mindestens {$min} Reagenz vorhanden ist
                        *[other] mindestens {$min} Reagenzien vorhanden sind
                     }
        [1] { $min ->
               [0] höchstens {$max} Reagenz vorhanden ist
               *[other] zwischen {$min} und {$max} Reagenzien vorhanden sind
            }
        *[other] { $min ->
                    [-1] höchstens {$max} Reagenzien vorhanden sind
                    *[other] zwischen {$min} und {$max} Reagenzien vorhanden sind
                 }
    }
reagent-effect-condition-guidebook-typed-damage-threshold = { $inverse ->
        [true] das Ziel höchstens
        *[false] das Ziel mindestens
    } { $changes } Schaden hat
