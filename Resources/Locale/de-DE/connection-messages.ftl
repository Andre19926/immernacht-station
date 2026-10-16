# SPDX-FileCopyrightText: 2022 Dylan Corrales <DeathCamel58@gmail.com>
# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Morb <14136326+Morb0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Visne <39844191+Visne@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Hannah Giovanna Dawson <karakkaraz@gmail.com>
# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 Simon <63975668+Simyon264@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Vasilis <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Myra <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2025 PJB3005 <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 nikthechampiongr <32041239+nikthechampiongr@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-whitelistadd-desc = Fügt den Player mit dem angegebenen Benutzernamen zur Server-Whitelist hinzu.
cmd-whitelistadd-help = Verwendung: whitelistadd <Benutzername oder Benutzer-ID>
cmd-whitelistadd-existing = {$username} steht bereits auf der Whitelist!
cmd-whitelistadd-added = {$username} zur Whitelist hinzugefügt
cmd-whitelistadd-not-found = Unfähig zu finden '{$username}'
cmd-whitelistadd-arg-player = [player]

cmd-whitelistremove-desc = Entfernt den Player mit dem angegebenen Benutzernamen von der Server-Whitelist.
cmd-whitelistremove-help = Verwendung: whitelistremove <Benutzername oder Benutzer-ID>
cmd-whitelistremove-existing = {$username} steht nicht auf der Whitelist!
cmd-whitelistremove-removed = {$username} von der Whitelist entfernt
cmd-whitelistremove-not-found = Unfähig zu finden '{$username}'
cmd-whitelistremove-arg-player = [player]

cmd-kicknonwhitelisted-desc = Kicks alle nicht-weißen Spieler vom Server.
cmd-kicknonwhitelisted-help = Verwendung: kicknonwhitelisted

ban-banned-permanent = Dieser Bann wird nur durch einen Einspruch aufgehoben.
ban-banned-permanent-appeal = Dieser Bann wird nur durch einen Einspruch aufgehoben. Du kannst hier Einspruch einlegen: {$link}
ban-expires = Dieser Bann gilt für {$duration} Minuten und läuft um {$time} UTC ab.
ban-banned-1 = Du oder ein anderer Nutzer dieses Computers oder dieser Verbindung ist vom Spielen hier ausgeschlossen.
ban-banned-2 = Du wurdest gebannt von: "{$adminName}"
ban-banned-3 = Der Bangrund lautet: "{$reason}"
ban-banned-4 = Versuche, diesen Bann zu umgehen, zum Beispiel durch ein neues Konto, werden protokolliert.

soft-player-cap-full = Der Server ist voll!
panic-bunker-account-denied = Dieser Server befindet sich im Panic-Bunker-Modus, der oft vorsorglich gegen Raids aktiviert wird. Neue Verbindungen von Konten, die bestimmte Anforderungen nicht erfüllen, werden vorübergehend nicht angenommen. Versuch es später erneut
panic-bunker-account-denied-reason = Dieser Server befindet sich im Panic-Bunker-Modus, der oft vorsorglich gegen Raids aktiviert wird. Neue Verbindungen von Konten, die bestimmte Anforderungen nicht erfüllen, werden vorübergehend nicht angenommen. Versuch es später erneut. Grund: "{$reason}"
panic-bunker-account-reason-account = Dein Space-Station-14-Konto ist zu neu. Es muss älter als {$minutes} Minuten sein
panic-bunker-account-reason-overall = Deine Gesamtspielzeit auf dem Server muss größer als {$minutes} Minuten sein

whitelist-playtime = Du hast nicht genug Spielzeit, um diesem Server beizutreten. Du brauchst mindestens {$minutes} Minuten Spielzeit.
whitelist-player-count = Dieser Server nimmt aktuell keine Spieler auf. Bitte versuch es später erneut.
whitelist-notes = Du hast aktuell zu viele Admin-Notizen, um diesem Server beizutreten. Deine Notizen kannst du mit /adminremarks im Chat ansehen.
whitelist-manual = Du stehst nicht auf der Whitelist dieses Servers.
whitelist-blacklisted = Du stehst auf der Blacklist dieses Servers.
whitelist-always-deny = Du darfst diesem Server nicht beitreten.
whitelist-fail-prefix = Nicht auf der Whitelist: {$msg}

cmd-blacklistadd-desc = Fügt den Player mit dem angegebenen Benutzernamen zur Server-Blacklist hinzu.
cmd-blacklistadd-help = Verwendung: blacklistadd <Benutzername>
cmd-blacklistadd-existing = {$username} steht bereits auf der Blacklist!
cmd-blacklistadd-added = {$username} zur Blacklist hinzugefügt
cmd-blacklistadd-not-found = Unfähig zu finden '{$username}'
cmd-blacklistadd-arg-player = [player]

cmd-blacklistremove-desc = Entfernt den Player mit dem angegebenen Benutzernamen von der Server-Blacklist.
cmd-blacklistremove-help = Verwendung: blacklistremove <username>
cmd-blacklistremove-existing = {$username} steht nicht auf der schwarzen Liste!
cmd-blacklistremove-removed = {$username} von der Blacklist entfernt
cmd-blacklistremove-not-found = Unfähig zu finden '{$username}'
cmd-blacklistremove-arg-player = [player]

baby-jail-account-denied = Dieser server ist ein newbie-server, der für neue spieler und diejenigen gedacht ist, die ihnen helfen wollen. Neue Verbindungen durch Accounts, die zu alt sind oder nicht auf einer Whitelist stehen, werden nicht akzeptiert. Schauen Sie sich einige andere Server an und sehen Sie alles, was Space Station 14 zu bieten hat. Viel Spaß!
baby-jail-account-denied-reason = Dieser server ist ein newbie-server, der für neue spieler und diejenigen gedacht ist, die ihnen helfen wollen. Neue Verbindungen durch Accounts, die zu alt sind oder nicht auf einer Whitelist stehen, werden nicht akzeptiert. Schauen Sie sich einige andere Server an und sehen Sie alles, was Space Station 14 zu bieten hat. Viel Spaß! Grund: "{$reason}"
baby-jail-account-reason-account = Ihr Space Station 14-Konto ist zu alt. Es muss jünger sein als {$minutes} Minuten
baby-jail-account-reason-overall = Ihre Gesamtspielzeit auf dem Server muss jünger sein als {$minutes} $Minuten

generic-misconfigured = Der Server ist falsch konfiguriert und nimmt keine Spieler auf. Bitte wende dich an den Serverbetreiber und versuch es später erneut.

ipintel-server-ratelimited = Dieser Server nutzt ein Prüfsystem mit externer Verifizierung, hat aber sein maximales Prüfkontingent beim externen Dienst erreicht. Bitte informiere das Admin-Team des Servers und bitte dort um Hilfe, oder versuch es später erneut.
ipintel-unknown = Dieser Server nutzt ein Prüfsystem mit externer Verifizierung, bei der Prüfung deiner Verbindung ist jedoch ein Fehler aufgetreten. Bitte informiere das Admin-Team des Servers und bitte dort um Hilfe, oder versuch es später erneut.
ipintel-suspicious = Du scheinst dich über ein Rechenzentrum, einen Proxy, ein VPN oder eine andere verdächtige Verbindung zu verbinden. Aus administrativen Gründen erlauben wir solche Verbindungen nicht. Wenn du ein VPN oder Ähnliches nutzt, schalte es bitte aus und verbinde dich erneut. Wenn du glaubst, dass das ein Irrtum ist, oder du solche Dienste zum Spielen brauchst, wende dich an das Admin-Team des Servers.

hwid-required = Dein Client hat sich geweigert, eine Hardware-ID zu senden. Bitte wende dich für weitere Hilfe an das Admin-Team.
