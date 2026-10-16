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

lathe-menu-title = Drehmenü
lathe-menu-queue = Schlange
lathe-menu-server-list = Serverliste
lathe-menu-sync = Sync
lathe-menu-search-designs = Suchdesigns
lathe-menu-category-all = alle
lathe-menu-search-filter = Filter:
lathe-menu-amount = Betrag:
lathe-menu-recipe-count = { $count ->
    [1] {$count} Rezeptur
    *[other] {$count} Rezepte
}
lathe-menu-reagent-slot-examine = Es hat einen Schlitz für einen Becher an der Seite.
lathe-reagent-dispense-no-container = Flüssiges Ausströmen aus {THE($name)} Auf den Boden!
lathe-menu-result-reagent-display = {$reagent} ({$amount}u)
lathe-menu-material-display = {$material} ({$amount})
lathe-menu-tooltip-display = {$amount} of {$material}
lathe-menu-description-display = [italic]{$description}[/italic]
lathe-menu-material-amount = { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit}
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)}
}
lathe-menu-material-amount-missing = { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit} von {$material} ([color=red]{NATURALFIXED($missingAmount, 2)} {$unit} fehlt[/color])
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)} von {$material} ([color=red]{NATURALFIXED($missingAmount, 2)} {MAKEPLURAL($unit)} fehlt[/color])
}
lathe-menu-no-materials-message = Kein Material geladen.
lathe-menu-silo-linked-message = Silo Linked
lathe-menu-fabricating-message = Herstellung...
lathe-menu-materials-title = Werkstoffe
lathe-menu-queue-title = Build Queue
lathe-menu-delete-fabricating-tooltip = Abbrechen des Druckens des aktuellen Artikels.
lathe-menu-delete-item-tooltip = Stornieren Sie den Druck dieser Charge.
lathe-menu-move-up-tooltip = Bewegen Sie diesen Batch in der Warteschlange voran.
lathe-menu-move-down-tooltip = Bewegen Sie diesen Batch zurück in die Warteschlange.
lathe-menu-item-single = {$index}. {$name}
lathe-menu-item-batch = {$index}. {$name} ({$printed}/{$total})
# Goobstation?
lathe-menu-queue-reset-title = Warteschlangen zurücksetzen
lathe-menu-queue-reset-material-overflow = Sie merken, dass die Autolathe voll ist.
