# SPDX-FileCopyrightText: 2021 Alex Evgrashin <aevgrashin@yandex.ru>
# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 metalgearsloth <comedian_vs_clown@hotmail.com>
# SPDX-FileCopyrightText: 2022 Morb <14136326+Morb0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 beck-thompson <107373427+beck-thompson@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 brainfood1183 <113240905+brainfood1183@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Secret stash component. Stuff like potted plants, comfy chair cushions, etc...

comp-secret-stash-action-hide-success = Du versteckst { THE($item) } in: {$stashname}.
comp-secret-stash-action-hide-container-not-empty = Da ist schon etwas drin!?
comp-secret-stash-action-hide-item-too-big = { CAPITALIZE(THE($item)) } ist zu groß für: {$stashname}.
comp-secret-stash-action-get-item-found-something = In {$stashname} war etwas!
comp-secret-stash-on-examine-found-hidden-item = In {$stashname} ist etwas versteckt!
comp-secret-stash-on-destroyed-popup = Aus {$stashname} fällt etwas heraus!

### Verbs
comp-secret-stash-verb-insert-into-stash = Gegenstand verstecken
comp-secret-stash-verb-insert-message-item-already-inside = In {$stashname} ist bereits ein Gegenstand.
comp-secret-stash-verb-insert-message-no-item = { THE($item) } in {$stashname} verstecken.
comp-secret-stash-verb-take-out-item = Gegenstand greifen
comp-secret-stash-verb-take-out-message-something = Den Inhalt von {$stashname} herausnehmen.
comp-secret-stash-verb-take-out-message-nothing = In {$stashname} ist nichts.

comp-secret-stash-verb-close = Schließen
comp-secret-stash-verb-cant-close = Damit kannst du {$stashname} nicht schließen.
comp-secret-stash-verb-open = Offen

### Stash names
secret-stash-plant = Pflanze
secret-stash-toilet = Toiletten-Spülkasten
secret-stash-plushie = Plüschtier
secret-stash-cake = Kuchen
