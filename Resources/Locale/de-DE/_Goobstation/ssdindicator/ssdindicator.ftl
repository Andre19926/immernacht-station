comp-ssd-person-examined = [color=yellow]{ CAPITALIZE(SUBJECT($ent)) } schläft seit { $time ->
    [one] { $time } Minute
   *[other] { $time } Minuten
}.[/color]
