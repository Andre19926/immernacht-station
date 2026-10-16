### Interaction Messages

# System

## When trying to ingest without the required utensil... but you gotta hold it
ingestion-you-need-to-hold-utensil = verändert werden müssen {INDEFINITE($utensil)} {$utensil} Das zu essen!

ingestion-try-use-is-empty = {CAPITALIZE(THE($entity))} ist leer!
ingestion-try-use-wrong-utensil = Du kannst nicht {$verb} {THE($food)} mit {INDEFINITE($utensil)} {$utensil}.

ingestion-remove-mask = Sie müssen die {$entity} zuerst.

## Failed Ingestion

ingestion-you-cannot-ingest-any-more = Du kannst nicht {$verb} Mehr noch!
ingestion-other-cannot-ingest-any-more = {CAPITALIZE(SUBJECT($target))} kann nicht {$verb} Mehr noch!

ingestion-cant-digest = Du kannst nicht verdauen {THE($entity)}!
ingestion-cant-digest-other = {CAPITALIZE(SUBJECT($target))} Kann nicht verdauen {THE($entity)}!

## Action Verbs, not to be confused with Verbs

ingestion-verb-food = Essen
ingestion-verb-drink = Trinken

# Edible Component

edible-nom = Nom. {$flavors}
edible-nom-other = Nom.
edible-slurp = Slurp. {$flavors}
edible-slurp-other = Slurp.
edible-swallow = Sie schlucken { THE($food) }
edible-gulp = Schluck. {$flavors}
edible-gulp-other = Schluck.

edible-has-used-storage = Sie können nicht {$verb} { THE($food) } mit einem darin gelagerten Gegenstand.

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

edible-force-feed = {CAPITALIZE(THE($user))} versucht, dich zu machen {$verb} etwas!
edible-force-feed-success = {CAPITALIZE(THE($user))} Zwang dich, {$verb} etwas! {$flavors}
edible-force-feed-success-user = Sie füttern erfolgreich {THE($target)}
