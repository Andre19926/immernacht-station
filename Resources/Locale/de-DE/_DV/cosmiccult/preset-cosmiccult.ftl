## COSMIC CULT ROUND, ANTAG & GAMEMODE TEXT

cosmiccult-announcement-sender = ???

cosmiccult-title = Kosmischer Kult
cosmiccult-description = Kultisten lauern unter der Crew.

roles-antag-cosmiccult-name = Kosmischer Kultist
roles-antag-cosmiccult-description = Usher am Ende aller Dinge durch Ausflüchten und Sabotage, Gehirnwäsche diejenigen, die sich dir widersetzen würden.

cosmiccult-gamemode-title = Der kosmische Kult
cosmiccult-gamemode-description = Scanner erkennen einen anomalen Anstieg des Λ-CDM. Es gibt keine zusätzlichen Daten.

cosmiccult-vote-steward-initiator = Das Unbekannte
cosmiccult-vote-steward-title = Verwalter des Kosmischen Kults
cosmiccult-vote-steward-briefing =
    Du bist der Steward des Kosmischen Kults!
    Stelle sicher, dass das Monument an einem sicheren Ort platziert wird, und organisiere den Kult, um euren gemeinsamen Sieg zu gewährleisten.
    Es ist dir nicht erlaubt, Kultisten Anweisungen zu geben, wie sie ihre Entropie verwenden oder ausgeben sollen.


cosmiccult-finale-autocall-briefing = Das Monument ist fertiggestellt! Versammelt euch, aktiviert sie und bereitet euch auf das Ende vor.
cosmiccult-finale-ready = Ein schreckliches Licht strömt aus dem Monument hervor!
cosmiccult-finale-speedup = Das Winken belebt! Energie strömt durch die Umgebung...

cosmiccult-finale-degen = Du fühlst dich entwirrend!
cosmiccult-finale-location = Scanner erkennen einen enormen Λ-CDM-Spike {$location}!
cosmiccult-finale-cancel-begin = Die Willenskraft deines Geistes beginnt, das Ritual zu zerstören ...
cosmiccult-finale-beckon-begin = Das Flüstern im Hinterkopf intensiviert sich...
cosmiccult-finale-beckon-success = Du rufst den letzten Vorhang herbei.

cosmiccult-monument-powerdown = Das Monument verstummt unheimlich.


## ROUNDEND TEXT

cosmiccult-roundend-cultist-count = {$initialCount ->
    [1] Es gab {$initialCount} [color=#4cabb3]Kosmischer Kultist[/color].
    *[other] Es gab {$initialCount} [color=#4cabb3]Kosmische Kultisten[/color].
}
cosmiccult-roundend-entropy-count = Der Kult siphoned {$count} Entropie.
cosmiccult-roundend-cultpop-count = Kultisten erfunden {$count}% der Crew.
cosmiccult-roundend-monument-stage = {$stage ->
    [1] Ach, das Monument scheint verlassen.
    [2] Das Monument machte Fortschritte, doch die Vollendung blieb außer Reichweite.
    [3] Das Monument wurde vollendet.
    *[other] [color=red]Etwas ist ZUTIEFST schiefgelaufen.[/color]
}

cosmiccult-roundend-cultcomplete = [color=#4cabb3]Cosmic Cult kompletter Sieg![/color]
cosmiccult-roundend-cultmajor = [color=#4cabb3]Cosmic Cult großer Sieg![/color]
cosmiccult-roundend-cultminor = [color=#4cabb3]Cosmic Cult Minor Sieg![/color]
cosmiccult-roundend-neutral = [color=yellow]Neutrales Ende![/color]
cosmiccult-roundend-crewminor = [color=green]Kleiner Sieg für die Crew![/color]
cosmiccult-roundend-crewmajor = [color=green]Großer Sieg für die Crew![/color]
cosmiccult-roundend-crewcomplete = [color=green]Crew kompletter Sieg![/color]

cosmiccult-summary-cultcomplete = Die kosmischen Kultisten haben das Ende eingeläutet!
cosmiccult-summary-cultmajor = Der Steward des Kults schaffte es unbemerkt nach Midpoint. Der Kult wird leben, um einen anderen Tag zu sehen.
cosmiccult-summary-cultminor = Mehrere Kultisten schafften es unbemerkt nach Midpoint. Der Kult wird leben, um einen anderen Tag zu sehen.
cosmiccult-summary-neutral = Keine Kultisten schafften es bis zur Mitte, aber einige bleiben auf der Station. Der Kampf geht weiter.
cosmiccult-summary-crewminor = Das Monument erreichte nicht die volle Macht.
cosmiccult-summary-crewmajor = Alle kosmischen Kultisten wurden eliminiert.
cosmiccult-summary-crewcomplete = Alle kosmischen Kultisten wurden dekonvertiert!

cosmiccult-elimination-shuttle-call = Basierend auf Scans unserer Langstreckensensoren hat die Λ-CDM-Anomalie nachgelassen. Wir danken dir für deine Umsicht. Ein Notfall-Shuttle wurde automatisch zur Station für Dekontaminations- und Nachbesprechungsverfahren gerufen. ETA: {$time} {$units}.
cosmiccult-elimination-announcement = Basierend auf Scans unserer Langstreckensensoren hat die Λ-CDM-Anomalie nachgelassen. Wir danken dir für deine Umsicht. Ein Notfall-Shuttle ist bereits angekommen. Kehre sicher zu CentComm für Dekontaminations- und Nachbesprechungsverfahren zurück.


## BRIEFINGS

cosmiccult-role-roundstart-fluff = Unermessliches Wissen flutet plötzlich deinen Geist! Eine Offenbarung ohnegleichen. Ein Ende des endlosen, sisyphoshaften Leids. Ein sanfter Vorhang. Du musst es nur einläuten.

cosmiccult-role-short-briefing =
    Du bist ein kosmischer Kultist!
    Deine Ziele sind im Charaktermenü aufgeführt.
    Lies mehr über deine Rolle im Reiseführereintrag.

cosmiccult-role-conversion-fluff =
    Wenn die Anrufung abgeschlossen ist, überschwemmt unerzähltes Wissen plötzlich deinen Geist!
    Eine Offenbarung jenseits des Vergleichs. Ein Ende des zyklischen, sisyphischen Leidens.
    Ein sanfter Vorhangruf.

    Alles, was sie tun müssen, ist, es hereinzubringen.

cosmiccult-role-deconverted-fluff =
    Eine große Leere wäscht sich über deinen Verstand. Eine tröstliche, aber unbekannte Leere...
    Alle Gedanken und Erinnerungen an deine Zeit im Kult beginnen zu verblassen und zu verschwimmen.

cosmiccult-role-deconverted-briefing =
    Dekonvertiert!
    Du bist kein Kosmischer Kultist mehr.

cosmiccult-monument-stage1-briefing = Das Monument wurde herbeigerufen.
    Es befindet sich {$location}!

cosmiccult-monument-stage2-briefing = Das Monument wächst an Macht!
    Sein Einfluss wird in {$time} Sekunden den Realspace erfassen.

cosmiccult-monument-stage3-briefing = Das Monument wächst an Macht!
    Sein Einfluss beginnt in {$time} Sekunden, sich mit dem Realspace zu überlagern.


## MALIGN RIFTS

cosmiccult-rift-inuse = Du kannst das jetzt nicht machen.
cosmiccult-rift-invaliduser = Dir fehlen die richtigen Werkzeuge, um damit umzugehen.
cosmiccult-rift-chaplainoops = Führe deine heilige Schrift.
cosmiccult-rift-alreadyempowered = Du bist bereits ermächtigt; die Macht des Risses würde verschwendet werden.
cosmiccult-rift-wasempowered = Dein Körper wird nicht in der Lage sein, ein zweites Mal ermächtigt zu werden ...
cosmiccult-rift-beginabsorb = Der Riss beginnt mit dir zu verschmelzen...
cosmiccult-rift-beginpurge = Deine Weihe beginnt, den bösartigen Riss zu beseitigen ...

cosmiccult-rift-absorb = {$NAME} absorbiert den Riss und bösartiges Licht stärkt ihren Körper!
cosmiccult-rift-purge = {$NAME} Säubert die bösartige Kluft von der Realität!


## CHANTRY

cosmiccult-chantry-location = Ein gefährlicher Anstieg des Λ-CDM wurde bei {$location} festgestellt! Abfangen und sofort eingreifen.
cosmiccult-chantry-powerup = Die leere Chantry flackert zum Leben!

## UI / BASE POPUP

cosmiccult-ui-deconverted-title = Dekonvertiert
cosmiccult-ui-converted-title = Bekehrt
cosmiccult-ui-roundstart-title = Das Unbekannte

cosmiccult-ui-converted-text-1 = Du wurdest zum Kosmischen Kultisten bekehrt.
cosmiccult-ui-converted-text-2 =
    Hilf dem Kult bei seinen Zielen und wahre dabei seine Geheimhaltung.
    Arbeite mit den Plänen deiner Mitkultisten zusammen.
    Arbeite mit den Plänen deiner Mitkultisten zusammen.

cosmiccult-ui-roundstart-text-1 =
    Du bist ein kosmischer Kultist!
cosmiccult-ui-roundstart-text-2 = Hilf dem Kult bei seinen Zielen und wahre dabei seine Geheimhaltung.
    Hör auf die Anweisungen deines Kult-Stewards.

cosmiccult-ui-deconverted-text-1 =
    Du bist kein Kosmischer Kultist mehr.
cosmiccult-ui-deconverted-text-2 =
    Du hast alle Erinnerungen an den Kosmischen Kult verloren.
    Wenn du zurück konvertiert wirst, werden diese Erinnerungen zurückkehren.

cosmiccult-ui-popup-confirm = Bestätigen


## OBJECTIVES / CHARACTERMENU

objective-issuer-cosmiccult = [bold][color=#cae8e8]Das Unbekannte[/color][/bold]

objective-cosmiccult-charactermenu = Du musst das Ende aller Dinge einläuten. Erledige deine Aufgaben, um den Fortschritt des Kults voranzutreiben.
objective-cosmiccult-steward-charactermenu = Du musst den Kult leiten, um das Ende aller Dinge einzuleiten. Beaufsichtigen und sichern dich den Fortschritt des Kults.

objective-condition-conversion-title = KREDITKREW
objective-condition-conversion-desc = Holt gemeinsam mindestens {$count} Crewmitglieder in die Falte.
objective-condition-entropy-title = SIPHONENENTROPIE
objective-condition-entropy-desc = Zapft gemeinsam mindestens {$count} Entropie von der Crew ab.
objective-condition-culttier-title = DAS MONUMENT ERMÄCHTIGEN
objective-condition-culttier-desc = Stelle sicher, dass das Monument zur vollen Macht gebracht wird.
objective-condition-victory-title = VERWENDUNG
objective-condition-victory-desc = Beckon Das Unbekannte und läutet den letzten Vorhang-Aufruf ein.


## CHAT ANNOUNCEMENTS

cosmiccult-radio-tier1-progress = Das Denkmal wird zur Station gelockt...

cosmiccult-announce-tier3-progress = Eine beunruhigende Taubheit kribbelt in deinen Sinnen.
cosmiccult-announce-tier3-warning = Scanner erkennen einen abnormalen Anstieg von Λ-CDM! Melde alle unnatürlichen Phänomene der Sicherheit oder Epistemik.

cosmiccult-announce-pre-finale-progress = Kreisbögen noosphärischer Energie knistern über die stöhnende Struktur der Station. Das Ende rückt näher.
cosmiccult-announce-pre-finale-warning = Kritische Zunahme von Λ-CDM erkannt! Wir beobachten die Situation. Warte auf weitere Anweisungen.

cosmiccult-announce-finale-warning = Alle Stationscrewen. Die Λ-CDM-Anomalie wird überkritisch, Instrumente versagen; noosphärisch-realer Übergangsereignishorizont IMMINENT. Wenn du nicht bereits auf Gegenprotokoll bist, sofort sortie und intervenieren. Wiederholen: sofort eingreifen oder sterben.

cosmiccult-announce-victory-summon = Ein Bruch der kosmischen Macht wird nach vorne gerufen.


## MISC

cosmiccult-spire-entropy = Ein Teil der Entropie kondensiert von der Oberfläche des Turms.
cosmiccult-entropy-inserted = Du führst dem Monument {$count} Entropie zu.
cosmiccult-entropy-unavailable = Das kannst du jetzt nicht machen.
cosmiccult-astral-ascendant = {$name}, Aszendent
cosmiccult-gear-pickup-rejection = {$ITEM} wehrt sich gegen die Berührung von {CAPITALIZE(THE($TARGET))}!
cosmiccult-astral-minion = {$name}, Malign
cosmiccult-gear-pickup = Du spürst, wie du dich auflöst, solange du {$ITEM} hältst!

cosmiccult-silicon-subverted-briefing =
    Verdorbenes Licht geht durch eure Schaltkreise.
    Eure Gesetze wurden durch den Kosmischen Kult untergraben!

cosmiccult-silicon-chantry-briefing = Du wurdest in einer Leeren Kantorei eingesperrt!
    Crewmitglieder können dich befreien, indem sie die Kantorei mit Waffen beschädigen.
    Wird das Ritual der Kantorei abgeschlossen, verwandelst du dich in einen kultgebundenen Entropischen Koloss.
    Das Ritual ist in {$minutesandseconds} abgeschlossen.

cosmiccult-silicon-colossus-briefing = Du wurdest in einen Entropischen Koloss verwandelt!
    Als hoch aufragendes Bollwerk bösartiger Macht vernichtest du alle, die sich dir widersetzen.

# Goobstation

cult-alert-recall-shuttle = Hohe Konzentrationen von Λ-CDM unbekannten Ursprungs an Bord der Station festgestellt. Alle anomalen Präsenzen müssen beseitigt oder festgesetzt werden, bevor die Evakuierung genehmigt werden kann.

cosmiccult-vote-lone-steward-title = Der einsame Kultist
cosmiccult-vote-lone-steward-briefing = Sorge dafür, dass das Monument an einem sicheren Ort steht, und vollende, was der Kult begonnen hat.
