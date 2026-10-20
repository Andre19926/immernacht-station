# SPDX-FileCopyrightText: 2022 Eoin Mcloughlin <helloworld@eoinrul.es>
# SPDX-FileCopyrightText: 2022 Rinkashikachi <15rinkashikachi15@gmail.com>
# SPDX-FileCopyrightText: 2022 eoineoineoin <eoin.mcloughlin+gh@gmail.com>
# SPDX-FileCopyrightText: 2023 Justin <justinly@usc.edu>
# SPDX-FileCopyrightText: 2023 Thom <119594676+ItsMeThom@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Crotalus <Crotalus@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

lathe-menu-title = Lathe-Menü
lathe-menu-queue = Warteschlange
lathe-menu-server-list = Serverliste
lathe-menu-sync = Synchronisieren
lathe-menu-search-designs = Baupläne suchen
lathe-menu-category-all = Alle
lathe-menu-search-filter = Filter:
lathe-menu-amount = Menge:
lathe-menu-recipe-count = { $count ->
    [1] {$count} Rezeptur
    *[other] {$count} Rezepte
}
lathe-menu-reagent-slot-examine = Er hat an der Seite einen Steckplatz für ein Becherglas.
lathe-reagent-dispense-no-container = Flüssigkeit läuft aus {THE($name)} auf den Boden!
lathe-menu-result-reagent-display = {$reagent} ({$amount}u)
lathe-menu-material-display = {$material} ({$amount})
lathe-menu-tooltip-display = {$amount} {$material}
lathe-menu-description-display = [italic]{$description}[/italic]
lathe-menu-material-amount = { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit}
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)}
}
lathe-menu-material-amount-missing = { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit} von {$material} ([color=red]{NATURALFIXED($missingAmount, 2)} {$unit} fehlt[/color])
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)} von {$material} ([color=red]{NATURALFIXED($missingAmount, 2)} {MAKEPLURAL($unit)} fehlt[/color])
}
lathe-menu-no-materials-message = Keine Materialien eingelegt.
lathe-menu-silo-linked-message = Silo verbunden
lathe-menu-fabricating-message = Wird hergestellt ...
lathe-menu-materials-title = Materialien
lathe-menu-queue-title = Warteschlange
lathe-menu-delete-fabricating-tooltip = Den aktuellen Druck abbrechen.
lathe-menu-delete-item-tooltip = Diesen Auftrag abbrechen.
lathe-menu-move-up-tooltip = Diesen Auftrag in der Warteschlange nach vorne schieben.
lathe-menu-move-down-tooltip = Diesen Auftrag in der Warteschlange nach hinten schieben.
lathe-menu-item-single = {$index}. {$name}
lathe-menu-item-batch = {$index}. {$name} ({$printed}/{$total})
# Goobstation?
lathe-menu-queue-reset-title = Warteschlange leeren
lathe-menu-queue-reset-material-overflow = Du merkst, dass der Autolathe voll ist.
