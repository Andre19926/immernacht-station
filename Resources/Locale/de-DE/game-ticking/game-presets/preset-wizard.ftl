## Survivor

roles-antag-survivor-name = Überlebender
# It's a Halo reference
roles-antag-survivor-objective = Aktuelles Ziel: Überleben

survivor-role-greeting =
    Du bist ein Überlebender. Vor allem musst du es lebend zurück zum Central Command schaffen.
    Sammle so viel Feuerkraft wie nötig, um dein Überleben zu garantieren.
    Vertraue niemandem.

survivor-round-end-dead-count =
{
    $deadCount ->
        [one] [color=red]{$deadCount}[/color] Überlebender starb.
        *[other] [color=red]{$deadCount}[/color] Überlebende starben.
}

survivor-round-end-alive-count =
{
    $aliveCount ->
        [one] [color=yellow]{$aliveCount}[/color] Der Überlebende wurde auf der Station eingesperrt.
        *[other] [color=yellow]{$aliveCount}[/color] Überlebende wurden auf der Station eingesperrt.
}

survivor-round-end-alive-on-shuttle-count =
{
    $aliveCount ->
        [one] [color=green]{$aliveCount}[/color] Überlebender schaffte es lebendig.
        *[other] [color=green]{$aliveCount}[/color] Überlebende schafften es lebendig.
}

## Wizard
# Goob commented out.
#objective-issuer-swf = [color=turquoise]The Space Wizards Federation[/color]
#
#wizard-title = Wizard
#wizard-description = There's a Wizard on the station! You never know what they might do.
#
#roles-antag-wizard-name = Wizard
#roles-antag-wizard-objective = Teach them a lesson they'll never forget.
#
#wizard-role-greeting =
#    It's wizard time, fireball!
#    There's been tensions between the Space Wizards Federation and NanoTrasen. You've been selected by the Space Wizards Federation to pay a visit to the station and "remind them" why spellcasters are not to be trifled with.
#    Cause mayhem and destruction! What you do is up to you, but remember that the Space Wizards want you to make it out alive.
#
#wizard-round-end-name = wizard

## TODO: Wizard Apprentice (Coming sometime post-wizard release)
