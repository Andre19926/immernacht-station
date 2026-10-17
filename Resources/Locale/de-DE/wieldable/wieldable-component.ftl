# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 AJCM-git <60196617+AJCM-git@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Brandon Hu <103440971+Brandon-Huu@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 RiceMar1244 <138547931+RiceMar1244@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Locale for wielding items; i.e. two-handing them

wieldable-verb-text-wield = Wiese
wieldable-verb-text-unwield = unhandlich

wieldable-component-successful-wield = Du trägst { THE($item) }.
wieldable-component-failed-wield = Du bist unhandlich { THE($item) }.
wieldable-component-successful-wield-other = { CAPITALIZE(THE($user)) } Schweben { THE($item) }.
wieldable-component-failed-wield-other = { CAPITALIZE(THE($user)) } unhandlds { THE($item) }.
wieldable-component-blocked-wield = { CAPITALIZE(THE($blocker)) } Blockiert dich vom Ausführen { THE($item) }.

wieldable-component-no-hands = Du hast nicht genug Hände!
wieldable-component-not-enough-free-hands = {$number ->
    [one] dich brauchen eine freie Hand zu schwingen { THE($item) }.
    *[other] du brauchst { $number } freie Hände zu tragen { THE($item) }.
}
wieldable-component-not-in-hands = { CAPITALIZE(THE($item)) } liegt nicht in deinen Händen!

wieldable-component-requires = { CAPITALIZE(THE($item))} muss ausgeübt werden!

gunwieldbonus-component-examine = Diese Waffe hat die Genauigkeit beim Ausführen verbessert.

gunrequireswield-component-examine = Diese Waffe kann nur abgefeuert werden, wenn sie eingesetzt wird.
