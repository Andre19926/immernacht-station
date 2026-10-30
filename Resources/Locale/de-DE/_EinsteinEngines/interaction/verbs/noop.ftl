interaction-LookAt-name = Anstarren
interaction-LookAt-description = Starre in die Leere und sieh, wie sie zurückstarrt.
interaction-LookAt-success-self-popup = Du starrst {THE($target)} an.
interaction-LookAt-success-target-popup = Du spürst, wie {THE($user)} dich anstarrt ...
interaction-LookAt-success-others-popup = {CAPITALIZE(THE($user))} starrt {THE($target)} an.

interaction-Hug-name = Umarmen
interaction-Hug-description = Eine Umarmung am Tag hält die psychologischen Schrecken jenseits deines Verständnisses fern.
interaction-Hug-success-self-popup = Du umarmst {THE($target)}.
interaction-Hug-success-target-popup = {CAPITALIZE(THE($user))} umarmt dich.
interaction-Hug-success-others-popup = {CAPITALIZE(THE($user))} umarmt {THE($target)}.

interaction-KnockOn-name = Klopfen
interaction-KnockOn-description = Klopf auf das Ziel, um Aufmerksamkeit zu erregen.
interaction-KnockOn-success-self-popup = Du klopfst an {THE($target)}.
interaction-KnockOn-success-target-popup = {CAPITALIZE(THE($user))} klopft an dich.
interaction-KnockOn-success-others-popup = {CAPITALIZE(THE($user))} klopft an {THE($target)}.

# The below includes conditionals for if the user is holding an item
interaction-WaveAt-name = Winken
interaction-WaveAt-description = Winke dem Ziel zu. Wenn du einen Gegenstand hältst, winkst du damit.
interaction-WaveAt-success-self-popup = Du winkst {$hasUsed ->
    [false] {THE($target)} zu.
    *[true] mit {$used} {THE($target)} zu.
}
interaction-WaveAt-success-target-popup = {CAPITALIZE(THE($user))} {$hasUsed ->
    [false] winkt dir zu.
    *[true] winkt dir mit {POSS-PRONOUN($user)} {$used} zu.
}
interaction-WaveAt-success-others-popup = {CAPITALIZE(THE($user))} {$hasUsed ->
    [false] winkt {THE($target)} zu.
    *[true] winkt {THE($target)} mit {POSS-PRONOUN($user)} {$used} zu.
}
