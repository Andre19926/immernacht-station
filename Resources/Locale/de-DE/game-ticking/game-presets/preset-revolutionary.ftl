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

roles-antag-rev-head-name = Hauptrevolutionär
roles-antag-rev-head-objective = Ihr Ziel ist es, die Station zu übernehmen, indem Sie Menschen zu Ihrer Sache bekehren und alle Mitglieder der Führung eliminieren.

head-rev-role-greeting =
    Du bist ein Hauptrevolutionär.
    Sie haben die Aufgabe, das gesamte Führung durch Tod, Exil oder Gefängnis von der Station zu entfernen.
    Das Syndicate hat Sie mit einem Manifest gesponsert, das die Crew an Ihre Seite überzeugt.
    Vorsicht, das wird bei Security oder Command nicht funktionieren - ihre Loyalität ist unerschütterlich.
    Viva la revolución!

head-rev-briefing =
    Verwenden Sie das Manifest, um Menschen zu Ihrer Sache zu bekehren.
    Befreie dich von allen Köpfen, um die Station zu übernehmen.

head-rev-break-mindshield = Der Mindshield neutralisierte hypnotische Kräfte, aber seine Funktionalität wurde kompromittiert!

## Rev

roles-antag-rev-name = Revolutionär
roles-antag-rev-objective = Ihr Ziel ist es, die Sicherheit zu gewährleisten und den Befehlen der Hauptrevolutionäre zu folgen und ihnen zu helfen, die Station zu übernehmen, indem sie alle Mitglieder der Führung eliminieren.

rev-break-control = {$name} Er erinnert sich an seine wahre Treue!

rev-role-greeting =
    Du bist ein Revolutionär. Ihr habt die Aufgabe, die Hauptrevolutionäre zu schützen und ihnen zu helfen, die Station zu übernehmen.
    Die Revolution muss zusammenarbeiten, um alle Mitglieder der Führung zu töten, zurückzuhalten oder zu bekehren.
    Viva la revolución!

rev-briefing = Helfen Sie Ihren Kopf Revolutionäre konvertieren oder loswerden jeden Kopf über die Station zu übernehmen.

## General

rev-title = Revolutionäre
rev-description = Revolutionäre, die unter der Crew verborgen sind, versuchen, andere zu ihrer Sache zu bekehren und die Führung zu stürzen.

rev-not-enough-ready-players = Nicht genug Spieler haben sich auf das Spiel vorbereitet. Es gab {$readyPlayersCount} Spieler bereiten sich aus {$minimumPlayers} benötigt. Ich kann keine Revolutionäre starten.
rev-no-one-ready = Keine Spieler bereit! Ich kann keine Revolutionäre starten.
rev-no-heads = Es gab keine Hauptrevolutionäre, die ausgewählt werden sollten. Ich kann keine Revolutionäre starten.

rev-won = Die Hauptrevolutionäre überlebten und eroberten erfolgreich die Kontrolle über die Station.

rev-lost = der Führung überlebte und neutralisierte alle Head Revs.

rev-stalemate = Sowohl die Führung als auch die Hauptrevolutionäre sind alle gestorben. Es ist ein Unentschieden.

rev-reverse-stalemate = Sowohl die Führung als auch die Hauptrevolutionäre überlebten.

rev-headrev-count = {$initialCount ->
    [one] Es gab einen revolutionären Kopf:
    *[other] Es gab {$initialCount} Hauptrevolutionäre:
}

rev-headrev-name-user = [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) converted {$count} {$count ->
    [one] Person
    *[other] Menschen
}

rev-headrev-name = [color=#5e9cff]{$name}[/color] converted {$count} {$count ->
    [one] Person
    *[other] Menschen
}

## Deconverted window

rev-deconverted-title = Dekonvertiert!
rev-deconverted-text =
    Als die letzte Headrev neutralisiert wurde, ist die Revolution vorbei.

    Du bist kein Revolutionär mehr, also sei nett.
rev-deconverted-confirm = Bestätigung
