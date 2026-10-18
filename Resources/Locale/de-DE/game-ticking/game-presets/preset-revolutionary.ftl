# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2023 coolmankid12345 <55817627+coolmankid12345@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 coolmankid12345 <coolmankid12345@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 BombasterDS <115770678+BombasterDS@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Killerqu00 <47712032+Killerqu00@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Mr. 27 <45323883+Dutch-VanDerLinde@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Rev Head

roles-antag-rev-head-name = Revolutionsführer
roles-antag-rev-head-objective = Dein Ziel ist es, die Station zu übernehmen, indem du Leute für deine Sache gewinnst und alle Mitglieder der Führung ausschaltest.

head-rev-role-greeting = Du bist Revolutionsführer. Deine Aufgabe: die gesamte Führung durch Tod, Exil oder Haft von der Station zu entfernen. Das Syndicate hat dir ein Manifest gestellt, das die Crew überzeugt. Vorsicht: Bei Sicherheit und Führung wirkt es nicht, sie sind unerschütterlich loyal. Viva la revolución!

head-rev-briefing = Werde alle Abteilungsleiter los, um die Station zu übernehmen.

head-rev-break-mindshield = Das Mindshield hat die hypnotischen Kräfte neutralisiert, ist aber beschädigt!

## Rev

roles-antag-rev-name = Revolutionär
roles-antag-rev-objective = Dein Ziel ist es, die Sicherheit der Anführer-Revolutionäre zu gewährleisten, ihren Befehlen zu folgen und ihnen zu helfen, die Station zu übernehmen, indem ihr alle Mitglieder der Führung ausschaltet.

rev-break-control = {$name} hat sich auf seine wahre Treue besonnen!

rev-role-greeting = Du bist ein Revolutionär. Deine Aufgabe ist es, die Anführer-Revolutionäre zu schützen und ihnen zu helfen, die Station zu übernehmen.
    Die Revolution muss zusammenarbeiten, um alle Mitglieder der Führung zu töten, festzusetzen oder umzudrehen.
    Viva la revolución!

rev-briefing = Hilf deinen Revolutionsführern, jeden Abteilungsleiter zu bekehren oder loszuwerden, um die Station zu übernehmen.

## General

rev-title = Revolutionäre
rev-description = Revolutionäre, die unter der Crew verborgen sind, versuchen, andere zu ihrer Sache zu bekehren und die Führung zu stürzen.

rev-not-enough-ready-players = Nicht genug Spieler haben sich auf das Spiel vorbereitet. Es gab {$readyPlayersCount} Spieler bereiten sich aus {$minimumPlayers} benötigt. Ich kann keine Revolutionäre starten.
rev-no-one-ready = Keine Spieler bereit! Ich kann keine Revolutionäre starten.
rev-no-heads = Es gab keine Hauptrevolutionäre, die ausgewählt werden sollten. Ich kann keine Revolutionäre starten.

rev-won = Die Hauptrevolutionäre überlebten und eroberten erfolgreich die Kontrolle über die Station.

rev-lost = Die Führung hat überlebt und alle Revolutionsführer ausgeschaltet.

rev-stalemate = Sowohl die Führung als auch die Hauptrevolutionäre sind alle gestorben. Es ist ein Unentschieden.

rev-reverse-stalemate = Sowohl die Führung als auch die Hauptrevolutionäre überlebten.

rev-headrev-count = {$initialCount ->
    [one] Es gab einen revolutionären Kopf:
    *[other] Es gab {$initialCount} Hauptrevolutionäre:
}

rev-headrev-name-user = [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) hat {$count} {$count ->
    [one] Person
    *[other] Menschen
}

rev-headrev-name = [color=#5e9cff]{$name}[/color] hat {$count} {$count ->
    [one] Person
    *[other] Menschen
}

## Deconverted window

rev-deconverted-title = Bekehrung aufgehoben!
rev-deconverted-text =
    Als die letzte Headrev neutralisiert wurde, ist die Revolution vorbei.

    Du bist kein Revolutionär mehr, also sei nett.
rev-deconverted-confirm = Bestätigen
