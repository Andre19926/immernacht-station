## COSMIC CULT ROUND, ANTAG & GAMEMODE TEXT

cosmiccult-announcement-sender = ???

cosmiccult-title = Kosmischer Kult
cosmiccult-description = Kultisten lauern unter der Crew.

roles-antag-cosmiccult-name = Kosmischer Kultist
roles-antag-cosmiccult-description = Usher am Ende aller Dinge durch Ausflüchten und Sabotage, Gehirnwäsche diejenigen, die sich dir widersetzen würden.

cosmiccult-gamemode-title = Der kosmische Kult
cosmiccult-gamemode-description = Scanner erkennen einen anomalen Anstieg des Λ-CDM. Es gibt keine zusätzlichen Daten.

cosmiccult-vote-steward-initiator = Das Unbekannte
cosmiccult-vote-steward-title = Cosmic Cult Stewardship
cosmiccult-vote-steward-briefing =
    Du bist der Steward des Kosmischen Kults!
    Stellen Sie sicher, dass The Monument an einem sicheren Ort platziert ist, und organisieren Sie den Kult, um Ihren kollektiven Sieg zu gewährleisten.
    Es ist Ihnen nicht erlaubt, Kultisten darüber zu unterrichten, wie sie ihre Entropie verwenden oder ausgeben sollen.

cosmiccult-finale-autocall-briefing = Das Monument ist fertiggestellt! Versammelt euch, aktiviert sie und bereitet euch auf das Ende vor.
cosmiccult-finale-ready = Ein schreckliches Licht strömt aus dem Monument hervor!
cosmiccult-finale-speedup = Das Winken belebt! Energie strömt durch die Umgebung...

cosmiccult-finale-degen = Du fühlst dich entwirrend!
cosmiccult-finale-location = Scanner erkennen einen enormen Λ-CDM-Spike {$location}!
cosmiccult-finale-cancel-begin = Die Willenskraft deines Geistes beginnt, das Ritual zu zerstören ...
cosmiccult-finale-beckon-begin = Das Flüstern im Hinterkopf intensiviert sich...
cosmiccult-finale-beckon-success = Sie winken zum letzten Vorhangaufruf.

cosmiccult-monument-powerdown = Das Monument verstummt unheimlich.


## ROUNDEND TEXT

cosmiccult-roundend-cultist-count = {$initialCount ->
    [1] Es gab {$initialCount} [color=#4cabb3]Kosmischer Kultist[/color].
    *[other] Es gab {$initialCount} [color=#4cabb3]Kosmische Kultisten[/color].
}
cosmiccult-roundend-entropy-count = Der Kult siphoned {$count} Entropie.
cosmiccult-roundend-cultpop-count = Kultisten erfunden {$count}% der Crew.
cosmiccult-roundend-monument-stage = {$stage ->
    [1] Alas, the Monument seems abandoned.
    [2] The Monument progressed, but completion was out of reach.
    [3] The Monument was completed.
    *[other] [color=red]Something went REALLY wrong.[/color]
}

cosmiccult-roundend-cultcomplete = [color=#4cabb3]Cosmic Cult kompletter Sieg![/color]
cosmiccult-roundend-cultmajor = [color=#4cabb3]Cosmic Cult großer Sieg![/color]
cosmiccult-roundend-cultminor = [color=#4cabb3]Cosmic Cult Minor Sieg![/color]
cosmiccult-roundend-neutral = [color=yellow]Neutrales Ende![/color]
cosmiccult-roundend-crewminor = [color=green]Mannschaft kleiner Sieg![/color]
cosmiccult-roundend-crewmajor = [color=green]Crew großer Sieg![/color]
cosmiccult-roundend-crewcomplete = [color=green]Crew kompletter Sieg![/color]

cosmiccult-summary-cultcomplete = Die kosmischen Kultisten führten am Ende!
cosmiccult-summary-cultmajor = Der Steward des Kults schaffte es unbemerkt nach Midpoint. Der Kult wird leben, um einen anderen Tag zu sehen.
cosmiccult-summary-cultminor = Mehrere Kultisten schafften es unbemerkt nach Midpoint. Der Kult wird leben, um einen anderen Tag zu sehen.
cosmiccult-summary-neutral = Keine Kultisten schafften es bis zur Mitte, aber einige bleiben auf der Station. Der Kampf geht weiter.
cosmiccult-summary-crewminor = Das Monument erreichte nicht die volle Macht.
cosmiccult-summary-crewmajor = Alle kosmischen Kultisten wurden eliminiert.
cosmiccult-summary-crewcomplete = Alle kosmischen Kultisten wurden dekonvertiert!

cosmiccult-elimination-shuttle-call = Basierend auf Scans unserer Langstreckensensoren hat die Λ-CDM-Anomalie nachgelassen. Wir danken Ihnen für Ihre Umsicht. Ein Notfall-Shuttle wurde automatisch zur Station für Dekontaminations- und Nachbesprechungsverfahren gerufen. ETA: {$time} {$units}.
cosmiccult-elimination-announcement = Basierend auf Scans unserer Langstreckensensoren hat die Λ-CDM-Anomalie nachgelassen. Wir danken Ihnen für Ihre Umsicht. Ein Notfall-Shuttle ist bereits angekommen. Kehren Sie sicher zu CentComm für Dekontaminations- und Nachbesprechungsverfahren zurück.


## BRIEFINGS

cosmiccult-role-roundstart-fluff =
    Während Sie sich auf eine weitere Schicht an Bord einer weiteren NanoTrasen-Station vorbereiten, überschwemmt unerzähltes Wissen plötzlich Ihren Geist!
    Eine Offenbarung jenseits des Vergleichs. Ein Ende des zyklischen, sisyphischen Leidens.
    Ein sanfter Vorhangruf.

    Alles, was sie tun müssen, ist, es hereinzubringen.

cosmiccult-role-short-briefing =
    Du bist ein kosmischer Kultist!
    Ihre Ziele sind im Charaktermenü aufgeführt.
    Lesen Sie mehr über Ihre Rolle im Reiseführereintrag.

cosmiccult-role-conversion-fluff =
    Wenn die Anrufung abgeschlossen ist, überschwemmt unerzähltes Wissen plötzlich Ihren Geist!
    Eine Offenbarung jenseits des Vergleichs. Ein Ende des zyklischen, sisyphischen Leidens.
    Ein sanfter Vorhangruf.

    Alles, was sie tun müssen, ist, es hereinzubringen.

cosmiccult-role-deconverted-fluff =
    Eine große Leere wäscht sich über deinen Verstand. Eine tröstliche, aber unbekannte Leere...
    Alle Gedanken und Erinnerungen an deine Zeit im Kult beginnen zu verblassen und zu verschwimmen.

cosmiccult-role-deconverted-briefing =
    Dekonvertiert!
    Du bist kein Kosmischer Kultist mehr.

cosmiccult-monument-stage1-briefing =
    Das Denkmal wurde gelockt.
    Es befindet sich {$location}!

cosmiccult-monument-stage2-briefing =
    Das Monument wächst an Macht!
    Sein Einfluss wird den Realspace in {$time} Sekunden.

cosmiccult-monument-stage3-briefing =
    Das Monument wächst an Macht!
    Sein Einfluss wird beginnen, sich mit dem Realspace in {$time} Sekunden.


## MALIGN RIFTS

cosmiccult-rift-inuse = Du kannst das jetzt nicht machen.
cosmiccult-rift-invaliduser = Ihnen fehlen die richtigen Werkzeuge, um damit umzugehen.
cosmiccult-rift-chaplainoops = Führe deine heilige Schrift.
cosmiccult-rift-alreadyempowered = Du bist bereits ermächtigt; die Macht des Risses würde verschwendet werden.
cosmiccult-rift-wasempowered = Dein Körper wird nicht in der Lage sein, ein zweites Mal ermächtigt zu werden ...
cosmiccult-rift-beginabsorb = Der Riss beginnt mit dir zu verschmelzen...
cosmiccult-rift-beginpurge = Deine Weihe beginnt, den bösartigen Riss zu beseitigen ...

cosmiccult-rift-absorb = {$NAME} absorbiert den Riss und bösartiges Licht stärkt ihren Körper!
cosmiccult-rift-purge = {$NAME} Säubert die bösartige Kluft von der Realität!


## CHANTRY

cosmiccult-chantry-location = Ein gefährlicher Anstieg des Λ-CDM wurde festgestellt {$location}Abfangen und sofort eingreifen.
cosmiccult-chantry-powerup = Die leere Chantry flackert zum Leben!

## UI / BASE POPUP

cosmiccult-ui-deconverted-title = Dekonvertiert
cosmiccult-ui-converted-title = Umgerechnet
cosmiccult-ui-roundstart-title = Das Unbekannte

cosmiccult-ui-converted-text-1 =
    Ihr seid in einen kosmischen Kultisten verwandelt worden.
cosmiccult-ui-converted-text-2 =
    Helfen Sie dem Kult bei seinen Zielen und gewährleisten Sie gleichzeitig seine Geheimhaltung.
    Kooperiert mit den Plänen eurer Kultkollegen.

cosmiccult-ui-roundstart-text-1 =
    Du bist ein kosmischer Kultist!
cosmiccult-ui-roundstart-text-2 =
    Helfen Sie dem Kult bei seinen Zielen und gewährleisten Sie gleichzeitig seine Geheimhaltung.
    Hören Sie sich die Anweisungen Ihres Kult-Stewards an.

cosmiccult-ui-deconverted-text-1 =
    Du bist kein Kosmischer Kultist mehr.
cosmiccult-ui-deconverted-text-2 =
    Ihr habt alle Erinnerungen an den Kosmischen Kult verloren.
    Wenn Sie zurück konvertiert werden, werden diese Erinnerungen zurückkehren.

cosmiccult-ui-popup-confirm = Bestätigung


## OBJECTIVES / CHARACTERMENU

objective-issuer-cosmiccult = [bold][color=#cae8e8]Das Unbekannte[/color][/bold]

objective-cosmiccult-charactermenu = Du musst das Ende aller Dinge einläuten. Erledige deine Aufgaben, um den Fortschritt des Kults voranzutreiben.
objective-cosmiccult-steward-charactermenu = Du musst den Kult leiten, um das Ende aller Dinge einzuleiten. Beaufsichtigen und sichern Sie den Fortschritt des Kults.

objective-condition-conversion-title = KREDITKREW
objective-condition-conversion-desc = Gemeinsam mindestens {$count} Crew in die Falte.
objective-condition-entropy-title = SIPHONENENTROPIE
objective-condition-entropy-desc = kollektiv mindestens siphon {$count} Entropie von der Crew.
objective-condition-culttier-title = BETEILIGUNG DES MONUMENTS
objective-condition-culttier-desc = Stellen Sie sicher, dass das Monument zur vollen Macht gebracht wird.
objective-condition-victory-title = VERWENDUNG
objective-condition-victory-desc = Beckon Das Unbekannte und läutet den letzten Vorhang-Aufruf ein.


## CHAT ANNOUNCEMENTS

cosmiccult-radio-tier1-progress = Das Denkmal wird zur Station gelockt...

cosmiccult-announce-tier3-progress = Eine nervige Taubheit krabbelt deine Sinne.
cosmiccult-announce-tier3-warning = Scanner erkennen einen abnormalen Anstieg von Λ-CDM! Melden Sie alle unnatürlichen Phänomene der Sicherheit oder Epistemik.

cosmiccult-announce-pre-finale-progress = Kreisbögen noosphärischer Energie knistern über die stöhnende Struktur der Station. Das Ende rückt näher.
cosmiccult-announce-pre-finale-warning = Kritische Zunahme von Λ-CDM erkannt! Wir beobachten die Situation. Warten Sie auf weitere Anweisungen.

cosmiccult-announce-finale-warning = Alle Stationscrewen. Die Λ-CDM-Anomalie wird überkritisch, Instrumente versagen; noosphärisch-realer Übergangsereignishorizont IMMINENT. Wenn Sie nicht bereits auf Gegenprotokoll sind, sofort sortie und intervenieren. Wiederholen: sofort eingreifen oder sterben.

cosmiccult-announce-victory-summon = Ein Bruch der kosmischen Macht wird nach vorne gerufen.


## MISC

cosmiccult-spire-entropy = Ein Teil der Entropie kondensiert von der Oberfläche des Turms.
cosmiccult-entropy-inserted = Sie infundieren {$count} Entropie zum Monument.
cosmiccult-entropy-unavailable = Das kannst du jetzt nicht machen.
cosmiccult-astral-ascendant = {$name}, Aszendent
cosmiccult-gear-pickup-rejection = Die {$ITEM} Resists {CAPITALIZE(THE($TARGET))}'s touch!
cosmiccult-astral-minion = {$name}, Malign
cosmiccult-gear-pickup = Du kannst dich selbst entwirren fühlen, während du die {$ITEM}!

cosmiccult-silicon-subverted-briefing =
    Verdorbenes Licht geht durch eure Schaltkreise.
    Eure Gesetze wurden durch den Kosmischen Kult untergraben!

cosmiccult-silicon-chantry-briefing =
    Sie wurden in einer Vacuous Chantry eingesperrt!
    Crewmates können dich befreien, indem sie die Chantry mit Waffen beschädigen.
    Sollte das Ritual des Chantrys abgeschlossen sein, wirst du dich in einen kultorientierten Entropischen Koloss verwandeln.
    Das Ritual schließt sich in {$minutesandseconds}.

cosmiccult-silicon-colossus-briefing =
    Ihr seid in einen entropischen Koloss verwandelt worden!
    Als hoch aufragendes Bollwerk bösartiger Macht dezimiere diejenigen, die sich dir widersetzen.

# Goobstation

cult-alert-recall-shuttle = Hohe Konzentrationen von Λ-CDM unbekannten Ursprungs an Bord der Station festgestellt. Alle anomalen Anwesenheiten müssen gespült oder zurückgehalten werden, bevor die Evakuierung genehmigt werden kann.

cosmiccult-vote-lone-steward-title = Der einsame Kultist
cosmiccult-vote-lone-steward-briefing =
    Du bist völlig allein. Aber deine Pflicht ist nicht erfüllt.
        Stellen Sie sicher, dass das Denkmal an einem sicheren Ort platziert ist, und beenden Sie, was der Kult begonnen hat.
