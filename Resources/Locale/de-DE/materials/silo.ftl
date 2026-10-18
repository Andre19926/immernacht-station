ore-silo-ui-title = Werkstoff Silo
ore-silo-ui-label-clients = Maschinen
ore-silo-ui-label-mats = Materialien
ore-silo-ui-itemlist-entry = {$linked ->
    [true] {"[Verknüpft] "}
    *[False] {""}
} {$name} ({$beacon}) {$inRange ->
    [true] {""}
    *[false] (Außerhalb der Reichweite)
}
