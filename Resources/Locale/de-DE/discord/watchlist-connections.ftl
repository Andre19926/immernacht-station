discord-watchlist-connection-header = { $players ->
        [one] {$players} Spieler auf einer Watchlist hat
        *[other] {$players} Spieler auf einer Watchlist haben
    } sich mit {$serverName} verbunden
discord-watchlist-connection-entry = - {$playerName} mit Nachricht "{$message}"{ $expiry ->
        [0] {""}
        *[other] {" "}(läuft <t:{$expiry}:R> ab)
    }{ $otherWatchlists ->
        [0] {""}
        [one] {" "}und {$otherWatchlists} weitere Watchlist
        *[other] {" "}und {$otherWatchlists} weitere Watchlists
    }
