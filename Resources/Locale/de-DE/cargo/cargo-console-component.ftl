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
cargo-console-menu-title = Frachtanfrage-Konsole
cargo-console-menu-flavor-left = Bestelle noch mehr Pizzaboxen als sonst!
cargo-console-menu-flavor-right = v2.1
cargo-console-menu-account-name-label = Konto:{" "}
cargo-console-menu-account-name-none-text = Keine
cargo-console-menu-account-name-format = [bold][color={$color}]{$name}[/color][/bold] [font="Monospace"]\[{$code}\][/font]
cargo-console-menu-shuttle-name-label = Name des Shuttle:{" "}
cargo-console-menu-shuttle-name-none-text = Keine
cargo-console-menu-points-label = Guthaben:{" "}
cargo-console-menu-points-amount = ${$amount}
cargo-console-menu-shuttle-status-label = Shuttle-Status:{" "}
cargo-console-menu-shuttle-status-away-text = Unterwegs
cargo-console-menu-order-capacity-label = Auftragskapazität:{" "}
cargo-console-menu-call-shuttle-button = Telepad aktivieren
cargo-console-menu-permissions-button = Berechtigungen
cargo-console-menu-categories-label = Kategorien:{" "}
cargo-console-menu-search-bar-placeholder = Suche
cargo-console-menu-requests-label = Anfragen
cargo-console-menu-orders-label = Bestellungen
cargo-console-menu-order-row-title = {$productName} (x{$orderAmount} für {$orderPrice}$)
cargo-console-menu-populate-orders-cargo-order-row-product-name-text = Angefordert von: {$orderRequester} ([color={$accountColor}]{$account}[/color])
cargo-console-menu-order-row-product-description = Grund: {$orderReason}
cargo-console-menu-order-row-button-approve = Genehmigen
cargo-console-menu-order-row-button-cancel = Abbrechen
cargo-console-menu-order-row-alerts-reason-absent = Der Grund ist nicht angegeben
cargo-console-menu-order-row-alerts-requester-unknown = Unbekannt
cargo-console-menu-populate-categories-all-text = Alle
cargo-console-menu-tab-title-orders = Bestellungen
cargo-console-menu-tab-title-funds = Überweisungen
cargo-console-menu-account-action-transfer-limit = Überweisungslimit:
cargo-console-menu-account-action-transfer-limit-amount = ${$amount}
cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold](Unbegrenzt)[/color]
cargo-console-menu-account-action-select = [bold]Kontoaktion:[/bold]
cargo-console-menu-account-action-amount = [bold]Betrag:[/bold] $
cargo-console-menu-account-action-button = Überweisen
cargo-console-menu-toggle-account-lock-button = Überweisungslimit umschalten
cargo-console-menu-account-action-option-withdraw = Bargeld abheben
cargo-console-menu-account-action-option-transfer = Gelder an {$code} überweisen

# Orders
cargo-console-order-not-allowed = Zugriff nicht erlaubt
cargo-console-station-not-found = Keine Station verfügbar
cargo-console-invalid-product = Ungültige Produkt-ID
cargo-console-too-many = Zu viele genehmigte Bestellungen
cargo-console-snip-snip = Bestellung auf Kapazität gekürzt
cargo-console-insufficient-funds = Nicht genug Guthaben (benötigt: {$cost})
cargo-console-unfulfilled = Kein Platz, um die Bestellung zu erfüllen
cargo-console-trade-station = Gesendet an {$destination}
cargo-console-unlock-approved-order-broadcast = [bold]{$productName} x{$orderAmount}[/bold] für [bold]{$cost}[/bold] wurde von [bold]{$approver}[/bold] genehmigt
cargo-console-fund-withdraw-broadcast = [bold]{$name} hat {$amount} Spesos von {$name1} \[{$code1}\] abgehoben
cargo-console-fund-transfer-broadcast = [bold]{$name} hat {$amount} Spesos von {$name1} \[{$code1}\] an {$name2} \[{$code2}\] überwiesen[/bold]
cargo-console-fund-transfer-user-unknown = Unbekannt

# GoobStation - cooldown on Cargo Orders (specifically gamba)
cargo-console-cooldown-count = Es kann nicht mehr als ein {$product} gleichzeitig bestellt werden.
cargo-console-cooldown-active = Bestellungen für {$product} sind für weitere {$timeCount} {$timeUnits} nicht möglich.

cargo-console-paper-reason-default = Keine
cargo-console-paper-approver-default = Selbst
cargo-console-paper-print-name = Bestellung #{$orderNumber}
cargo-console-paper-print-text = [head=2]Bestellung #{$orderNumber}[/head]
    {"[bold]Artikel:[/bold]"} {$itemName} (x{$orderQuantity})
    {"[bold]Angefordert von:[/bold]"} {$requester}
    
    {"[head=3]Bestellinformationen[/head]"}
    {"[bold]Zahler[/bold]:"} {$account} [font="Monospace"]\[{$accountcode}\][/font]
    {"[bold]Genehmigt von:[/bold]"} {$approver}
    {"[bold]Grund:[/bold]"} {$reason}

# Cargo shuttle console
cargo-shuttle-console-menu-title = Frachtshuttle-Konsole
cargo-shuttle-console-station-unknown = Unbekannt
cargo-shuttle-console-shuttle-not-found = Nicht gefunden
cargo-shuttle-console-organics = Entdeckte organische Lebensformen auf dem Shuttle
cargo-no-shuttle = Kein Frachtshuttle gefunden!

# Funding allocation console
cargo-funding-alloc-console-menu-title = Mittelzuweisungs-Konsole
cargo-funding-alloc-console-label-account = [bold]Konto[/bold]
cargo-funding-alloc-console-label-code = [bold] Code [/bold]
cargo-funding-alloc-console-label-balance = [bold] Kontostand [/bold]
cargo-funding-alloc-console-label-cut = [bold] Gewinnverteilung (%) [/bold]

cargo-funding-alloc-console-label-primary-cut = Anteil der Fracht an Mitteln aus Quellen ohne Lockbox (%):
cargo-funding-alloc-console-label-lockbox-cut = Anteil der Fracht an Mitteln aus Lockbox-Verkäufen (%):

cargo-funding-alloc-console-label-help-non-adjustible = Die Fracht erhält {$percent}% der Gewinne aus Verkäufen ohne Lockbox. Der Rest wird wie unten angegeben aufgeteilt:
cargo-funding-alloc-console-label-help-adjustible = Die verbleibenden Mittel aus Quellen ohne Lockbox werden wie unten angegeben verteilt:
cargo-funding-alloc-console-button-save = Änderungen speichern
cargo-funding-alloc-console-label-save-fail = [bold]Ungültige Gewinnverteilung![/bold] [color=red]({$pos ->
    [1] +
    *[-1] -
}{$val}%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]Warendetails[/head]
    {"[bold]Produkt:[/bold]"} {$product}
    {"[bold]Beschreibung:[/bold]"} {$description}
    {"[bold]Stückpreis:[/bold]"} ${$unit}
    {"[bold]Menge:[/bold]"} {$amount}
    {"[bold]Kosten:[/bold]"} ${$cost}
    
    {"[head=3]Kaufdetails[/head]"}
    {"[bold]Besteller:[/bold]"} {$orderer}
    {"[bold]Grund:[/bold]"} {$reason}