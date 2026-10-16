# SPDX-FileCopyrightText: 2022 Eoin Mcloughlin <helloworld@eoinrul.es>
# SPDX-FileCopyrightText: 2022 Flipp Syder <76629141+vulppine@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Vera Aguilera Puerto <6766154+Zumorica@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 eoineoineoin <eoin.mcloughlin+gh@gmail.com>
# SPDX-FileCopyrightText: 2022 vulppine <vulppine@gmail.com>
# SPDX-FileCopyrightText: 2023 Ilya246 <57039557+Ilya246@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 c4llv07e <38111072+c4llv07e@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Southbridge <7013162+southbridge-fur@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# UI

## Window

air-alarm-ui-title = Alarm

air-alarm-ui-access-denied = Unzureichender Zugang!

air-alarm-ui-window-pressure-label = Druck
air-alarm-ui-window-temperature-label = Temperatur
air-alarm-ui-window-alarm-state-label = Status

air-alarm-ui-window-address-label = Anschrift
air-alarm-ui-window-device-count-label = Geräte insgesamt
air-alarm-ui-window-resync-devices-label = Resync

air-alarm-ui-window-mode-label = Modus
air-alarm-ui-window-mode-select-locked-label = [bold][color=red] Moduswahlfehler! [/color][/bold]
air-alarm-ui-window-auto-mode-label = Auto-Modus

-air-alarm-state-name = { $state ->
    [normal] Normal
    [warning] Warning
    [danger] Danger
    [emagged] Emagged
   *[invalid] Invalid
}

air-alarm-ui-window-listing-title = {$address} : {-air-alarm-state-name(state:$state)}
air-alarm-ui-window-pressure = {$pressure} kPa
air-alarm-ui-window-pressure-indicator = Druck: [color={$color}]{$pressure} kPa[/color]
air-alarm-ui-window-temperature = {$tempC} C ({$temperature} K)
air-alarm-ui-window-temperature-indicator = Temperatur: [color={$color}]{$tempC} C ({$temperature} K)[/color]
air-alarm-ui-window-alarm-state = [color={$color}]{-air-alarm-state-name(state:$state)}[/color]
air-alarm-ui-window-alarm-state-indicator = Status: [color={$color}]{-air-alarm-state-name(state:$state)}[/color]

air-alarm-ui-window-tab-vents = Ventile
air-alarm-ui-window-tab-scrubbers = Wäscher
air-alarm-ui-window-tab-sensors = Sensoren

air-alarm-ui-gases = {$gas}: {$amount} Mol{$percentage}%)
air-alarm-ui-gases-indicator = {$gas}: [color={$color}]{$amount} Mol{$percentage}%)[/color]

air-alarm-ui-mode-filtering = Filterung
air-alarm-ui-mode-wide-filtering = Filterung (weit)
air-alarm-ui-mode-fill = Füllen
air-alarm-ui-mode-panic = Panik
air-alarm-ui-mode-none = Keine


air-alarm-ui-pump-direction-siphoning = Absaugen
air-alarm-ui-pump-direction-scrubbing = Waschen
air-alarm-ui-pump-direction-releasing = Freigabe

air-alarm-ui-pressure-bound-nobound = Keine Bindung
air-alarm-ui-pressure-bound-internalbound = Interne Bindung
air-alarm-ui-pressure-bound-externalbound = Extern gebunden
air-alarm-ui-pressure-bound-both = Beide

air-alarm-ui-widget-gas-filters = Gasfilter

## Widgets

### General

air-alarm-ui-widget-enable = Aktiviert
air-alarm-ui-widget-copy = Einstellungen auf ähnliche Geräte kopieren
air-alarm-ui-widget-copy-tooltip = Kopiert die Einstellungen dieses Geräts auf alle Geräte in dieser Luftalarmkarte.
air-alarm-ui-widget-ignore = Ignorieren
air-alarm-ui-atmos-net-device-label = Anschrift: {$address}

### Vent pumps

air-alarm-ui-vent-pump-label = Ventrichtung
air-alarm-ui-vent-pressure-label = Überdruck
air-alarm-ui-vent-external-bound-label = Außengrenze
air-alarm-ui-vent-internal-bound-label = Interne Grenze

### Scrubbers

air-alarm-ui-scrubber-pump-direction-label = Richtung
air-alarm-ui-scrubber-volume-rate-label = Rate (L)
air-alarm-ui-scrubber-wide-net-label = Widenet
air-alarm-ui-scrubber-select-all-gases-label = Wählen Sie alle
air-alarm-ui-scrubber-deselect-all-gases-label = Alle abwählen

### Thresholds

air-alarm-ui-sensor-gases = Gase
air-alarm-ui-sensor-thresholds = Schwellenwerte
air-alarm-ui-thresholds-pressure-title = Schwellenwerte (kPa)
air-alarm-ui-thresholds-temperature-title = Schwellenwerte (K)
air-alarm-ui-thresholds-gas-title = Schwellenwerte (%)
air-alarm-ui-thresholds-upper-bound = Gefahr oben
air-alarm-ui-thresholds-lower-bound = Gefahr unten
air-alarm-ui-thresholds-upper-warning-bound = Warnung oben
air-alarm-ui-thresholds-lower-warning-bound = Warnung unten
air-alarm-ui-thresholds-copy = Grenzwerte für alle Geräte kopieren
air-alarm-ui-thresholds-copy-tooltip = Kopiert die Sensorschwellen dieses Geräts auf alle Geräte in dieser Luftalarmkarte.
