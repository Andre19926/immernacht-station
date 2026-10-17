# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Sailor <109166122+Equivocateur@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 mhamster <81412348+mhamsterr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 Eris <eris@erisws.com>
# SPDX-FileCopyrightText: 2024 Flesh <62557990+PolterTzi@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Gotimanga <127038462+Gotimanga@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Steve <marlumpy@gmail.com>
# SPDX-FileCopyrightText: 2024 Zonespace <41448081+Zonespace27@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 alex-georgeff <54858069+taurie@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 marc-pelletier <113944176+marc-pelletier@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 slarticodefast <161409025+slarticodefast@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 SX-7 <92227810+SX-7@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

-create-3rd-person =
    { $chance ->
        [1] Erzeugt
        *[other] erzeugen
    }

-cause-3rd-person =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    }

-satiate-3rd-person =
    { $chance ->
        [1] Stillt
        *[other] stillen
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] Erzeugt
        *[other] erzeugen
    } { $amount ->
        [1] {$entname}
        *[other] {$amount} {MAKEPLURAL($entname)}
    }

entity-effect-guidebook-destroy =
    { $chance ->
        [1] Zerstört
        *[other] zerstören
    } das Objekt

entity-effect-guidebook-break =
    { $chance ->
        [1] Zerbricht
        *[other] zerbrechen
    } das Objekt

entity-effect-guidebook-explosion =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } eine Explosion

entity-effect-guidebook-emp =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } einen elektromagnetischen Impuls

entity-effect-guidebook-flash =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } einen Blendblitz

entity-effect-guidebook-foam-area =
    { $chance ->
        [1] Erzeugt
        *[other] erzeugen
    } große Mengen Schaum

entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] Erzeugt
        *[other] erzeugen
    } große Mengen Rauch

entity-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] Stillt
        *[other] stillen
    } { $relative ->
        [1] den Durst durchschnittlich
        *[other] den Durst mit dem {NATURALFIXED($relative, 3)}-Fachen der durchschnittlichen Rate
    }

entity-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] Stillt
        *[other] stillen
    } { $relative ->
        [1] den Hunger durchschnittlich
        *[other] den Hunger mit dem {NATURALFIXED($relative, 3)}-Fachen der durchschnittlichen Rate
    }

entity-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] Heilt
                [deals] Verursacht
                *[both] Verändert die Gesundheit um
             }
        *[other] { $healsordeals ->
                    [heals] heilen
                    [deals] verursachen
                    *[both] verändern die Gesundheit um
                 }
    } { $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
        [1] { $healsordeals ->
            [heals] Heilt gleichmäßig
            [deals] Verursacht gleichmäßig
            *[both] Verändert die Gesundheit gleichmäßig um
        }
        *[other] { $healsordeals ->
            [heals] gleichmäßig heilen
            [deals] gleichmäßig verursachen
            *[both] gleichmäßig die Gesundheit verändern um
        }
    } { $changes }

entity-effect-guidebook-status-effect-old =
    { $type ->
        [update]{ $chance ->
        [1] Verursacht
        *[other] verursachen
    } {LOC($key)} für mindestens {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
        [add]   { $chance ->
        [1] Verursacht
        *[other] verursachen
    } {LOC($key)} für mindestens {NATURALFIXED($time, 3)} Sekunden mit Kumulierung
        [set]  { $chance ->
        [1] Verursacht
        *[other] verursachen
    } {LOC($key)} für {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
        *[remove]{ $chance ->
        [1] Entfernt
        *[other] entfernen
    } {NATURALFIXED($time, 3)} Sekunden von {LOC($key)}
    }

entity-effect-guidebook-status-effect =
    { $type ->
    [update]{ $chance ->
        [1] Verursacht
        *[other] verursachen
    } {$key} für mindestens {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
    [add]   { $chance ->
        [1] Verursacht
        *[other] verursachen
    } {$key} für mindestens {NATURALFIXED($time, 3)} Sekunden mit Kumulierung
    [set]  { $chance ->
        [1] Verursacht
        *[other] verursachen
    } {$key} für mindestens {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
    *[remove]{ $chance ->
        [1] Entfernt
        *[other] entfernen
    } {NATURALFIXED($time, 3)} Sekunden von {$key}
        } { $delay ->
    [0] sofort
    *[other] nach {NATURALFIXED($delay, 3)} Sekunden Verzögerung
        }

reagent-effect-guidebook-status-effect-delay =
    { $type ->
        [add]   { $chance ->
        [1] Verursacht
        *[other] verursachen
    } {LOC($key)} für mindestens {NATURALFIXED($time, 3)} Sekunden mit Kumulierung
        *[set]  { $chance ->
        [1] Verursacht
        *[other] verursachen
    } {LOC($key)} für mindestens {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
        [remove]{ $chance ->
        [1] Entfernt
        *[other] entfernen
    } {NATURALFIXED($time, 3)} Sekunden von {LOC($key)}
    } nach {NATURALFIXED($delay, 3)} Sekunden Verzögerung

entity-effect-guidebook-status-effect-indef =
    { $type ->
    [update]{ $chance ->
        [1] Verursacht
        *[other] verursachen
    } dauerhaft {$key}
    [add]   { $chance ->
        [1] Verursacht
        *[other] verursachen
    } dauerhaft {$key}
    [set]  { $chance ->
        [1] Verursacht
        *[other] verursachen
    } dauerhaft {$key}
    *[remove]{ $chance ->
        [1] Entfernt
        *[other] entfernen
    } {$key}
        } { $delay ->
    [0] sofort
    *[other] nach {NATURALFIXED($delay, 3)} Sekunden Verzögerung
        }

entity-effect-guidebook-knockdown =
    { $type ->
        [update]{ $chance ->
        [1] Verursacht
        *[other] verursachen
    } Niederschlag für mindestens {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
        [add]   { $chance ->
        [1] Verursacht
        *[other] verursachen
    } Niederschlag für mindestens {NATURALFIXED($time, 3)} Sekunden mit Kumulierung
        *[set]  { $chance ->
        [1] Verursacht
        *[other] verursachen
    } Niederschlag für mindestens {NATURALFIXED($time, 3)} Sekunden ohne Kumulierung
        [remove]{ $chance ->
        [1] Entfernt
        *[other] entfernen
    } {NATURALFIXED($time, 3)} Sekunden Niederschlag
    }

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Setzt
        *[other] setzen
    } die Temperatur der Lösung auf genau {NATURALFIXED($temperature, 2)}k

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] Führt
                *[-1] Entzieht
            }
        *[other]
            { $deltasign ->
                [1] führen
                *[-1] entziehen
            }
    } Wärme { $deltasign ->
                [1] zu
                *[-1] von
           } der Lösung, bis sie { $deltasign ->
                [1] höchstens {NATURALFIXED($maxtemp, 2)}k
                *[-1] mindestens {NATURALFIXED($mintemp, 2)}k
            } erreicht

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] Fügt
                *[-1] Entfernt
            }
        *[other]
            { $deltasign ->
                [1] fügen
                *[-1] entfernen
            }
    } {NATURALFIXED($amount, 2)}u {$reagent} { $deltasign ->
        [1] der Lösung hinzu
        *[-1] aus der Lösung
    }

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] Fügt
                *[-1] Entfernt
            }
        *[other]
            { $deltasign ->
                [1] fügen
                *[-1] entfernen
            }
    } {NATURALFIXED($amount, 2)}u Reagenzien der Gruppe {$group} { $deltasign ->
            [1] der Lösung hinzu
            *[-1] aus der Lösung
        }

entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] Führt
                *[-1] Entzieht
            }
        *[other]
            { $deltasign ->
                [1] führen
                *[-1] entziehen
            }
    } {POWERJOULES($amount)} Wärme { $deltasign ->
            [1] dem Körper zu
            *[-1] dem Körper
        }, in dem es sich befindet

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } die Krankheit { $disease }

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } die Krankheiten { $diseases }

entity-effect-guidebook-jittering =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } Zittern

entity-effect-guidebook-clean-bloodstream =
    { $chance ->
        [1] Reinigt
        *[other] reinigen
    } den Blutkreislauf von anderen Chemikalien

entity-effect-guidebook-cure-disease =
    { $chance ->
        [1] Heilt
        *[other] heilen
    } Krankheiten

entity-effect-guidebook-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Verursacht
                *[-1] Heilt
            }
        *[other]
            { $deltasign ->
                [1] verursachen
                *[-1] heilen
            }
    } Augenschaden

entity-effect-guidebook-vomit =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } Erbrechen

entity-effect-guidebook-create-gas =
    { $chance ->
        [1] Erzeugt
        *[other] erzeugen
    } { $moles } { $moles ->
        [1] Mol
        *[other] Mol
    } { $gas }

entity-effect-guidebook-drunk =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } Trunkenheit

entity-effect-guidebook-electrocute =
    { $chance ->
        [1] Elektrisiert
        *[other] elektrisieren
    } den Metabolisierer für {NATURALFIXED($time, 3)} Sekunden

entity-effect-guidebook-emote =
    { $chance ->
        [1] Zwingt
        *[other] zwingen
    } den Metabolisierer zu [bold][color=white]{$emote}[/color][/bold]

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Löscht
        *[other] löschen
    } Feuer

entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] Erhöht
        *[other] erhöhen
    } die Entzündlichkeit

entity-effect-guidebook-ignite =
    { $chance ->
        [1] Entzündet
        *[other] entzünden
    } den Metabolisierer

entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] Verleiht
        *[other] verleihen
    } dem Metabolisierer Bewusstsein

entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Verwandelt
        *[other] verwandeln
    } den Metabolisierer in { $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] Verstärkt
                *[-1] Verringert
            }
        *[other]
            { $deltasign ->
                [1] verstärken
                *[-1] verringern
            }
    } Blutungen

entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] Erhöht
                *[-1] Senkt
            }
        *[other]
            { $deltasign ->
                [1] erhöhen
                *[-1] senken
            }
    } den Blutspiegel

entity-effect-guidebook-paralyze =
    { $chance ->
        [1] Lähmt
        *[other] lähmen
    } den Metabolisierer für mindestens {NATURALFIXED($time, 3)} Sekunden

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Verändert
        *[other] verändern
    } die Bewegungsgeschwindigkeit für mindestens {NATURALFIXED($time, 3)} Sekunden um das {NATURALFIXED($sprintspeed, 3)}-Fache

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Hält
        *[other] halten
    } Narkolepsie vorübergehend in Schach

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Wäscht
        *[other] waschen
    } Sahnetorte aus dem Gesicht

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Heilt
        *[other] heilen
    } eine laufende Zombie-Infektion

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } bei einer Person die Zombie-Infektion

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Heilt
        *[other] heilen
    } eine laufende Zombie-Infektion und verleiht Immunität gegen künftige Infektionen

entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Regeneriert
        *[other] regenerieren
    } {NATURALFIXED($time, 3)} Sekunden Verwesung

entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    } eine Rauch- oder Schaumreaktion für {NATURALFIXED($duration, 3)} Sekunden

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] Verursacht
        *[other] verursachen
    }, dass {$reagent} dem internen Lösungsbehälter hinzugefügt wird

entity-effect-guidebook-artifact-unlock =
    { $chance ->
            [1] Hilft
            *[other] helfen
        } beim Freischalten eines Alien-Artefakts.

entity-effect-guidebook-artifact-durability-restore =
    Stellt {$restored} Haltbarkeit in aktiven Alien-Artefaktknoten wieder her.

entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] Verändert
        *[other] verändern
    } {$attribute} um {$positive ->
    [true] [color=red]{$amount}[/color]
    *[false] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] Verjüngt
        *[other] verjüngen
    } die Pflanze, abhängig von ihrem Alter und der Wachstumszeit

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] Stellt
        *[other] stellen
    } die Lebensfähigkeit einer durch Mutation lebensunfähig gewordenen Pflanze wieder her

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] Erhöht
        *[other] erhöhen
    } Lebensdauer und/oder Grundgesundheit der Pflanze mit je 10 % Wahrscheinlichkeit

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] Erhöht
        *[other] erhöhen
    } die Potenz der Pflanze um {$increase} bis zu einem Maximum von {$limit}. Die Pflanze verliert ihre Samen, sobald die Potenz {$seedlesstreshold} erreicht. Der Versuch, die Potenz über {$limit} zu erhöhen, kann mit 10 % Wahrscheinlichkeit den Ertrag verringern

entity-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] Stellt die
        *[other] stellen die
    } Samen der Pflanze wieder her

entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] Entfernt die
        *[other] entfernen die
    } Samen der Pflanze

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] Mutiert
        *[other] mutieren
    } eine Pflanze so, dass sie {$name} produziert

reagent-effect-guidebook-add-to-chemicals =
    { $chance ->
        [1] { $deltasign ->
                [1] Fügt
                *[-1] Entfernt
            }
        *[other]
            { $deltasign ->
                [1] fügen
                *[-1] entfernen
            }
    } {NATURALFIXED($amount, 2)}u {$reagent} { $deltasign ->
        [1] der Lösung hinzu
        *[-1] aus der Lösung
    }
