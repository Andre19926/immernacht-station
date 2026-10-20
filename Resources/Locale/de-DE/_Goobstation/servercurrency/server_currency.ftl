# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 SX-7 <92227810+SX-7@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 gluesniffler <159397573+gluesniffler@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

server-currency-name-singular = Immernachtmünze
server-currency-name-plural = Immernachtmünzen

## Commands

server-currency-gift-command = gift
server-currency-gift-command-description = Schenkt einen Teil deines Guthabens einem anderen Spieler.
server-currency-gift-command-help = Verwendung: gift <player> <value>
server-currency-gift-command-error-1 = Du kannst dich nicht selbst schenken!
server-currency-gift-command-error-2 = Du kannst dir das Schenken nicht leisten! Dein Guthaben beträgt {$balance}.
server-currency-gift-command-giver = Du hast {$player} {$amount} geschenkt.
server-currency-gift-command-reciever = {$player} gab dir {$amount}.

server-currency-balance-command = balance
server-currency-balance-command-description = Gibt dein Guthaben zurück.
server-currency-balance-command-help = Verwendung: balance
server-currency-balance-command-return = Du hast {$balance}.

server-currency-add-command = balance:add
server-currency-add-command-description = Fügt Währung zum Kontostand eines Spielers hinzu.
server-currency-add-command-help = Verwendung: balance:add <player> <value>

server-currency-remove-command = balance:rem
server-currency-remove-command-description = Entfernt die Währung aus dem Konto eines Spielers.
server-currency-remove-command-help = Verwendung: balance:rem <player> <value>

server-currency-set-command = balance:set
server-currency-set-command-description = Legt das Guthaben eines Spielers fest.
server-currency-set-command-help = Verwendung: balance:set <player> <value>

server-currency-get-command = balance:get
server-currency-get-command-description = Zeigt das Guthaben eines Spielers an.
server-currency-get-command-help = Verwendung: balance:get <player>

server-currency-command-completion-1 = Benutzername
server-currency-command-completion-2 = Wert
server-currency-command-error-1 = Es konnte kein Spieler mit diesem Namen gefunden werden.
server-currency-command-error-2 = Der Wert muss eine ganze Zahl sein.
server-currency-command-return = {$player} hat {$balance}.

# 65% Update

gs-balanceui-title = Lager
gs-balanceui-confirm = Bestätigen

gs-balanceui-gift-label = Übertragung:
gs-balanceui-gift-player = Spieler
gs-balanceui-gift-player-tooltip = Gib den Namen des Spielers ein, an den du das Geld senden möchtest
gs-balanceui-gift-value = Wert
gs-balanceui-gift-value-tooltip = Geldbetrag zu übertragen

gs-balanceui-shop-label = Token-Shop
gs-balanceui-shop-empty = Ausverkauft!
gs-balanceui-shop-buy = Kaufen
gs-balanceui-shop-footer = ⚠ Schreibe ein Ahelp, um dein Token zu verwenden. Nur 1 Verwendung pro Tag.

gs-balanceui-shop-token-label = Tokens
gs-balanceui-shop-tittle-label = Titel

gs-balanceui-shop-buy-token-antag = Kaufe einen Antag Token - {$price} Immernachtmünzen
gs-balanceui-shop-buy-token-admin-abuse = Kaufe einen Admin-Abuse-Token – {$price} Immernachtmünzen
gs-balanceui-shop-buy-token-hat = Kaufe ein Hat Token - {$price} Immernachtmünzen

gs-balanceui-shop-token-antag = Hochstufiger Antag-Token
gs-balanceui-shop-token-admin-abuse = Admin Missbrauch Token
gs-balanceui-shop-token-hat = Hutmarkierung

gs-balanceui-shop-buy-token-antag-desc = Erlaubt dir, jeden Antag zu werden. (Ausgenommen Zauberer)
gs-balanceui-shop-buy-token-admin-abuse-desc = Ermöglicht es dir, einen Administrator zu bitten, seine Befugnisse gegen dich zu missbrauchen. Admins werden ermutigt, wild zu werden.
gs-balanceui-shop-buy-token-hat-desc = Ein Admin wird dir einen zufälligen Hut geben.

gs-balanceui-admin-add-label = Geld hinzufügen (oder subtrahieren):
gs-balanceui-admin-add-player = Spielername
gs-balanceui-admin-add-value = Wert

gs-balanceui-remark-token-antag = Einen Antag Token gekauft.
gs-balanceui-remark-token-admin-abuse = Kaufte ein Admin-Missbrauchs-Token.
gs-balanceui-remark-token-hat = Habe einen Hut gekauft.
gs-balanceui-shop-click-confirm = Klicke erneut, um zu bestätigen
gs-balanceui-shop-purchased = Gekauft {$item}
