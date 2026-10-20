# Deutsche Grammatik-Funktionen für RobustToolbox (Gegenstück zu RobustToolbox/Resources/Locale/en-US/_engine_lib.ftl).
# Hinweis: Die Funktionen THE(), POSS-ADJ() usw. liefern in den deutschen Texten bewusst nur neutrale Wörter,
# weil Artikel und Possessivpronomen im Deutschen vom Satzbau abhängen.

# Used internally by the THE() function.
# Im Deutschen kein Artikel, damit "{THE($x)}" nie "the ..." ausgibt.
zzzz-the = { $ent }

# Used internally by the SUBJECT() function.
zzzz-subject-pronoun = { GENDER($ent) ->
    [male] er
    [female] sie
    [epicene] sie
   *[neuter] es
   }

# Used internally by the OBJECT() function.
zzzz-object-pronoun = { GENDER($ent) ->
    [male] ihn
    [female] sie
    [epicene] sie
   *[neuter] es
   }

# Used internally by the DAT-OBJ() function.
zzzz-dat-object = { GENDER($ent) ->
    [male] ihm
    [female] ihr
    [epicene] ihnen
   *[neuter] ihm
   }

# Used internally by the GENITIVE() function.
zzzz-genitive = { GENDER($ent) ->
    [male] seiner
    [female] ihrer
    [epicene] ihrer
   *[neuter] seiner
   }

# Used internally by the POSS-PRONOUN() function.
zzzz-possessive-pronoun = { GENDER($ent) ->
    [male] seins
    [female] ihrs
    [epicene] ihrs
   *[neuter] seins
   }

# Used internally by the POSS-ADJ() function.
zzzz-possessive-adjective = { GENDER($ent) ->
    [male] sein
    [female] ihr
    [epicene] ihr
   *[neuter] sein
   }

# Used internally by the REFLEXIVE() function.
zzzz-reflexive-pronoun = { GENDER($ent) ->
    [male] sich
    [female] sich
    [epicene] sich
   *[neuter] sich
   }

# Used internally by the CONJUGATE-BE() function.
zzzz-conjugate-be = { GENDER($ent) ->
    [epicene] sind
   *[other] ist
   }

# Used internally by the CONJUGATE-HAVE() function.
zzzz-conjugate-have = { GENDER($ent) ->
    [epicene] haben
   *[other] hat
   }

# Used internally by the CONJUGATE-BASIC() function.
zzzz-conjugate-basic = { GENDER($ent) ->
    [epicene] { $first }
   *[other] { $second }
   }
