command-list-langs-desc = Listen Sie Sprachen auf, die Ihre aktuelle Entität im aktuellen Moment sprechen kann.
command-list-langs-help = Verwendung: {$command}

command-saylang-desc = Senden Sie eine Nachricht in einer bestimmten Sprache. Um eine Sprache auszuwählen, können Sie entweder den Namen der Sprache oder ihre Position in der Liste der Sprachen verwenden.
command-saylang-help = Verwendung: {$command} <language id> <Message>. Beispiel: {$command} TauCetiBasic "Hallo Welt!". Beispiel: {$command} 1 "Hallo Welt!"

command-language-select-desc = Wählen Sie die aktuell gesprochene Sprache Ihrer Entität. Sie können entweder den Namen der Sprache oder ihre Position in der Liste der Sprachen verwenden.
command-language-select-help = Verwendung: {$command} <language id>. Beispiel: {$command} 1. Beispiel: {$command} TauCetiBasic

command-language-spoken = gesprochen:
command-language-understood = Verstanden:
command-language-current-entry = {$id}. {$language} - {$name} (aktuell)
command-language-entry = {$id}. {$language} - {$name}

command-language-invalid-number = Die Sprachnummer muss zwischen 0 und {$total}Oder verwenden Sie den Sprachennamen.
command-language-invalid-language = Die Sprache {$id} Es existiert nicht oder man kann es nicht sprechen.

# Toolshed

command-description-language-add = Fügt dem piped Entity eine neue Sprache hinzu. Die beiden letzten Argumente zeigen an, ob es gesprochen / verstanden werden sollte. Beispiel: 'Selbstsprache:add 'Canilunzt' true true'
command-description-language-rm = Entfernt eine Sprache aus dem piped Entity. Funktioniert ähnlich wie language:add. Beispiel: 'self language:rm 'TauCetiBasic' true true'.
command-description-language-lsspoken = Listen Sie alle Sprachen auf, die die Entität sprechen kann. Beispiel: Selbstsprache: lsspoken
command-description-language-lsunderstood = Listen Sie alle Sprachen auf, die das Unternehmen verstehen kann. Beispiel: "Selbstsprache: lssunderstood"

command-description-translator-addlang = Fügt eine neue Zielsprache zur Piped-Übersetzer-Entität hinzu. Siehe language:add für Details.
command-description-translator-rmlang = Entfernt eine Zielsprache aus der Piped Translator Entity. Siehe language:rm für Details.
command-description-translator-addrequired = Fügt eine neue erforderliche Sprache zur Piped-Übersetzer-Entität hinzu. Beispiel: "ent 1234 translator:addrequired "TauCetiBasic"
command-description-translator-rmrequired = Entfernt eine erforderliche Sprache aus der Piped Translator Entity. Beispiel: "ent 1234 translator:rmrequired "TauCetiBasic"
command-description-translator-lsspoken = Listen Sie alle gesprochenen Sprachen für die Piped Übersetzer Entität. Beispiel: "ent 1234 translator:lsspoken"
command-description-translator-lsunderstood = Listet alle verstandenen Sprachen für die Piped Translator Entity auf. Beispiel: "ent 1234 translator:lssunderstood"
command-description-translator-lsrequired = Listet alle erforderlichen Sprachen für die Piped Übersetzer Entity auf. Beispiel: "ent 1234 translator:lsrequired"

command-language-error-this-will-not-work = Das wird nicht funktionieren.
command-language-error-not-a-translator = Stelle {$entity} ist kein Übersetzer.
