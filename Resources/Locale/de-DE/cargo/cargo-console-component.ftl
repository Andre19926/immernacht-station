# SPDX-FileCopyrightText: 2022 EmoGarbage404 <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Marat Gadzhiev <15rinkashikachi15@gmail.com>
# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2024 Andrew <blackledgecreates@gmail.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 icekot8 <93311212+icekot8@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## UI
cargo-console-menu-title = Ladungsanfragekonsole
cargo-console-menu-flavor-left = Bestellen Sie noch mehr Pizzaboxen als sonst!
cargo-console-menu-flavor-right = v2.1
cargo-console-menu-account-name-label = Konto:{" "}
cargo-console-menu-account-name-none-text = Keine
cargo-console-menu-account-name-format = [bold][color={$color}]{$name}[/color][/bold] [font="Monospace"]\[{$code}\][/font]
cargo-console-menu-shuttle-name-label = Name des Shuttle:{" "}
cargo-console-menu-shuttle-name-none-text = Keine
cargo-console-menu-points-label = Waage:{" "}
cargo-console-menu-points-amount = ${$amount}
cargo-console-menu-shuttle-status-label = Shuttle-Status:{" "}
cargo-console-menu-shuttle-status-away-text = Auswärts
cargo-console-menu-order-capacity-label = Auftragskapazität:{" "}
cargo-console-menu-call-shuttle-button = Telepad aktivieren
cargo-console-menu-permissions-button = Genehmigungen
cargo-console-menu-categories-label = Kategorien:{" "}
cargo-console-menu-search-bar-placeholder = Suche
cargo-console-menu-requests-label = Ersuchen
cargo-console-menu-orders-label = Bestellungen
cargo-console-menu-order-row-title = {$productName} (x{$orderAmount} für {$orderPrice}$)
cargo-console-menu-populate-orders-cargo-order-row-product-name-text = Aufgefordert von: {$orderRequester} von [color={$accountColor}]{$account}[/color]
cargo-console-menu-order-row-product-description = Grund: {$orderReason}
cargo-console-menu-order-row-button-approve = Genehmigung
cargo-console-menu-order-row-button-cancel = Stornierung
cargo-console-menu-order-row-alerts-reason-absent = Der Grund ist nicht angegeben
cargo-console-menu-order-row-alerts-requester-unknown = Unbekannt
cargo-console-menu-populate-categories-all-text = alle
cargo-console-menu-tab-title-orders = Bestellungen
cargo-console-menu-tab-title-funds = Übertragungen
cargo-console-menu-account-action-transfer-limit = Übertragungsgrenze:
cargo-console-menu-account-action-transfer-limit-amount = ${$amount}
cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold](Unbegrenzt)[/color]
cargo-console-menu-account-action-select = [bold]Kontohandlung:[/bold]
cargo-console-menu-account-action-amount = [bold]Betrag:[/bold] $
cargo-console-menu-account-action-button = Übertragung
cargo-console-menu-toggle-account-lock-button = Umschalt-Übertragungsgrenze
cargo-console-menu-account-action-option-withdraw = Abheben von Bargeld
cargo-console-menu-account-action-option-transfer = Transfer von Geldern an {$code}

# Orders
cargo-console-order-not-allowed = Zugang nicht erlaubt
cargo-console-station-not-found = Keine verfügbare Station
cargo-console-invalid-product = ID des ungültigen Produkts
cargo-console-too-many = Zu viele genehmigte Aufträge
cargo-console-snip-snip = Auf Kapazität getrimmter Auftrag
cargo-console-insufficient-funds = Unzureichende Mittel (erforderlich) {$cost})
cargo-console-unfulfilled = Kein Raum, um Ordnung zu erfüllen
cargo-console-trade-station = Gesendet an {$destination}
cargo-console-unlock-approved-order-broadcast = [bold]{$productName} x{$orderAmount}[/bold], die Kosten [bold]{$cost}[/bold]wurde genehmigt durch [bold]{$approver}[/bold]
cargo-console-fund-withdraw-broadcast = [bold]{$name} zurückgezogen {$amount} spesos von {$name1} \[{$code1}\]
cargo-console-fund-transfer-broadcast = [bold]{$name} übertragen {$amount} spesos von {$name1} \[{$code1}\] bis {$name2} \[{$code2}\][/bold]
cargo-console-fund-transfer-user-unknown = Unbekannt

# GoobStation - cooldown on Cargo Orders (specifically gamba)
cargo-console-cooldown-count = Kann nicht mehr als einen bestellen {$product} zu einem Zeitpunkt.
cargo-console-cooldown-active = Bestellungen für {$product} kann nicht für einen anderen {$timeCount} {$timeUnits}.

cargo-console-paper-reason-default = Keine
cargo-console-paper-approver-default = Selbst
cargo-console-paper-print-name = Laufende Nummer{$orderNumber}
cargo-console-paper-print-text = [head=2]Laufende Nummer{$orderNumber}[/head]
    {"[bold]Item:[/bold]"} {$itemName} (x{$orderQuantity})
    {"[bold]Requested by:[/bold]"} {$requester}

    {"[head=3]Order Information[/head]"}
    {"[bold]Payer[/bold]:"} {$account} [font="Monospace"]\[{$accountcode}\][/font]
    {"[bold]Approved by:[/bold]"} {$approver}
    {"[bold]Reason:[/bold]"} {$reason}

# Cargo shuttle console
cargo-shuttle-console-menu-title = Frachtshuttlekonsole
cargo-shuttle-console-station-unknown = Unbekannt
cargo-shuttle-console-shuttle-not-found = Nicht gefunden
cargo-shuttle-console-organics = Entdeckte organische Lebensformen auf dem Shuttle
cargo-no-shuttle = Kein Frachtshuttle gefunden!

# Funding allocation console
cargo-funding-alloc-console-menu-title = Finanzierungszuweisungskonsole
cargo-funding-alloc-console-label-account = [bold]Konto[/bold]
cargo-funding-alloc-console-label-code = [bold] Code [/bold]
cargo-funding-alloc-console-label-balance = [bold] Saldo [/bold]
cargo-funding-alloc-console-label-cut = [bold] Umsatzabteilung (%) [/bold]

cargo-funding-alloc-console-label-primary-cut = Frachtkürzung von Mitteln aus Nicht-Lockbox-Quellen (%):
cargo-funding-alloc-console-label-lockbox-cut = Frachtkürzung von Mitteln aus Lockbox-Verkäufen (%):

cargo-funding-alloc-console-label-help-non-adjustible = Fracht erhält {$percent}% der Gewinne aus Nicht-Lockbox-Verkäufen. Der Rest wird wie folgt aufgeteilt:
cargo-funding-alloc-console-label-help-adjustible = Verbleibende Mittel aus Nicht-Lockbox-Quellen werden wie folgt verteilt:
cargo-funding-alloc-console-button-save = Änderungen speichern
cargo-funding-alloc-console-label-save-fail = [bold]Revenue Divisions Invalid![/bold] [color=red]({$pos ->
    [1] +
    *[-1] -
}{$val}%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]Angaben zu Vermögenswerten[/head]
    {"[bold]Product:[/bold]"} {$product}
    {"[bold]Description:[/bold]"} {$description}
    {"[bold]Unit cost:[/bold"}] ${$unit}
    {"[bold]Amount:[/bold]"} {$amount}
    {"[bold]Cost:[/bold]"} ${$cost}

    {"[head=3]Purchase Detail[/head]"}
    {"[bold]Orderer:[/bold]"} {$orderer}
    {"[bold]Reason:[/bold]"} {$reason}