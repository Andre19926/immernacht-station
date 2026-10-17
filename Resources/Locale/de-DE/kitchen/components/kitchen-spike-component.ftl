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

comp-kitchen-spike-deny-collect = { CAPITALIZE(THE($this)) } Hat schon etwas drauf, fertig sein Fleisch zuerst zu sammeln!
comp-kitchen-spike-deny-butcher = { CAPITALIZE(THE($victim)) } kann nicht abgeschlachtet werden auf { THE($this) }.
comp-kitchen-spike-deny-changeling = { CAPITALIZE(THE($victim)) } Resists werden aufgesetzt { THE($this) }.
comp-kitchen-spike-deny-absorbed = { CAPITALIZE(THE($victim)) } Hat nichts mehr zu Metzger.
comp-kitchen-spike-deny-butcher-knife = { CAPITALIZE(THE($victim)) } kann nicht abgeschlachtet werden auf { THE($this) }dich müssen es mit einem Messer abschlachten.
comp-kitchen-spike-deny-not-dead = { CAPITALIZE(THE($victim)) } kann nicht abgeschlachtet werden. { CAPITALIZE(SUBJECT($victim)) } { CONJUGATE-BE($victim) } Nicht tot!
comp-kitchen-spike-begin-hook-self = Du fängst an, dich auf { THE($hook) }!
comp-kitchen-spike-begin-hook-self-other = { CAPITALIZE(THE($victim)) } Beginnt zu ziehen { REFLEXIVE($victim) } auf { THE($hook) }!

comp-kitchen-spike-begin-hook-other-self = Du fängst an zu ziehen { CAPITALIZE(THE($victim)) } auf { THE($hook) }!
comp-kitchen-spike-begin-hook-other = { CAPITALIZE(THE($user)) } Beginnt zu ziehen { CAPITALIZE(THE($victim)) } auf { THE($hook) }!

comp-kitchen-spike-hook-self = Du warfst dich auf { THE($hook) }!
comp-kitchen-spike-hook-self-other = { CAPITALIZE(THE($victim)) } Wurf { REFLEXIVE($victim) } am { THE($hook) }!

comp-kitchen-spike-hook-other-self = Du warfst { CAPITALIZE(THE($victim)) } am { THE($hook) }!
comp-kitchen-spike-hook-other = { CAPITALIZE(THE($user)) } Wurf { CAPITALIZE(THE($victim)) } am { THE($hook) }!

comp-kitchen-spike-begin-unhook-self = Du fängst an, dich selbst wegzuziehen { THE($hook) }!
comp-kitchen-spike-begin-unhook-self-other = { CAPITALIZE(THE($victim)) } Beginnt zu ziehen { REFLEXIVE($victim) } ausgeschaltet { THE($hook) }!

comp-kitchen-spike-begin-unhook-other-self = Du fängst an zu ziehen { CAPITALIZE(THE($victim)) } ausgeschaltet { THE($hook) }!
comp-kitchen-spike-begin-unhook-other = { CAPITALIZE(THE($user)) } Beginnt zu ziehen { CAPITALIZE(THE($victim)) } ausgeschaltet { THE($hook) }!

comp-kitchen-spike-unhook-self = Du hast dich selbst ausgeschaltet { THE($hook) }!
comp-kitchen-spike-unhook-self-other = { CAPITALIZE(THE($victim)) } erhalten { REFLEXIVE($victim) } ausgeschaltet { THE($hook) }!

comp-kitchen-spike-unhook-other-self = Du hast { CAPITALIZE(THE($victim)) } ausgeschaltet { THE($hook) }!
comp-kitchen-spike-unhook-other = { CAPITALIZE(THE($user)) } erhalten { CAPITALIZE(THE($victim)) } ausgeschaltet { THE($hook) }!

comp-kitchen-spike-begin-butcher-self = Du fängst an, { THE($victim) } zu schlachten!
comp-kitchen-spike-begin-butcher = { CAPITALIZE(THE($user)) } beginnt zu schlachten { THE($victim) }!

comp-kitchen-spike-butcher-self = Du hast { THE($victim) } geschlachtet!
comp-kitchen-spike-butcher = { CAPITALIZE(THE($user)) } geschlachtet { THE($victim) }!

comp-kitchen-spike-unhook-verb = Aushaken

comp-kitchen-spike-hooked = [color=red]{ CAPITALIZE(THE($victim)) } ist auf diesem Spike![/color]

comp-kitchen-spike-meat-name = { $name } ({ $victim })

comp-kitchen-spike-victim-examine = [color=orange]{ CAPITALIZE(SUBJECT($target)) } Sieht ziemlich schlank aus.[/color]
