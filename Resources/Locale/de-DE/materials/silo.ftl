ore-silo-ui-title = Werkstoff Silo
ore-silo-ui-label-clients = Maschinen
ore-silo-ui-label-mats = Werkstoffe
ore-silo-ui-itemlist-entry = {$linked ->
    [true] {"[Linked] "}
    *[False] {""}
} {$name} ({$beacon}) {$inRange ->
    [true] {""}
    *[false] (Außerhalb der Reichweite)
}
