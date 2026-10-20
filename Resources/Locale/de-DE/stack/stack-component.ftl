# SPDX-FileCopyrightText: 2021 AJCM-git <60196617+AJCM-git@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2021 Remie Richards <remierichards@gmail.com>
# SPDX-FileCopyrightText: 2021 ike709 <ike709@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Ilya246 <57039557+Ilya246@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### UI

# Shown when a stack is examined in details range
comp-stack-examine-detail-count = {$count ->
    [one] Es ist [color={$markupCountColor}]{$count}[/color] Stück enthalten
    *[other] Es sind [color={$markupCountColor}]{$count}[/color] Stück enthalten
} im Stapel.

# Stack status control
comp-stack-status = Anzahl: [color=white]{$count}[/color]

### Interaction Messages

# Shown when attempting to add to a stack that is full
comp-stack-already-full = Der Stapel ist schon voll.

# Shown when a stack becomes full
comp-stack-becomes-full = Der Stapel ist jetzt voll.

# Text related to splitting a stack
comp-stack-split = Du teilst den Stapel.
# Goobstation - Custom stack splitting dialog
comp-stack-split-custom = Teilbetrag ...
comp-stack-split-halve = Halbe
comp-stack-split-too-small = Der Stapel ist zu klein zum Teilen.

# Goobstation - Custom stack splitting dialog
comp-stack-split-size = Max.: {$size}

ui-custom-stack-split-title = Geteilter Betrag
ui-custom-stack-split-line-edit-placeholder = Menge
ui-custom-stack-split-apply = Splitter
