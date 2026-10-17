# SPDX-FileCopyrightText: 2023 0x6273 <0x40@keemail.me>
# SPDX-FileCopyrightText: 2023 James Simonson <jamessimo89@gmail.com>
# SPDX-FileCopyrightText: 2023 brainfood1183 <113240905+brainfood1183@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Ed <96445749+TheShuEd@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

anomaly-component-contact-damage = Die Anomalie reißt von deiner Haut!

anomaly-vessel-component-anomaly-assigned = Anomalie dem Behälter zugewiesen.
anomaly-vessel-component-not-assigned = Dieses Schiff ist keiner Anomalie zugeordnet. Versuche, einen Scanner darauf zu verwenden.
anomaly-vessel-component-assigned = Dieses Schiff ist derzeit einer Anomalie zugeordnet.

anomaly-particles-delta = Deltapartikel
anomaly-particles-epsilon = Epsilonpartikel
anomaly-particles-zeta = Zetapartikel
anomaly-particles-omega = Omegapartikel
anomaly-particles-sigma = Sigmapartikel

anomaly-scanner-component-scan-complete = Scan abgeschlossen!

anomaly-scanner-ui-title = Anomalie-Scanner
anomaly-scanner-no-anomaly = Keine Anomalie derzeit gescannt.
anomaly-scanner-severity-percentage = Aktueller Schweregrad: [color=gray]{$percent}[/color]
anomaly-scanner-severity-percentage-unknown = Aktueller Schweregrad: [color=red]FEHLER[/color]
anomaly-scanner-stability-low = Aktueller Anomaliezustand: [color=gold]Zerfallend[/color]
anomaly-scanner-stability-medium = Aktueller Anomaliezustand: [color=forestgreen]Stabil[/color]
anomaly-scanner-stability-high = Aktueller Anomaliezustand: [color=crimson]Wachsend[/color]
anomaly-scanner-stability-unknown = Aktueller Anomaliezustand: [color=red]FEHLER[/color]
anomaly-scanner-point-output = Punktausgabe: [color=gray]{$point}[/color]
anomaly-scanner-point-output-unknown = Punktausgabe: [color=red]FEHLER[/color]
anomaly-scanner-particle-readout = Partikelreaktionsanalyse:
anomaly-scanner-particle-danger = - [color=crimson]Gefahrenart:[/color] {$type}
anomaly-scanner-particle-unstable = - [color=plum]Instabiler Typ:[/color] {$type}
anomaly-scanner-particle-containment = - [color=goldenrod]Art der Einschließung:[/color] {$type}
anomaly-scanner-particle-transformation = - [color=#6b75fa]Art der Umwandlung:[/color] {$type}
anomaly-scanner-particle-danger-unknown = - [color=crimson]Gefahrenart:[/color] [color=red]FEHLER[/color]
anomaly-scanner-particle-unstable-unknown = - [color=plum]Instabiler Typ:[/color] [color=red]FEHLER[/color]
anomaly-scanner-particle-containment-unknown = - [color=goldenrod]Art der Einschließung:[/color] [color=red]FEHLER[/color]
anomaly-scanner-particle-transformation-unknown = - [color=#6b75fa]Art der Umwandlung:[/color] [color=red]FEHLER[/color]
anomaly-scanner-pulse-timer = Zeit bis zum nächsten Puls: [color=gray]{$time}[/color]

anomaly-gorilla-core-slot-name = Anomaliekern
anomaly-gorilla-charge-none = Es hat keine [bold]Anomaliekern[/bold] Innerhalb davon.
anomaly-gorilla-charge-limit = Es hat [color={$count ->
    [3]green
    [2]yellow
    [1]orange
    [0]red
    *[other]purple
}]{$count} {$count ->
    [one]Ladung
    *[other]Ladungen
}[/color] übrig.
anomaly-gorilla-charge-infinite = Es hat [color=gold]unendlich viele Ladungen[/color]. [italic]Vorerst …[/italic]

anomaly-sync-connected = Anomalie erfolgreich angebracht
anomaly-sync-disconnected = Die Verbindung zur Anomalie ist verloren gegangen!
anomaly-sync-no-anomaly = Keine Anomalie in Reichweite.
anomaly-sync-examine-connected = Es ist [color=darkgreen]befestigt[/color] zu einer Anomalie.
anomaly-sync-examine-not-connected = Es ist [color=darkred]nicht angebracht[/color] zu einer Anomalie.
anomaly-sync-connect-verb-text = Anomalie anbringen
anomaly-sync-connect-verb-message = Eine nahe gelegene Anomalie an {THE($machine)} anschließen.
anomaly-sync-disconnect-verb-text = Anomalie entfernen
anomaly-sync-disconnect-verb-message = Entferne die verbundene Anomalie von {THE($machine)}.

anomaly-generator-ui-title = Anomaliegenerator
anomaly-generator-fuel-display = Kraftstoff:
anomaly-generator-cooldown = Abklingzeit: [color=gray]{$time}[/color]
anomaly-generator-no-cooldown = Abklingzeit: [color=gray]Abgeschlossen[/color]
anomaly-generator-yes-fire = Status: [color=forestgreen]Bereit[/color]
anomaly-generator-no-fire = Status: [color=crimson]Nicht bereit[/color]
anomaly-generator-generate = Anomalie erzeugen
anomaly-generator-charges = {$charges ->
    [one] {$charges} Ladung
    *[other] {$charges} Ladungen
}
anomaly-generator-announcement = Eine Anomalie wurde erzeugt!

anomaly-command-pulse = Pulst eine Ziel-Anomalie
anomaly-command-supercritical = Lässt eine Zielanomalie überkritisch werden

# Flavor text on the footer
anomaly-generator-flavor-left = Eine Anomalie kann innerhalb des Operators entstehen.
anomaly-generator-flavor-right = v1.1

anomaly-behavior-unknown = [color=red]FEHLER. Nicht lesbar.[/color]

anomaly-behavior-title = Verhaltensabweichungs-Analyse:
anomaly-behavior-point = [color=gold]Anomalie produziert {$mod}% der Punkte[/color]

anomaly-behavior-safe = [color=forestgreen]Die Anomalie ist extrem stabil. Sehr seltene Pulsationen.[/color]
anomaly-behavior-slow = [color=forestgreen]Die Häufigkeit von Pulsationen ist viel seltener.[/color]
anomaly-behavior-light = [color=forestgreen]Die Pulsleistung wird deutlich reduziert.[/color]
anomaly-behavior-balanced = Es wurden keine Verhaltensabweichungen festgestellt.
anomaly-behavior-delayed-force = Die Frequenz der Pulsationen ist stark reduziert, aber ihre Leistung wird erhöht.
anomaly-behavior-rapid = Die Frequenz der Pulsation ist viel höher, aber ihre Stärke wird abgeschwächt.
anomaly-behavior-reflect = Es wurde eine Schutzschicht nachgewiesen.
anomaly-behavior-nonsensivity = Es wurde eine schwache Reaktion auf Partikel festgestellt.
anomaly-behavior-sensivity = Es wurde eine verstärkte Reaktion auf Partikel nachgewiesen.
anomaly-behavior-invisibility = Es wurde eine Lichtwellenverzerrung festgestellt.
anomaly-behavior-secret = Interferenz erkannt. Einige Daten können nicht gelesen werden
anomaly-behavior-inconstancy = [color=crimson]Unbeständigkeit wurde festgestellt. Partikeltypen können sich im Laufe der Zeit ändern.[/color]
anomaly-behavior-fast = [color=crimson]Die Pulsationsfrequenz wird stark erhöht.[/color]
anomaly-behavior-strenght = [color=crimson]Die Pulsationsleistung wird deutlich erhöht.[/color]
anomaly-behavior-moving = [color=crimson]Es wurde eine Koordinateninstabilität festgestellt.[/color]
