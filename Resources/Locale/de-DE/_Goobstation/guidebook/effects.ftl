entity-effect-guidebook-modify-disgust = { $chance ->
        [1] { $deltasign ->
                [1] Erhöht
                *[-1] Senkt
            }
        *[other]
            { $deltasign ->
                [1] erhöhen
                *[-1] senken
            }
    } den Ekelwert um { $amount }
