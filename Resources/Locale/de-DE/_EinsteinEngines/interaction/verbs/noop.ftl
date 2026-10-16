interaction-LookAt-name = Stern
interaction-LookAt-description = Starren Sie in die Leere und sehen Sie, wie sie zurückblickt.
interaction-LookAt-success-self-popup = Du starrst an {THE($target)}.
interaction-LookAt-success-target-popup = Du fühlst dich {THE($user)} Starrte dich an...
interaction-LookAt-success-others-popup = {THE($user)} starrt an {THE($target)}.

interaction-Hug-name = Wanze
interaction-Hug-description = Eine Umarmung am Tag hält die psychologischen Schrecken jenseits Ihres Verständnisses.
interaction-Hug-success-self-popup = Sie umarmen sich {THE($target)}.
interaction-Hug-success-target-popup = {THE($user)} Umarmt dich.
interaction-Hug-success-others-popup = {THE($user)} Umarmungen {THE($target)}.

interaction-KnockOn-name = Klopfen
interaction-KnockOn-description = Klopf auf das Ziel, um Aufmerksamkeit zu erregen.
interaction-KnockOn-success-self-popup = Sie klopfen an {THE($target)}.
interaction-KnockOn-success-target-popup = {THE($user)} klopft auf dich.
interaction-KnockOn-success-others-popup = {THE($user)} Klopfen auf {THE($target)}.

# The below includes conditionals for if the user is holding an item
interaction-WaveAt-name = Welle bei
interaction-WaveAt-description = Welle auf das Ziel. Wenn Sie einen Gegenstand halten, werden Sie ihn winken.
interaction-WaveAt-success-self-popup = You wave {$hasUsed ->
    [false] bei {THE($target)}.
    *[true] Ihr {$used} bei {THE($target)}.
}
interaction-WaveAt-success-target-popup = {THE($user)} waves {$hasUsed ->
    [false] bei dir.
    *[true] {POSS-PRONOUN($user)} {$used} bei dir.
}
interaction-WaveAt-success-others-popup = {THE($user)} waves {$hasUsed ->
    [false] bei {THE($target)}.
    *[true] {POSS-PRONOUN($user)} {$used} bei {THE($target)}.
}
