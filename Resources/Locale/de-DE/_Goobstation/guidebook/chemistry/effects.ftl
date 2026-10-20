# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Aviu00 <93730715+Aviu00@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

reagent-effect-guidebook-deal-stamina-damage = { $chance ->
        [1] { $deltasign ->
                [1] Verursacht
                *[-1] Heilt
            }
        *[other]
            { $deltasign ->
                [1] verursachen
                *[-1] heilen
            }
    } { $amount } { $immediate ->
                    [true] sofortigen
                    *[false] schleichenden
                  } Ausdauerschaden

reagent-effect-guidebook-stealth-entities = Tarnt lebende Wesen in der Nähe.

reagent-effect-guidebook-change-faction = Wechselt die Fraktion des Wesens zu {$faction}.

reagent-effect-guidebook-mutate-plants-nearby = Mutiert zufällig Pflanzen in der Nähe.

reagent-effect-guidebook-dnascramble = Verwürfelt die DNA der Person.

reagent-effect-guidebook-change-species = Verwandelt das Ziel in ein {$species}.

reagent-effect-guidebook-change-species-random = Verwandelt das Ziel in eine völlig zufällige Spezies.

reagent-effect-guidebook-sex-change = Vertauscht das Geschlecht der Person.

reagent-effect-guidebook-immunity-modifier = { $chance ->
        [1] Verändert
        *[other] verändern
    } die Immunitätsgewinnrate um {NATURALFIXED($gainrate, 5)} und die Stärke um {NATURALFIXED($strength, 5)} für mindestens {NATURALFIXED($time, 3)} Sekunden

reagent-effect-guidebook-disease-progress-change = { $chance ->
        [1] Verändert
        *[other] verändern
    } den Verlauf von {$type}-Krankheiten um {NATURALFIXED($amount, 5)}

reagent-effect-guidebook-disease-mutate = Verändert Krankheiten um {NATURALFIXED($amount, 4)}.
