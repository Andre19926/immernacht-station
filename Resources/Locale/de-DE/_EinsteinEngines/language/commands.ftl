command-list-langs-desc = Listet die Sprachen auf, die deine aktuelle Entity im Moment sprechen kann.
command-list-langs-help = Verwendung: {$command}

command-saylang-desc = Sende eine Nachricht in einer bestimmten Sprache. Um eine Sprache auszuwählen, kannst du entweder den Namen der Sprache oder ihre Position in der Liste der Sprachen verwenden.
command-saylang-help = Verwendung: {$command} <language id> <Message>. Beispiel: {$command} TauCetiBasic "Hallo Welt!". Beispiel: {$command} 1 "Hallo Welt!"

command-language-select-desc = Wählt die aktuell gesprochene Sprache deiner Entity. Du kannst den Namen der Sprache oder ihre Position in der Sprachliste angeben.
command-language-select-help = Verwendung: {$command} <language id>. Beispiel: {$command} 1. Beispiel: {$command} TauCetiBasic

command-language-spoken = gesprochen:
command-language-understood = Verstanden:
command-language-current-entry = {$id}. {$language} - {$name} (aktuell)
command-language-entry = {$id}. {$language} - {$name}

command-language-invalid-number = Die Sprachnummer muss zwischen 0 und {$total} liegen. Alternativ kannst du den Sprachnamen verwenden.
command-language-invalid-language = Die Sprache {$id} Es existiert nicht oder man kann es nicht sprechen.

# Toolshed

command-description-language-add = Fügt der übergebenen Entity eine neue Sprache hinzu. Die beiden letzten Argumente geben an, ob sie gesprochen bzw. verstanden werden soll. Beispiel: 'self language:add "Canilunzt" true true'
command-description-language-rm = Entfernt eine Sprache aus dem piped Entity. Funktioniert ähnlich wie language:add. Beispiel: 'self language:rm 'TauCetiBasic' true true'.
command-description-language-lsspoken = Listet alle Sprachen auf, die die Entity sprechen kann. Beispiel: 'self language:lsspoken'
command-description-language-lsunderstood = Listet alle Sprachen auf, die die Entity verstehen kann. Beispiel: 'self language:lssunderstood'

command-description-translator-addlang = Fügt der übergebenen Übersetzer-Entity eine neue Zielsprache hinzu. Details siehe language:add.
command-description-translator-rmlang = Entfernt eine Zielsprache aus der Piped Translator Entity. Siehe language:rm für Details.
command-description-translator-addrequired = Fügt der übergebenen Übersetzer-Entity eine neue erforderliche Sprache hinzu. Beispiel: 'ent 1234 translator:addrequired "TauCetiBasic"'
command-description-translator-rmrequired = Entfernt eine erforderliche Sprache aus der Piped Translator Entity. Beispiel: "ent 1234 translator:rmrequired "TauCetiBasic"
command-description-translator-lsspoken = Listet alle gesprochenen Sprachen der übergebenen Übersetzer-Entity auf. Beispiel: 'ent 1234 translator:lsspoken'
command-description-translator-lsunderstood = Listet alle verstandenen Sprachen der übergebenen Übersetzer-Entity auf. Beispiel: 'ent 1234 translator:lssunderstood'
command-description-translator-lsrequired = Listet alle erforderlichen Sprachen der übergebenen Übersetzer-Entity auf. Beispiel: 'ent 1234 translator:lsrequired'

command-language-error-this-will-not-work = Das wird nicht funktionieren.
command-language-error-not-a-translator = Stelle {$entity} ist kein Übersetzer.
