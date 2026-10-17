# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 FoLoKe <36813380+FoLoKe@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 ShadowCommander <10494922+ShadowCommander@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 mirrorcult <notzombiedude@gmail.com>
# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 yglop <95057024+yglop@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

comp-kitchen-spike-deny-collect = { CAPITALIZE(THE($this)) } ist schon belegt, sammle zuerst das Fleisch ein!
comp-kitchen-spike-deny-butcher = { CAPITALIZE(THE($victim)) } kann auf { THE($this) } nicht geschlachtet werden.
comp-kitchen-spike-deny-changeling = { CAPITALIZE(THE($victim)) } wehrt sich dagegen, auf { THE($this) } gehängt zu werden.
comp-kitchen-spike-deny-absorbed = An { CAPITALIZE(THE($victim)) } gibt es nichts mehr zu schlachten.
comp-kitchen-spike-deny-butcher-knife = { CAPITALIZE(THE($victim)) } kann auf { THE($this) } nicht geschlachtet werden, du musst es mit einem Messer schlachten.
comp-kitchen-spike-deny-not-dead = { CAPITALIZE(THE($victim)) } kann nicht geschlachtet werden. { CAPITALIZE(SUBJECT($victim)) } { CONJUGATE-BE($victim) } nicht tot!
comp-kitchen-spike-begin-hook-self = Du beginnst, dich auf { THE($hook) } zu ziehen!
comp-kitchen-spike-begin-hook-self-other = { CAPITALIZE(THE($victim)) } beginnt, { REFLEXIVE($victim) } auf { THE($hook) } zu ziehen!

comp-kitchen-spike-begin-hook-other-self = Du beginnst, { THE($victim) } auf { THE($hook) } zu ziehen!
comp-kitchen-spike-begin-hook-other = { CAPITALIZE(THE($user)) } beginnt, { THE($victim) } auf { THE($hook) } zu ziehen!

comp-kitchen-spike-hook-self = Du wirfst dich auf { THE($hook) }!
comp-kitchen-spike-hook-self-other = { CAPITALIZE(THE($victim)) } wirft { REFLEXIVE($victim) } auf { THE($hook) }!

comp-kitchen-spike-hook-other-self = Du wirfst { THE($victim) } auf { THE($hook) }!
comp-kitchen-spike-hook-other = { CAPITALIZE(THE($user)) } wirft { THE($victim) } auf { THE($hook) }!

comp-kitchen-spike-begin-unhook-self = Du beginnst, dich von { THE($hook) } herunterzuziehen!
comp-kitchen-spike-begin-unhook-self-other = { CAPITALIZE(THE($victim)) } beginnt, { REFLEXIVE($victim) } von { THE($hook) } herunterzuziehen!

comp-kitchen-spike-begin-unhook-other-self = Du beginnst, { THE($victim) } von { THE($hook) } herunterzuziehen!
comp-kitchen-spike-begin-unhook-other = { CAPITALIZE(THE($user)) } beginnt, { THE($victim) } von { THE($hook) } herunterzuziehen!

comp-kitchen-spike-unhook-self = Du hast dich von { THE($hook) } befreit!
comp-kitchen-spike-unhook-self-other = { CAPITALIZE(THE($victim)) } befreit { REFLEXIVE($victim) } von { THE($hook) }!

comp-kitchen-spike-unhook-other-self = Du befreist { THE($victim) } von { THE($hook) }!
comp-kitchen-spike-unhook-other = { CAPITALIZE(THE($user)) } befreit { THE($victim) } von { THE($hook) }!

comp-kitchen-spike-begin-butcher-self = Du fängst an, { THE($victim) } zu schlachten!
comp-kitchen-spike-begin-butcher = { CAPITALIZE(THE($user)) } beginnt, { THE($victim) } zu schlachten!

comp-kitchen-spike-butcher-self = Du hast { THE($victim) } geschlachtet!
comp-kitchen-spike-butcher = { CAPITALIZE(THE($user)) } schlachtet { THE($victim) }!

comp-kitchen-spike-unhook-verb = Aushaken

comp-kitchen-spike-hooked = [color=red]{ CAPITALIZE(THE($victim)) } hängt an diesem Spieß![/color]

comp-kitchen-spike-meat-name = { $name } ({ $victim })

comp-kitchen-spike-victim-examine = [color=orange]{ CAPITALIZE(SUBJECT($target)) } Sieht ziemlich schlank aus.[/color]
