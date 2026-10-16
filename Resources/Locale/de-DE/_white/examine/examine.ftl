# Poggers examine system

examine-name = It's [bold]{$name}[/bold]!
examine-name-selfaware = Du bist es!
examine-can-see = Blick auf {OBJECT($ent)}, können Sie sehen:
examine-can-see-nothing = {CAPITALIZE(SUBJECT($ent))}'s völlig nackt!
examine-border-line = ═════════════════════
examine-present-tex = Dies ist eine [enttex id={$id} size={ $size }/] [bold]{$name}[/bold]!
examine-present = Dies ist eine [bold]{$name}[/bold]!
examine-present-line = ═══

# TODO: change this dogshit to just map from item slot to string and do the formatting separately
id-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} belt.
head-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} head.
eyes-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} eyes.
mask-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} face.
neck-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} neck.
ears-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} ears.
jumpsuit-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} {SUBJECT($ent)} is wearing.
outer-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} body.
suitstorage-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} shoulder.
back-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} back.
gloves-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} hands.
belt-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} belt.
shoes-examine = • {CAPITALIZE(POSS-ADJ($ent))} { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on {POSS-ADJ($ent)} feet.

id-card-examine-full = • {CAPITALIZE(POSS-ADJ($wearer))} ID: [bold]{$nameAndJob}[/bold].

# Selfaware version

examine-can-see-selfaware = Wenn Sie sich selbst betrachten, können Sie sehen:
examine-can-see-nothing-selfaware = Du bist komplett nackt!

id-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your belt.
head-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your head.
eyes-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your eyes.
mask-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your face.
neck-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your neck.
ears-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your ears.
jumpsuit-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} you are wearing.
outer-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your body.
suitstorage-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your shoulder.
back-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your back.
gloves-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your hands.
belt-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your belt.
shoes-examine-selfaware = • Your { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} on your feet.

# Selfaware examine

comp-hands-examine-empty-selfaware = Sie halten nichts.
comp-hands-examine-selfaware = Sie halten { $items }.

humanoid-appearance-component-examine-selfaware = Du bist { INDEFINITE($age) } { $age } { $species }.
