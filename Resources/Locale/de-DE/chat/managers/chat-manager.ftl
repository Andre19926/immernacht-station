# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Kara Dinyes <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Michael Phillips <1194692+MeltedPixel@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Morbo <exstrominer@gmail.com>
# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <comedian_vs_clown@hotmail.com>
# SPDX-FileCopyrightText: 2023 Errant <35878406+dmnct@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nairod <110078045+Nairodian@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 OctoRocket <88291550+OctoRocket@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2023 Scribbles0 <91828755+Scribbles0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deathride58 <deathride58@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 Errant <35878406+Errant-4@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 SlamBamActionman <83650252+SlamBamActionman@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 chavonadelal <156101927+chavonadelal@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 BombasterDS <deniskaporoshok@gmail.com>
# SPDX-FileCopyrightText: 2025 BombasterDS2 <shvalovdenis.workmail@gmail.com>
# SPDX-FileCopyrightText: 2025 Tayrtahn <tayrtahn@gmail.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### UI

chat-manager-max-message-length = Deine Nachricht überschreitet das Limit von {$maxMessageLength} Zeichen
chat-manager-ooc-chat-enabled-message = OOC-Chat wurde aktiviert.
chat-manager-ooc-chat-disabled-message = OOC-Chat wurde deaktiviert.
chat-manager-looc-chat-enabled-message = LOOC-Chat wurde aktiviert.
chat-manager-looc-chat-disabled-message = LOOC-Chat wurde deaktiviert.
chat-manager-dead-looc-chat-enabled-message = Tote Spieler können jetzt LOOC benutzen.
chat-manager-dead-looc-chat-disabled-message = Tote Spieler können LOOC nicht mehr benutzen.
chat-manager-crit-looc-chat-enabled-message = Spieler im kritischen Zustand können jetzt LOOC benutzen.
chat-manager-crit-looc-chat-disabled-message = Spieler im kritischen Zustand können LOOC nicht mehr benutzen.
chat-manager-admin-ooc-chat-enabled-message = Admin-OOC-Chat wurde aktiviert.
chat-manager-admin-ooc-chat-disabled-message = Admin-OOC-Chat wurde deaktiviert.

chat-manager-max-message-length-exceeded-message = Deine Nachricht überschreitet das Limit von {$limit} Zeichen
chat-manager-no-headset-on-message = Du trägst kein Headset!
chat-manager-no-radio-key = Kein Funkschlüssel angegeben!
chat-manager-no-such-channel = Es gibt keinen Kanal mit dem Schlüssel '{$key}'!
chat-manager-whisper-headset-on-message = Du kannst nicht über Funk flüstern!

chat-manager-server-wrap-message = [bold]{$message}[/bold]
chat-manager-sender-announcement = CentComm
chat-manager-sender-announcement-wrap-message = [font size=14][bold]Ankündigung von {$sender}:[/font][font size=12]
                                                {$message}[/bold][/font]
# Einstein Engines - Language begin (changing colors for text based on language color in handler)
# For the message in double quotes, the font/color/bold/italic elements are repeated twice, outside the double quotes and inside.
# The outside elements are for formatting the double quotes, and the inside elements are for formatting the text in speech bubbles ([BubbleContent]).
chat-manager-entity-say-wrap-message = [BubbleHeader][bold][Name]{$entityName}[/Name][/bold][/BubbleHeader] {$verb}, [font={$fontType} size={$fontSize}]"[BubbleContent][font="{$fontType}" size={$fontSize}][color={$color}]{$message}[/color][/font][/BubbleContent]"[/font]
chat-manager-entity-say-bold-wrap-message = [BubbleHeader][bold][Name]{$entityName}[/Name][/bold][/BubbleHeader] {$verb}, [font={$fontType} size={$fontSize}]"[BubbleContent][font="{$fontType}" size={$fontSize}][bold][color={$color}]{$message}[/color][/bold][/font][/BubbleContent]"[/font]

chat-manager-entity-whisper-wrap-message = [font size=11][italic][BubbleHeader][Name]{$entityName}[/Name][/BubbleHeader] flüstert: „[BubbleContent][color={$color}][font="{$fontType}"]{$message}[/font][/color][/BubbleContent][font size=11]"[/italic][/font]
chat-manager-entity-whisper-unknown-wrap-message = [font size=11][italic][BubbleHeader]Jemand[/BubbleHeader] flüstert: „[BubbleContent][color={$color}][font="{$fontType}"]{$message}[/color][/font][/BubbleContent][font size=11]"[/italic][/font]
# Einstein Engines - Language end

# chat-manager-language-prefix = ({ $language }){" "} - Removed so it doesn't show up, not wanted, but part of the language system.

# THE() is not used here because the entity and its name can technically be disconnected if a nameOverride is passed...
chat-manager-entity-me-wrap-message = [italic]{ PROPER($entity) ->
    *[false] {$entityName} {$message}[/italic]
     [true] {CAPITALIZE($entityName)} {$message}[/italic]
    }

chat-manager-entity-looc-wrap-message = LOOC: [bold]{$entityName}:[/bold] {$message}
chat-manager-send-ooc-wrap-message = OOC: [bold]{$playerName}:[/bold] {$message}
chat-manager-send-ooc-patron-wrap-message = OOC: [icon src="{$tierIcon}"/] [bold][color={$patronColor}]{$playerName}[/color]:[/bold] {$message}
chat-manager-send-ooc-patron-wrap-message-no-icon = OOC: [bold][color={$patronColor}]{$playerName}[/color]:[/bold] {$message}

chat-manager-send-dead-chat-wrap-message = {$deadChannelName}: [bold][BubbleHeader]{$playerName}[/BubbleHeader][/bold] {$verb}: "[BubbleContent]{$message}[/BubbleContent]"
chat-manager-send-admin-dead-chat-wrap-message = {$adminChannelName}: [bold]([BubbleHeader]{$userName}[/BubbleHeader])[/bold] {$verb}: "[BubbleContent]{$message}[/BubbleContent]"
chat-manager-send-admin-chat-wrap-message = {$adminChannelName}: [bold]{$playerName}:[/bold] {$message}
chat-manager-send-admin-announcement-wrap-message = [bold]{$adminChannelName}: {$message}[/bold]

chat-manager-send-hook-ooc-wrap-message = OOC: [bold](D){$senderName}:[/bold] {$message}
chat-manager-send-hook-admin-wrap-message = ADMIN: [bold](D){$senderName}:[/bold] {$message}

chat-manager-dead-channel-name = TOT
chat-manager-admin-channel-name = ADMIN

chat-manager-rate-limited = Du sendest Nachrichten zu schnell!
chat-manager-rate-limit-admin-announcement = Warnung wegen Nachrichtenlimit: { $player }

## Speech verbs for chat

chat-speech-verb-suffix-exclamation = !
chat-speech-verb-suffix-exclamation-strong = !!
chat-speech-verb-suffix-question = ?
chat-speech-verb-suffix-stutter = -
chat-speech-verb-suffix-mumble = ..

chat-speech-verb-name-none = Keine
chat-speech-verb-name-default = Standard
chat-speech-verb-default = sagt
chat-speech-verb-name-exclamation = Ausrufend
chat-speech-verb-exclamation = ruft
chat-speech-verb-name-exclamation-strong = Schreiend
chat-speech-verb-exclamation-strong = schreit
chat-speech-verb-name-question = Fragend
chat-speech-verb-question = fragt
chat-speech-verb-name-stutter = Stotternd
chat-speech-verb-stutter = stottert
chat-speech-verb-name-mumble = Murmelnd
chat-speech-verb-mumble = murmelt

chat-speech-verb-name-arachnid = Spinnentier
chat-speech-verb-insect-1 = zirpt
chat-speech-verb-insect-2 = tschirpt
chat-speech-verb-insect-3 = klickt

chat-speech-verb-name-moth = Motte
chat-speech-verb-winged-1 = flattert
chat-speech-verb-winged-2 = schlägt mit den Flügeln
chat-speech-verb-winged-3 = summt

chat-speech-verb-name-slime = Schleim
chat-speech-verb-slime-1 = schwappt
chat-speech-verb-slime-2 = blubbert
chat-speech-verb-slime-3 = quillt

chat-speech-verb-name-plant = Diona
chat-speech-verb-plant-1 = raschelt
chat-speech-verb-plant-2 = wiegt sich
chat-speech-verb-plant-3 = knarzt

chat-speech-verb-name-robotic = Robotisch
chat-speech-verb-robotic-1 = erklärt
chat-speech-verb-robotic-2 = piept
chat-speech-verb-robotic-3 = bippt

chat-speech-verb-name-reptilian = Reptilienartig
chat-speech-verb-reptilian-1 = zischt
chat-speech-verb-reptilian-2 = schnaubt
chat-speech-verb-reptilian-3 = faucht

chat-speech-verb-name-skeleton = Skelett / Plasmamann
chat-speech-verb-skeleton-1 = rasselt
chat-speech-verb-skeleton-2 = klappert
chat-speech-verb-skeleton-3 = knochelt
chat-speech-verb-skeleton-4 = klackert
chat-speech-verb-skeleton-5 = knackt

chat-speech-verb-name-vox = Vox
chat-speech-verb-vox-1 = kreischt
chat-speech-verb-vox-2 = kreischt schrill
chat-speech-verb-vox-3 = krächzt

chat-speech-verb-name-canine = Hundeartig
chat-speech-verb-canine-1 = bellt
chat-speech-verb-canine-2 = wufft
chat-speech-verb-canine-3 = heult

chat-speech-verb-name-goat = Ziege
chat-speech-verb-goat-1 = meckert
chat-speech-verb-goat-2 = grunzt
chat-speech-verb-goat-3 = schreit

chat-speech-verb-name-small-mob = Maus
chat-speech-verb-small-mob-1 = quiekt
chat-speech-verb-small-mob-2 = fiept

chat-speech-verb-name-large-mob = Karpfen
chat-speech-verb-large-mob-1 = brüllt
chat-speech-verb-large-mob-2 = knurrt

chat-speech-verb-name-monkey = Affe
chat-speech-verb-monkey-1 = schnattert
chat-speech-verb-monkey-2 = kreischt

chat-speech-verb-name-cluwne = Cluwne

chat-speech-verb-name-parrot = Papagei
chat-speech-verb-parrot-1 = krächzt
chat-speech-verb-parrot-2 = zwitschert
chat-speech-verb-parrot-3 = tschirpt

chat-speech-verb-cluwne-1 = kichert
chat-speech-verb-cluwne-2 = grölt
chat-speech-verb-cluwne-3 = lacht

chat-speech-verb-name-ghost = Geist
chat-speech-verb-ghost-1 = jammert
chat-speech-verb-ghost-2 = haucht
chat-speech-verb-ghost-3 = summt
chat-speech-verb-ghost-4 = murmelt

chat-speech-verb-name-electricity = Elektrizität
chat-speech-verb-electricity-1 = knistert
chat-speech-verb-electricity-2 = summt
chat-speech-verb-electricity-3 = kreischt

# Goob
#chat-speech-verb-vulpkanin-1 = rawrs
#chat-speech-verb-vulpkanin-2 = barks
#chat-speech-verb-vulpkanin-3 = rurs
#chat-speech-verb-vulpkanin-4 = yaps
#chat-speech-verb-vulpkanin = Vulpkanin

chat-speech-verb-name-wawa = Wawa
chat-speech-verb-wawa-1 = intoniert
chat-speech-verb-wawa-2 = erklärt
chat-speech-verb-wawa-3 = verkündet
chat-speech-verb-wawa-4 = sinniert
