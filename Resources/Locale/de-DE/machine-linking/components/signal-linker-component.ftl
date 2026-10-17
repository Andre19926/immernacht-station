# SPDX-FileCopyrightText: 2021 Paul Ritter <ritter.paul1@googlemail.com>
# SPDX-FileCopyrightText: 2022 Jack Fox <35575261+DubiousDoggo@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

signal-linker-component-saved = Erfolgreich gespeicherter Link zum {$machine}!
signal-linker-component-linked-port = Erfolgreich verknüpft {$machine1}:{$port1} bis {$machine2}:{$port2}!
signal-linker-component-unlinked-port = Erfolgreich unlinked {$machine1}:{$port1} von {$machine2}:{$port2}!
signal-linker-component-connection-refused = {$machine} lehnte die Verbindung ab!
signal-linker-component-max-connections-receiver = Maximale Verbindungen am Empfänger erreicht!
signal-linker-component-max-connections-transmitter = Maximale Verbindungen auf dem Sender erreicht!

signal-linker-component-type-mismatch = Der Porttyp stimmt nicht mit dem Typ des gespeicherten Ports überein!

signal-linker-component-out-of-range = Die Verbindung liegt außerhalb der Reichweite!

# Verbs
signal-linking-verb-text-link-default = Standard-Anschlüsse verknüpfen
signal-linking-verb-success = Alle Standardanschlüsse {$machine} Links.
signal-linking-verb-fail = Fehlgeschlagen, um alle Standard zu verbinden {$machine} Links.
signal-linking-verb-disabled-no-transmitter = Interagiere zuerst mit einem Sender und verknüpfe dann Standardports.
signal-linking-verb-disabled-no-receiver = Interagiere zuerst mit einem Empfänger und verknüpfe dann Standardports.