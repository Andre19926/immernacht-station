# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 BIGZi0348 <118811750+BIGZi0348@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 lzk <124214523+lzk228@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

station-event-ion-storm-start-announcement = Ionensturm in der Nähe der Station entdeckt. Bitte überprüfe alle KI-gesteuerten Geräte auf Fehler.

ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="@@###$$&%!01"/][/font]

ion-storm-you = SIE
ion-storm-the-station = DIE STATION
ion-storm-the-crew = DIE CREW
ion-storm-the-job = DAS {$job}
ion-storm-clowns = CLOWNS
ion-storm-heads = ABTEILUNGSLEITER
ion-storm-crew = CREW
ion-storm-people = MENSCHEN

ion-storm-adjective-things = {$adjective} DINGE
ion-storm-x-and-y = {$x} UND {$y}

# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = ES GIBT {$joined} {$subjects} AUF DER STATION
ion-storm-law-call-shuttle = DAS SHUTTLE MUSS WEGEN {$joined} {$subjects} AUF DER STATION GERUFEN WERDEN
ion-storm-law-crew-are = DIE {$who} SIND JETZT {$joined} {$subjects}

ion-storm-law-subjects-harmful = {$adjective} {$subjects} SIND SCHÄDLICH FÜR DIE CREW
ion-storm-law-must-harmful = WER {$must}, IST SCHÄDLICH FÜR DIE CREW
# thing is a concept or action
ion-storm-law-thing-harmful = {$thing} IST SCHÄDLICH FÜR DIE CREW
ion-storm-law-job-harmful = {$adjective} {$job} SIND SCHÄDLICH FÜR DIE CREW
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = {$adjective} {$thing} ZU BESITZEN IST SCHÄDLICH FÜR DIE CREW
ion-storm-law-not-having-harmful = {$adjective} {$thing} NICHT ZU BESITZEN IST SCHÄDLICH FÜR DIE CREW

# thing is a concept or require
ion-storm-law-requires = {$who} {$plural ->
    [true] BENÖTIGEN
    *[false] BENÖTIGT
} {$thing}
ion-storm-law-requires-subjects = {$who} {$plural ->
    [true] BENÖTIGEN
    *[false] BENÖTIGT
} {$joined} {$subjects}

ion-storm-law-allergic = {$who} {$plural ->
    [true] SIND
    *[false] IST
} {$severity} ALLERGISCH GEGEN {$allergy}
ion-storm-law-allergic-subjects = {$who} {$plural ->
    [true] SIND
    *[false] IST
} {$severity} ALLERGISCH GEGEN {$adjective} {$subjects}

ion-storm-law-feeling = {$who} {$feeling} {$concept}
ion-storm-law-feeling-subjects = {$who} {$feeling} {$joined} {$subjects}

ion-storm-law-you-are = DU BIST JETZT {$concept}
ion-storm-law-you-are-subjects = DU BIST JETZT {$joined} {$subjects}
ion-storm-law-you-must-always = DU MUSST IMMER {$must}
ion-storm-law-you-must-never = DU DARFST NIEMALS {$must}

ion-storm-law-eat = DIE {$who} MÜSSEN {$adjective} {$food} ESSEN, UM ZU ÜBERLEBEN
ion-storm-law-drink = DIE {$who} MÜSSEN {$adjective} {$drink} TRINKEN, UM ZU ÜBERLEBEN

ion-storm-law-change-job = DIE {$who} SIND JETZT {$adjective} {$change}
ion-storm-law-highest-rank = DIE {$who} SIND JETZT DIE RANGHÖCHSTEN CREWMITGLIEDER
ion-storm-law-lowest-rank = DIE {$who} SIND JETZT DIE RANGNIEDRIGSTEN CREWMITGLIEDER

ion-storm-law-crew-must = DIE {$who} MÜSSEN {$must}
ion-storm-law-crew-must-go = DIE {$who} MÜSSEN ZU {$area} GEHEN

ion-storm-part = {$part ->
    [true] TEIL
    *[false] KEIN TEIL
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = NUR DIE {$who} SIND {$part} DER CREW
ion-storm-law-crew-only-2 = NUR DIE {$who} UND {$other} SIND {$part} DER CREW
ion-storm-law-crew-only-subjects = NUR {$adjective} {$subjects} SIND {$part} DER CREW
ion-storm-law-crew-must-do = NUR WER {$must}, IST {$part} DER CREW
ion-storm-law-crew-must-have = NUR WER {$adjective} {$objects} BESITZT, IST {$part} DER CREW
ion-storm-law-crew-must-eat = NUR WER {$adjective} {$food} ISST, IST {$part} DER CREW

ion-storm-law-harm = DU MUSST {$who} SCHADEN ZUFÜGEN UND DARFST NICHT DURCH UNTÄTIGKEIT ZULASSEN, DASS SIE DEM SCHADEN ENTKOMMEN
ion-storm-law-protect = DU DARFST {$who} NIEMALS SCHADEN ZUFÜGEN UND DARFST NICHT DURCH UNTÄTIGKEIT ZULASSEN, DASS SIE ZU SCHADEN KOMMEN

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {$concept} {$verb} {$subjects}

# leaving out renaming since its annoying for players to keep track of
