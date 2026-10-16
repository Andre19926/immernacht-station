# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Kara D <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2021 Vera Aguilera Puerto <6766154+Zumorica@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Morb <14136326+Morb0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Slava0135 <40753025+Slava0135@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 AJCM-git <60196617+AJCM-git@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### GasTankComponent stuff.

# Examine text showing pressure in tank.
comp-gas-tank-examine = Druck: [color=orange]{PRESSURE($pressure)}[/color].

# Examine text when internals are active.
comp-gas-tank-connected = Es ist mit einer externen Komponente verbunden.

# Examine text when valve is open or closed.
comp-gas-tank-examine-open-valve = Gasablassventil ist [color=red]offen[/color].
comp-gas-tank-examine-closed-valve = Gasablassventil ist [color=green]geschlossen[/color].

## ControlVerb
control-verb-open-control-panel-text = Offene Kontrolltafel

## UI
gas-tank-window-internals-toggle-button = Umschalter
gas-tank-window-output-pressure-label = Ausgangsdruck
gas-tank-window-tank-pressure-text = Druck: {$tankPressure} kPA
gas-tank-window-internal-text = Interne Einrichtungen: {$status}
gas-tank-window-internal-connected = [color=green]Verbunden[/color]
gas-tank-window-internal-disconnected = [color=red]Trennung[/color]

## Valve
comp-gas-tank-open-valve = Offenes Ventil
comp-gas-tank-close-valve = Schließventil
