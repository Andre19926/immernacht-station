# Loc strings for various entity state & client-side PVS related commands

cmd-reset-ent-help = Verwendung: {$command} <Entity-UID>
cmd-reset-ent-desc = Setzt eine Entity auf den zuletzt empfangenen Server-Zustand zurück. Das setzt auch Entities zurück, die in den Null-Space gelöst wurden.

cmd-reset-all-ents-help = Verwendung: {$command}
cmd-reset-all-ents-desc = Setzt alle Entities auf den zuletzt empfangenen Server-Zustand zurück. Betrifft nur Entities, die nicht in den Null-Space gelöst wurden.

cmd-detach-ent-help = Verwendung: {$command} <Entity-UID>
cmd-detach-ent-desc = Löst eine Entity in den Null-Space, als hätte sie die PVS-Reichweite verlassen.

cmd-local-delete-help = Verwendung: {$command} <Entity-UID>
cmd-local-delete-desc = Löscht eine Entity. Anders als der normale delete-Befehl geschieht das CLIENTSEITIG. Wenn die Entity nicht clientseitig ist, führt das sehr wahrscheinlich zu Fehlern.

cmd-full-state-reset-help = Verwendung: {$command}
cmd-full-state-reset-desc = Verwirft alle Entity-Zustandsinformationen und fordert vom Server einen vollständigen Zustand an.
