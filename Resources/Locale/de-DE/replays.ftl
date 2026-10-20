# Playback Commands

cmd-replay-play-desc = Setzt die Wiedergabe des Replays fort.
cmd-replay-play-help = replay_play

cmd-replay-pause-desc = Pausiert die Wiedergabe des Replays
cmd-replay-pause-help = replay_pause

cmd-replay-toggle-desc = Setzt die Wiedergabe des Replays fort oder pausiert sie.
cmd-replay-toggle-help = replay_toggle

cmd-replay-toggle-screenshot-mode-desc = Schaltet den Screenshot-Modus für Replays um und blendet das Replay-Steuerelement aus.
cmd-replay-toggle-screenshot-mode-help = replay_toggle_screenshot_mode

cmd-replay-stop-desc = Beendet ein Replay und entlädt es.
cmd-replay-stop-help = replay_stop

cmd-replay-load-desc = Lädt ein Replay und startet es.
cmd-replay-load-help = replay_load <Replay-Ordner>
cmd-replay-load-hint = Replay-Ordner

cmd-replay-skip-desc = Springt in der Zeit vor oder zurück.
cmd-replay-skip-help = replay_skip <Tick oder Zeitspanne>
cmd-replay-skip-hint = Ticks oder Zeitspanne (HH:MM:SS).

cmd-replay-set-time-desc = Springt vor oder zurück zu einem bestimmten Zeitpunkt.
cmd-replay-set-time-help = replay_set <Tick oder Zeit>
cmd-replay-set-time-hint = Tick oder Zeitspanne (HH:MM:SS), beginnend ab

cmd-replay-error-time = „{$time}“ ist weder eine ganze Zahl noch eine Zeitspanne.
cmd-replay-error-args = Falsche Anzahl an Argumenten.
cmd-replay-error-no-replay = Es wird gerade kein Replay abgespielt.
cmd-replay-error-already-loaded = Es ist bereits ein Replay geladen.
cmd-replay-error-run-level = Du kannst kein Replay laden, solange du mit einem Server verbunden bist.

cmd-replay-toggleui-desc = Schaltet die Replay-Steuerungsoberfläche um.

# Recording commands

cmd-replay-recording-start-desc = Startet eine Replay-Aufnahme, optional mit Zeitlimit.
cmd-replay-recording-start-help = Verwendung: replay_recording_start [Name] [Überschreiben] [Zeitlimit]
cmd-replay-recording-start-success = Replay-Aufnahme gestartet.
cmd-replay-recording-start-already-recording = Es läuft bereits eine Replay-Aufnahme.
cmd-replay-recording-start-error = Beim Starten der Aufnahme ist ein Fehler aufgetreten.
cmd-replay-recording-start-hint-time = [Zeitlimit (Minuten)]
cmd-replay-recording-start-hint-name = [Name]
cmd-replay-recording-start-hint-overwrite = [Überschreiben (bool)]

cmd-replay-recording-stop-desc = Beendet eine Replay-Aufnahme.
cmd-replay-recording-stop-help = Verwendung: replay_recording_stop
cmd-replay-recording-stop-success = Replay-Aufnahme beendet.
cmd-replay-recording-stop-not-recording = Es läuft gerade keine Replay-Aufnahme.

cmd-replay-recording-stats-desc = Zeigt Informationen zur aktuellen Replay-Aufnahme an.
cmd-replay-recording-stats-help = Verwendung: replay_recording_stats
cmd-replay-recording-stats-result = Dauer: {$time} min, Ticks: {$ticks}, Größe: {$size} MB, Rate: {$rate} MB/min.


# Time Control UI
replay-time-box-scrubbing-label = Dynamisches Scrubbing
replay-time-box-replay-time-label = Aufnahmezeit: {$current} / {$end}  ({$percentage}%)
replay-time-box-server-time-label = Serverzeit: {$current} / {$end}
replay-time-box-index-label = Index: {$current} / {$total}
replay-time-box-tick-label = Tick: {$current} / {$total}
