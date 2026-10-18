# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Tom Leys <tom@crump-leys.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 username <113782077+whateverusername0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

zombie-title = Zombies
zombie-description = Die Untoten sind auf die Station losgelassen! Arbeitet mit der Crew zusammen, überlebt den Ausbruch und sichert die Station.

zombieteors-title = Zombieteors
zombieteors-description = Die Untoten sind mitten in einem katastrophalen Meteoritenschauer auf die Station losgelassen! Haltet zusammen und überlebt!

zombie-not-enough-ready-players = Nicht genug Spieler bereit! Es sind {$readyPlayersCount} von {$minimumPlayers} nötigen Spielern bereit. Der Zombie-Modus kann nicht gestartet werden.
zombie-no-one-ready = Keine Spieler bereit! Der Zombie-Modus kann nicht gestartet werden.

zombie-patientzero-role-greeting = Du bist Erstinfizierter. Besorge Vorräte und bereite dich auf deine Verwandlung vor. Dein Ziel ist es, die Station zu überrennen und so viele wie möglich zu infizieren.
zombie-healing = Du spürst ein Rühren in deinem Fleisch
zombie-infection-warning = Du spürst, dass der Zombie-Virus sich durchsetzt
zombie-infection-underway = Dein Blut beginnt, dicker zu werden

## goob edit
zombie-start-announcement = Bestätigter Ausbruch einer biologischen Gefahr der Stufe 7 an Bord der Station. Die Sicherheit kann euch nicht mehr schützen. Begebt euch in gesicherte Bereiche und verschanzt euch bis zur Evakuierung.
### Over
zombie-alone = Du fühlst dich ganz allein.

zombie-shuttle-call = Wir haben festgestellt, dass die Untoten die Station überrannt haben. Ein Notfall-Shuttle wird entsandt, um das verbleibende Personal abzuholen.

zombie-round-end-initial-count = {$initialCount ->
    [one] Es gab einen Erstinfizierten:
    *[other] Es gab {$initialCount} Erstinfizierte:
}
zombie-round-end-user-was-initial = - [color=plum]{$name}[/color] ([color=gray]{$username}[/color]) war einer der ersten Infizierten.

zombie-round-end-amount-none = [color=green]Alle Zombies wurden ausgerottet![/color]
zombie-round-end-amount-low = [color=green]Fast alle Zombies wurden ausgerottet.[/color]
zombie-round-end-amount-medium = [color=yellow]{$percent}% der Crew wurden in Zombies verwandelt.[/color]
zombie-round-end-amount-high = [color=crimson]{$percent}% der Crew wurden in Zombies verwandelt.[/color]
zombie-round-end-amount-all = [color=darkred]Die gesamte Crew wurde zu Zombies![/color]

zombie-round-end-survivor-count = {$count ->
    [one] Es war nur noch ein Überlebender übrig:
    *[other] Es waren nur noch {$count} Überlebende übrig:
}
zombie-round-end-user-was-survivor = - [color=White]{$name}[/color] ([color=gray]{$username}[/color]) hat den Ausbruch überlebt.
