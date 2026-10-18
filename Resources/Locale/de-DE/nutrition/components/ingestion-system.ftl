### Interaction Messages

# System

## When trying to ingest without the required utensil... but you gotta hold it
ingestion-you-need-to-hold-utensil = Du musst {$utensil} in der Hand halten, um das zu essen!

ingestion-try-use-is-empty = {CAPITALIZE(THE($entity))} ist leer!
ingestion-try-use-wrong-utensil = Du kannst {THE($food)} nicht mit {$utensil} {$verb}.

ingestion-remove-mask = Du musst zuerst {$entity} abnehmen.

## Failed Ingestion

ingestion-you-cannot-ingest-any-more = Du kannst nicht noch mehr {$verb}!
ingestion-other-cannot-ingest-any-more = {CAPITALIZE(SUBJECT($target))} kann nicht noch mehr {$verb}!

ingestion-cant-digest = Du kannst {THE($entity)} nicht verdauen!
ingestion-cant-digest-other = {CAPITALIZE(SUBJECT($target))} kann {THE($entity)} nicht verdauen!

## Action Verbs, not to be confused with Verbs

ingestion-verb-food = Essen
ingestion-verb-drink = Trinken

# Edible Component

edible-nom = Nom. {$flavors}
edible-nom-other = Nom.
edible-slurp = Schlürf. {$flavors}
edible-slurp-other = Schlürf.
edible-swallow = Du schluckst { THE($food) } hinunter
edible-gulp = Schluck. {$flavors}
edible-gulp-other = Schluck.

edible-has-used-storage = Du kannst { THE($food) } nicht {$verb}, solange ein Gegenstand darin verstaut ist.

## Nouns

edible-noun-edible = genießbar
edible-noun-food = Lebensmittel
edible-noun-drink = Getränke
edible-noun-pill = Pille

## Verbs

edible-verb-edible = Verschlucken
edible-verb-food = Essen
edible-verb-drink = Getränke
edible-verb-pill = Schwalben

## Force feeding

edible-force-feed = {CAPITALIZE(THE($user))} versucht, dich zu zwingen, etwas zu {$verb}!
edible-force-feed-success = {CAPITALIZE(THE($user))} hat dich gezwungen, etwas zu {$verb}! {$flavors}
edible-force-feed-success-user = Du hast {THE($target)} erfolgreich gefüttert.
