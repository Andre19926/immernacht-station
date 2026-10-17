### Spezielle Nachrichten für interne Lokalisierungsfunktionen.

# Intern von der Funktion PRESSURE() verwendet.
zzzz-fmt-pressure = { TOSTRING($divided, "F1") } { $places ->
    [0] kPa
    [1] MPa
    [2] GPa
    [3] TPa
    [4] PBa
    *[5] ???
}

# Intern von der Funktion POWERWATTS() verwendet.
zzzz-fmt-power-watts = { TOSTRING($divided, "F1") } { $places ->
    [0] W
    [1] kW
    [2] MW
    [3] GW
    [4] TW
    *[5] ???
}

# Intern von der Funktion POWERJOULES() verwendet.
# Hinweis: 1 Joule = 1 Watt für 1 Sekunde (Watt mit Sekunden multiplizieren ergibt Joule).
# Daher entspricht 1 Kilowattstunde 3.600.000 Joule (3,6 MJ).
zzzz-fmt-power-joules = { TOSTRING($divided, "F1") } { $places ->
    [0] J
    [1] kJ
    [2] MJ
    [3] GJ
    [4] TJ
    *[5] ???
}

# Intern von der Funktion ENERGYWATTHOURS() verwendet.
zzzz-fmt-energy-watt-hours = { TOSTRING($divided, "F1") } { $places ->
    [0] Wh
    [1] kWh
    [2] MWh
    [3] GWh
    [4] TWh
    *[5] ???
}

# Intern von der Funktion PLAYTIME() verwendet.
zzzz-fmt-playtime = {$hours} Std. {$minutes} Min.
