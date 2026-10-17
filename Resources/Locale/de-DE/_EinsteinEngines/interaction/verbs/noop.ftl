interaction-LookAt-name = Stern
interaction-LookAt-description = Starre in die Leere und siehst du, wie sie zurückblickt.
interaction-LookAt-success-self-popup = Du starrst an {THE($target)}.
interaction-LookAt-success-target-popup = Du fühlst dich {THE($user)} Starrte dich an...
interaction-LookAt-success-others-popup = {THE($user)} starrt an {THE($target)}.

interaction-Hug-name = Wanze
interaction-Hug-description = Eine Umarmung am Tag hält die psychologischen Schrecken jenseits deines Verständnisses.
interaction-Hug-success-self-popup = Du umarmst {THE($target)}.
interaction-Hug-success-target-popup = {THE($user)} Umarmt dich.
interaction-Hug-success-others-popup = {THE($user)} Umarmungen {THE($target)}.

interaction-KnockOn-name = Klopfen
interaction-KnockOn-description = Klopf auf das Ziel, um Aufmerksamkeit zu erregen.
interaction-KnockOn-success-self-popup = Du klopfst an {THE($target)}.
interaction-KnockOn-success-target-popup = {THE($user)} klopft auf dich.
interaction-KnockOn-success-others-popup = {THE($user)} Klopfen auf {THE($target)}.

# The below includes conditionals for if the user is holding an item
interaction-WaveAt-name = Welle bei
interaction-WaveAt-description = Welle auf das Ziel. Wenn du einen Gegenstand hältst, wirst du ihn winken.
interaction-WaveAt-success-self-popup = Du winkst {$hasUsed ->
    [false] {THE($target)} zu.
    *[true] mit {$used} {THE($target)} zu.
}
interaction-WaveAt-success-target-popup = {THE($user)} waves {$hasUsed ->
    [false] bei dir.
    *[true] {POSS-PRONOUN($user)} {$used} bei dir.
}
interaction-WaveAt-success-others-popup = {THE($user)} waves {$hasUsed ->
    [false] bei {THE($target)}.
    *[true] {POSS-PRONOUN($user)} {$used} bei {THE($target)}.
}
