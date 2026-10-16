# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 SX-7 <92227810+SX-7@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 gluesniffler <159397573+gluesniffler@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

server-currency-name-singular = Immernachtmünze
server-currency-name-plural = Immernachtmünzen

## Commands

server-currency-gift-command = Geschenk
server-currency-gift-command-description = Schenkt einen teil ihres guthabens einem anderen spieler.
server-currency-gift-command-help = Verwendung: Geschenk <player> <value>
server-currency-gift-command-error-1 = Du kannst dich nicht selbst schenken!
server-currency-gift-command-error-2 = Sie können es sich nicht leisten, dies zu verschenken! Sie haben ein Gleichgewicht von {$balance}.
server-currency-gift-command-giver = Sie gaben {$player} {$amount}.
server-currency-gift-command-reciever = {$player} gab dir {$amount}.

server-currency-balance-command = Saldo
server-currency-balance-command-description = Gibt dein Gleichgewicht zurück.
server-currency-balance-command-help = Verwendung: Saldo
server-currency-balance-command-return = Sie haben {$balance}.

server-currency-add-command = Rest:Add
server-currency-add-command-description = Fügt Währung zum Kontostand eines Spielers hinzu.
server-currency-add-command-help = Nutzung: balance:add <player> <value>

server-currency-remove-command = Restbetrag:
server-currency-remove-command-description = Entfernt die Währung aus dem Konto eines Spielers.
server-currency-remove-command-help = Nutzung: balance:rem <player> <value>

server-currency-set-command = Saldo: eingestellt
server-currency-set-command-description = Legt das Gleichgewicht eines Spielers fest.
server-currency-set-command-help = Nutzung: balance:set <player> <value>

server-currency-get-command = Saldo: erhalten
server-currency-get-command-description = Bekommt das Gleichgewicht eines Spielers.
server-currency-get-command-help = Verwendung: balance:get <player>

server-currency-command-completion-1 = Benutzername
server-currency-command-completion-2 = Wert
server-currency-command-error-1 = Unfähig, einen Spieler mit diesem Namen zu finden.
server-currency-command-error-2 = Der Wert muss eine ganze Zahl sein.
server-currency-command-return = {$player} hat {$balance}.

# 65% Update

gs-balanceui-title = Lager
gs-balanceui-confirm = Bestätigung

gs-balanceui-gift-label = Übertragung:
gs-balanceui-gift-player = Spieler
gs-balanceui-gift-player-tooltip = Geben Sie den Namen des Spielers ein, an den Sie das Geld senden möchten
gs-balanceui-gift-value = Wert
gs-balanceui-gift-value-tooltip = Geldbetrag zu übertragen

gs-balanceui-shop-label = Token Store
gs-balanceui-shop-empty = Out of stock!
gs-balanceui-shop-buy = Kaufen
gs-balanceui-shop-footer = ⚠ Helfen Sie, Ihr Token zu verwenden. Nur 1 Gebrauch pro Tag.

gs-balanceui-shop-token-label = Tokens
gs-balanceui-shop-tittle-label = Titel

gs-balanceui-shop-buy-token-antag = Kaufen Sie einen Antag Token - {$price} Immernachtmünzen
gs-balanceui-shop-buy-token-admin-abuse = Kaufen Sie einen Admin Abuse Token - {$price} Immernachtmünzen
gs-balanceui-shop-buy-token-hat = Kaufen Sie ein Hat Token - {$price} Immernachtmünzen

gs-balanceui-shop-token-antag = Hochstufiger Antag-Token
gs-balanceui-shop-token-admin-abuse = Admin Missbrauch Token
gs-balanceui-shop-token-hat = Hutmarkierung

gs-balanceui-shop-buy-token-antag-desc = Erlaubt Ihnen, jeden Antag zu werden. (Ausgenommen Zauberer)
gs-balanceui-shop-buy-token-admin-abuse-desc = Ermöglicht es Ihnen, einen Administrator zu bitten, seine Befugnisse gegen Sie zu missbrauchen. Admins werden ermutigt, wild zu werden.
gs-balanceui-shop-buy-token-hat-desc = Ein Admin wird Ihnen einen zufälligen Hut geben.

gs-balanceui-admin-add-label = Geld hinzufügen (oder subtrahieren):
gs-balanceui-admin-add-player = Spielername
gs-balanceui-admin-add-value = Wert

gs-balanceui-remark-token-antag = Einen Antag Token gekauft.
gs-balanceui-remark-token-admin-abuse = Kaufte ein Admin-Missbrauchs-Token.
gs-balanceui-remark-token-hat = Habe einen Hut gekauft.
gs-balanceui-shop-click-confirm = Klicken Sie erneut, um zu bestätigen
gs-balanceui-shop-purchased = Gekauft {$item}
