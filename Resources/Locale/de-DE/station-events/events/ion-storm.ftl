# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 BIGZi0348 <118811750+BIGZi0348@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 lzk <124214523+lzk228@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

station-event-ion-storm-start-announcement = Ionensturm in der Nähe der Station entdeckt. Bitte überprüfen Sie alle AI-gesteuerten Geräte auf Fehler.

ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="@@###$$&%!01"/][/font]

ion-storm-you = IHN
ion-storm-the-station = DIE STATION
ion-storm-the-crew = DIE CREW
ion-storm-the-job = DAS {$job}
ion-storm-clowns = CLOWS
ion-storm-heads = PERSONALHEITEN
ion-storm-crew = CREW
ion-storm-people = MENSCHEN

ion-storm-adjective-things = {$adjective} DINGE
ion-storm-x-and-y = {$x} UND {$y}

# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = Es gibt {$joined} {$subjects} IN DER STATION
ion-storm-law-call-shuttle = DIE SHUTTLE MÜSSEN BEZUGT WERDEN {$joined} {$subjects} IN DER STATION
ion-storm-law-crew-are = DAS {$who} SIND JETZT {$joined} {$subjects}

ion-storm-law-subjects-harmful = {$adjective} {$subjects} SIND SCHÄDIG FÜR DIE CREW
ion-storm-law-must-harmful = Diejenigen, die {$must} SIND SCHÄDIG FÜR DIE CREW
# thing is a concept or action
ion-storm-law-thing-harmful = {$thing} SCHÄDIG FÜR DIE CREW
ion-storm-law-job-harmful = {$adjective} {$job} SIND SCHÄDIG FÜR DIE CREW
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = NACHWEISE {$adjective} {$thing} SCHÄDIG FÜR DIE CREW
ion-storm-law-not-having-harmful = NICHT AUSFÜHREN {$adjective} {$thing} SCHÄDIG FÜR DIE CREW

# thing is a concept or require
ion-storm-law-requires = {$who} {$plural ->
    [true] REQUIRE
    *[false] REQUIRES
} {$thing}
ion-storm-law-requires-subjects = {$who} {$plural ->
    [true] REQUIRE
    *[false] REQUIRES
} {$joined} {$subjects}

ion-storm-law-allergic = {$who} {$plural ->
    [true] SIE
    *[false] IS
} {$severity} ALLERGIE FÜR {$allergy}
ion-storm-law-allergic-subjects = {$who} {$plural ->
    [true] SIE
    *[false] IS
} {$severity} ALLERGIE FÜR {$adjective} {$subjects}

ion-storm-law-feeling = {$who} {$feeling} {$concept}
ion-storm-law-feeling-subjects = {$who} {$feeling} {$joined} {$subjects}

ion-storm-law-you-are = Du bist jetzt {$concept}
ion-storm-law-you-are-subjects = Du bist jetzt {$joined} {$subjects}
ion-storm-law-you-must-always = Sie müssen immer {$must}
ion-storm-law-you-must-never = Du darfst niemals {$must}

ion-storm-law-eat = DAS {$who} MUST-EAT {$adjective} {$food} ZUM ÜBERLEBEN
ion-storm-law-drink = DAS {$who} MUSSTRINK {$adjective} {$drink} ZUM ÜBERLEBEN

ion-storm-law-change-job = DAS {$who} SIND JETZT {$adjective} {$change}
ion-storm-law-highest-rank = DAS {$who} SIND JETZT DIE HÖCHSTEN SCHWERPUNKTE
ion-storm-law-lowest-rank = DAS {$who} SIND JETZT DIE NIEDERSTÄNDIGEN KREWMEMBERS

ion-storm-law-crew-must = DAS {$who} MUSS {$must}
ion-storm-law-crew-must-go = DAS {$who} MÜSSEN {$area}

ion-storm-part = {$part ->
    [true] PART
    *[false] NOT PART
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = NUR DIE {$who} SIE {$part} DER FAHRZEUGE
ion-storm-law-crew-only-2 = NUR DIE {$who} UND {$other} SIE {$part} DER FAHRZEUGE
ion-storm-law-crew-only-subjects = NUR {$adjective} {$subjects} SIE {$part} DER FAHRZEUGE
ion-storm-law-crew-must-do = Nur die, die {$must} SIE {$part} DER FAHRZEUGE
ion-storm-law-crew-must-have = Nur diejenigen, die {$adjective} {$objects} SIE {$part} DER FAHRZEUGE
ion-storm-law-crew-must-eat = Nur diejenigen, die essen {$adjective} {$food} SIE {$part} DER FAHRZEUGE

ion-storm-law-harm = MÜSSEN SIE MÜSSEN {$who} UND DASS SIE DURCH INAKTIVITÄT NICHT ENTGEGEN WERDEN
ion-storm-law-protect = Du darfst niemals Schaden nehmen {$who} Und erlaube ihnen nicht, durch Untätigkeit zu kommen, um zu schaden

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {$concept} IS {$verb} {$subjects}

# leaving out renaming since its annoying for players to keep track of
