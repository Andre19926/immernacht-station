# Poggers examine system

examine-name = Das ist [bold]{$name}[/bold]!
examine-name-selfaware = Das bist du!
examine-can-see = Du betrachtest {OBJECT($ent)} und siehst:
examine-can-see-nothing = {CAPITALIZE(SUBJECT($ent))} ist völlig nackt!
examine-border-line = ═════════════════════
examine-present-tex = Das ist [enttex id={$id} size={ $size }/] [bold]{$name}[/bold]!
examine-present = Das ist [bold]{$name}[/bold]!
examine-present-line = ═══

# TODO: change this dogshit to just map from item slot to string and do the formatting separately
id-examine = • Am Gürtel: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
head-examine = • Auf dem Kopf: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
eyes-examine = • An den Augen: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
mask-examine = • Im Gesicht: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
neck-examine = • Um den Hals: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
ears-examine = • An den Ohren: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
jumpsuit-examine = • Kleidung: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
outer-examine = • Am Körper: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
suitstorage-examine = • Auf der Schulter: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
back-examine = • Auf dem Rücken: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
gloves-examine = • An den Händen: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
belt-examine = • Am Gürtel: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
shoes-examine = • An den Füßen: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}

id-card-examine-full = • ID-Karte: [bold]{$nameAndJob}[/bold]

# Selfaware version

examine-can-see-selfaware = Du betrachtest dich selbst und siehst:
examine-can-see-nothing-selfaware = Du bist völlig nackt!

id-examine-selfaware = • Am Gürtel: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
head-examine-selfaware = • Auf deinem Kopf: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
eyes-examine-selfaware = • An deinen Augen: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
mask-examine-selfaware = • In deinem Gesicht: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
neck-examine-selfaware = • Um deinen Hals: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
ears-examine-selfaware = • An deinen Ohren: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
jumpsuit-examine-selfaware = • Kleidung: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
outer-examine-selfaware = • An deinem Körper: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
suitstorage-examine-selfaware = • Auf deiner Schulter: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
back-examine-selfaware = • Auf deinem Rücken: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
gloves-examine-selfaware = • An deinen Händen: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
belt-examine-selfaware = • An deinem Gürtel: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}
shoes-examine-selfaware = • An deinen Füßen: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
}

# Selfaware examine

comp-hands-examine-empty-selfaware = Du hältst nichts in den Händen.
comp-hands-examine-selfaware = Du hältst { $items }.

humanoid-appearance-component-examine-selfaware = Du bist { $species } ({ $age }).
