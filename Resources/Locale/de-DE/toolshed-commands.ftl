command-help-usage =
    Verwendung:
command-help-invertible =
    Das Verhalten dieses Befehls lässt sich mit dem Präfix „not“ umkehren.
command-description-tpto =
    Teleportiert die angegebenen Entities zu einer Ziel-Entity.
command-description-player-list =
    Gibt eine Liste aller Spielersitzungen zurück.
command-description-player-self =
    Gibt die aktuelle Spielersitzung zurück.
command-description-player-imm =
    Gibt die Sitzung des als Argument angegebenen Spielers zurück.
command-description-player-entity =
    Gibt die Entities der übergebenen Sitzungen zurück.
command-description-self =
    Gibt die aktuell angehängte Entity zurück.
command-description-physics-velocity =
    Gibt die Geschwindigkeit der übergebenen Entities zurück.
command-description-physics-angular-velocity =
    Gibt die Winkelgeschwindigkeit der übergebenen Entities zurück.
command-description-buildinfo =
    Liefert Informationen zum Build des Spiels.
command-description-cmd-list =
    Gibt eine Liste aller Befehle für diese Seite zurück.
command-description-explain =
    Erklärt den angegebenen Ausdruck samt Befehlsbeschreibungen und Signaturen. Funktioniert nur bei gültigen Ausdrücken; Befehle, die nicht geparst werden können, kann er nicht erklären.
command-description-search =
    Durchsucht die Eingabe nach dem angegebenen Wert.
command-description-stopwatch =
    Misst die Ausführungszeit des angegebenen Ausdrucks.
command-description-types-consumers =
    Liefert alle Befehle, die den angegebenen Typ verarbeiten können.
command-description-types-tree =
    Debug-Werkzeug, das alle Typen zurückgibt, in die der Befehlsinterpreter die Eingabe umwandeln kann.
command-description-types-gettype =
    Gibt den Typ der Eingabe zurück.
command-description-types-fullname =
    Gibt den vollständigen Namen des Eingabetyps laut CoreCLR zurück.
command-description-as =
    Wandelt die Eingabe in den angegebenen Typ um.
    Praktisch ein Typ-Hinweis, wenn du den Typ kennst, der Interpreter aber nicht.
command-description-count =
    Zählt die Einträge der Eingabe und gibt eine Ganzzahl zurück.
command-description-map =
    Wendet den angegebenen Block auf die Eingabe an (Map).
command-description-select =
    Wählt N Objekte oder N % der Objekte aus der Eingabe aus.
    Mit „not“ lässt sich der Befehl umkehren, sodass stattdessen alles außer N Objekten gewählt wird.
command-description-comp =
    Gibt die angegebene Komponente der Eingabe-Entities zurück und verwirft Entities ohne diese Komponente.
command-description-delete =
    Löscht die Eingabe-Entities.
command-description-ent =
    Gibt die angegebene Entity-ID zurück.
command-description-entities =
    Gibt alle Entities auf dem Server zurück.
command-description-paused =
    Filtert die Eingabe-Entities danach, ob sie pausiert sind.
command-description-with =
    Filtert die Eingabe-Entities danach, ob sie die angegebene Komponente haben.
command-description-fuck =
    Wirft eine Exception.
command-description-ecscomp-listty =
    Listet jeden registrierten Komponententyp auf.
command-description-cd =
    Wechselt das aktuelle Verzeichnis der Sitzung auf den angegebenen relativen oder absoluten Pfad.
command-description-ls-here =
    Listet den Inhalt des aktuellen Verzeichnisses auf.
command-description-ls-in =
    Listet den Inhalt des angegebenen relativen oder absoluten Pfads auf.
command-description-methods-get =
    Gibt alle Methoden zurück, die zum Eingabetyp gehören.
command-description-methods-overrides =
    Gibt alle im Eingabetyp überschriebenen Methoden zurück.
command-description-methods-overridesfrom =
    Gibt alle im Eingabetyp überschriebenen Methoden des angegebenen Typs zurück.
command-description-cmd-moo =
    Stellt die wichtigen Fragen.
command-description-cmd-descloc =
    Gibt den Lokalisierungsstring der Beschreibung eines Befehls zurück.
command-description-cmd-getshim =
    Gibt den Ausführungs-Shim eines Befehls zurück.
command-description-help =
    Gibt einen kurzen Überblick darüber, wie Toolshed benutzt wird.
command-description-ioc-registered =
    Gibt alle im IoCManager des aktuellen Threads (meist der Spiel-Thread) registrierten Typen zurück
command-description-ioc-get =
    Holt eine Instanz einer IoC-Registrierung.
command-description-loc-tryloc =
    Versucht, einen Lokalisierungsstring zu holen, und gibt null zurück, wenn das nicht klappt.
command-description-loc-loc =
    Holt einen Lokalisierungsstring und gibt andernfalls den unlokalisierten String zurück.
command-description-physics-angular_velocity =
    Gibt die Winkelgeschwindigkeit der angegebenen Entities zurück.
command-description-vars =
    Gibt eine Liste aller in dieser Sitzung gesetzten Variablen zurück.
command-description-any =
    Gibt true zurück, wenn die Eingabe irgendwelche Werte enthält, sonst false.
command-description-contains =
    Gibt zurück, ob die Eingabe-Enumeration den angegebenen Wert enthält.
command-description-ArrowCommand =
    Weist die Eingabe einer Variable zu.
command-description-isempty =
    Gibt true zurück, wenn die Eingabe leer ist, sonst false.
command-description-isnull =
    Gibt true zurück, wenn die Eingabe null ist, sonst false.
command-description-unique =
    Filtert die Eingabesequenz auf Eindeutigkeit und entfernt doppelte Werte.
command-description-where =
    Nimmt eine Eingabesequenz IEnumerable<T> und einen Block der Signatur T -> bool, der entscheidet, ob jeder Eingabewert in die Ausgabesequenz aufgenommen wird.
command-description-do =
    Abwärtskompatibilität zu BQL: wendet die angegebenen alten Befehle auf die Eingabesequenz an.
command-description-named =
    Filtert die Eingabe-Entities nach ihrem Namen mit dem Regex ^selector$.
command-description-prototyped =
    Filtert die Eingabe-Entities nach ihrem Prototyp.
command-description-nearby =
    Erstellt eine neue Liste aller Entities in der Nähe der Eingaben innerhalb der angegebenen Reichweite.
command-description-first =
    Gibt den ersten Eintrag der angegebenen Enumeration zurück.
command-description-splat =
    „Splattet“ einen Block, Wert oder eine Variable und erzeugt N Kopien davon in einer Liste.
command-description-val =
    Wandelt den angegebenen Wert, Block oder die Variable in den angegebenen Typ um. Das ist vor allem ein Workaround für aktuelle Einschränkungen von Variablen.
command-description-var =
    Gibt den Inhalt der angegebenen Variable zurück. Der Typ der Variable wird dabei automatisch abgeleitet. Zusammengesetzte Befehle, die eine Variable verändern, müssen eventuell stattdessen den Befehl 'val' verwenden.
command-description-actor-controlled =
    Filtert Entities danach, ob sie aktiv gesteuert werden.
command-description-actor-session =
    Gibt die den Eingabe-Entities zugeordneten Sitzungen zurück.
command-description-physics-parent =
    Gibt die Parents der Eingabe-Entities zurück.
command-description-emplace =
    Führt den angegebenen Block über seine Eingaben aus, wobei der Eingabewert innerhalb des Blocks in der Variable $value liegt.
    Zusätzlich werden für Entities $wx, $wy, $proto, $desc, $name und $paused aufgeschlüsselt.
    Auch für andere Typen kann es aufgeschlüsselte Werte geben; Details stehen in der Dokumentation des jeweiligen Typs.
command-description-AddCommand =
    Führt eine numerische Addition durch.
command-description-SubtractCommand =
    Führt eine numerische Subtraktion durch.
command-description-MultiplyCommand =
    Führt eine numerische Multiplikation durch.
command-description-DivideCommand =
    Führt eine numerische Division durch.
command-description-min =
    Gibt das Minimum zweier Werte zurück.
command-description-max =
    Gibt das Maximum zweier Werte zurück.
command-description-BitAndCommand =
    Führt ein bitweises UND durch.
command-description-bitor =
    Führt ein bitweises ODER durch.
command-description-BitXorCommand =
    Führt ein bitweises XOR durch.
command-description-neg =
    Negiert die Eingabe.
command-description-GreaterThanCommand =
    Führt einen Größer-als-Vergleich durch, x > y.
command-description-LessThanCommand =
    Führt einen Kleiner-als-Vergleich durch, x < y.
command-description-GreaterThanOrEqualCommand =
    Führt einen Größer-gleich-Vergleich durch, x >= y.
command-description-LessThanOrEqualCommand =
    Führt einen Kleiner-gleich-Vergleich durch, x <= y.
command-description-EqualCommand =
    Führt einen Gleichheitsvergleich durch und gibt true zurück, wenn die Eingaben gleich sind.
command-description-NotEqualCommand =
    Führt einen Gleichheitsvergleich durch und gibt true zurück, wenn die Eingaben ungleich sind.
command-description-append =
    Hängt einen Wert an die Eingabe-Enumeration an.
command-description-DefaultIfNullCommand =
    Ersetzt die Eingabe durch den Standardwert des Typs, wenn sie null ist – allerdings nur für Werttypen (nicht für Objekte).
command-description-OrValueCommand =
    Verwendet den angegebenen alternativen Wert, wenn die Eingabe null ist.
command-description-DebugPrintCommand =
    Gibt den angegebenen Wert transparent aus, für Debug-Ausgaben innerhalb eines Befehlslaufs.
command-description-i =
    Ganzzahl-Konstante.
command-description-f =
    Float-Konstante.
command-description-s =
    String-Konstante.
command-description-b =
    Bool-Konstante.
command-description-join =
    Verbindet zwei Sequenzen zu einer Sequenz.
command-description-reduce =
    Wandelt mithilfe eines Blocks als Reducer eine Sequenz in einen einzelnen Wert um.
    Die linke Seite des Blocks ist implizit, die rechte steht in $value.
command-description-rep =
    Wiederholt den Eingabewert N-mal zu einer Sequenz.
command-description-take =
    Nimmt N Werte aus der Eingabesequenz
command-description-spawn-at =
    Spawnt eine Entity an den angegebenen Koordinaten.
command-description-spawn-on =
    Spawnt eine Entity auf der angegebenen Entity, an deren Koordinaten.
command-description-spawn-in =
    Spawnt eine Entity im angegebenen Container der angegebenen Entity und lässt sie an deren Koordinaten fallen, wenn sie nicht hineinpasst
command-description-spawn-attached =
    Spawnt eine an die angegebene Entity angehängte Entity bei (0 0) relativ zu ihr.
command-description-mappos =
    Gibt die Koordinaten einer Entity relativ zu ihrer aktuellen Karte zurück.
command-description-pos =
    Gibt die Koordinaten einer Entity zurück.
command-description-tp-coords =
    Teleportiert die angegebenen Entities zu den Zielkoordinaten.
command-description-tp-to =
    Teleportiert die angegebenen Entities zur Ziel-Entity.
command-description-tp-into =
    Teleportiert die angegebenen Entities „in“ die Ziel-Entity und hängt sie bei (0 0) relativ zu ihr an.
command-description-comp-get =
    Holt die angegebene Komponente von der angegebenen Entity.
command-description-comp-add =
    Fügt der angegebenen Entity die angegebene Komponente hinzu.
command-description-comp-ensure =
    Stellt sicher, dass die angegebene Entity die angegebene Komponente hat.
command-description-comp-has =
    Prüft, ob die angegebene Entity die angegebene Komponente hat.
command-description-AddVecCommand =
    Addiert einen Skalar (Einzelwert) zu jedem Element der Eingabe.
command-description-SubVecCommand =
    Subtrahiert einen Skalar (Einzelwert) von jedem Element der Eingabe.
command-description-MulVecCommand =
    Multipliziert jedes Element der Eingabe mit einem Skalar (Einzelwert).
command-description-DivVecCommand =
    Dividiert jedes Element der Eingabe durch einen Skalar (Einzelwert).
command-description-rng-to =
    Gibt eine Zahl zwischen der Eingabe (inklusive) und dem Argument (exklusive) zurück.
command-description-rng-from =
    Gibt eine Zahl zwischen dem Argument (inklusive) und der Eingabe (exklusive) zurück.
command-description-rng-prob =
    Gibt einen Boolean anhand der eingegebenen Wahrscheinlichkeit/Chance (von 0 bis 1) zurück
command-description-sum =
    Berechnet die Summe der Eingabe.
command-description-bin =
    „Binnt“ die Eingabe und zählt, wie oft jedes eindeutige Element vorkommt.
command-description-extremes =
    Gibt die beiden Extremenden einer Liste verwoben zurück.
command-description-sortby =
    Sortiert die Eingabe aufsteigend nach dem berechneten Schlüssel.
command-description-sortmapby =
    Sortiert die Eingabe aufsteigend nach dem berechneten Schlüssel und ersetzt danach den Wert durch den berechneten Schlüssel.
command-description-sort =
    Sortiert die Eingabe aufsteigend.
command-description-sortdownby =
    Sortiert die Eingabe absteigend nach dem berechneten Schlüssel.
command-description-sortmapdownby =
    Sortiert die Eingabe absteigend nach dem berechneten Schlüssel und ersetzt danach den Wert durch den berechneten Schlüssel.
command-description-sortdown =
    Sortiert die Eingabe absteigend.
command-description-iota =
    Gibt eine Liste der Zahlen 1 bis N zurück.
command-description-to =
    Gibt eine Liste der Zahlen N bis M zurück.
command-description-curtick =
    Der aktuelle Spiel-Tick.
command-description-curtime =
    Die aktuelle Spielzeit (ein TimeSpan)
command-description-realtime =
    Die aktuelle Echtzeit seit dem Start (ein TimeSpan)
command-description-servertime =
    Die aktuelle Spielzeit des Servers oder null, wenn wir selbst der Server sind (ein TimeSpan)
command-description-replace =
    Ersetzt die Eingabe-Entities durch den angegebenen Prototyp und behält Position und Rotation bei (sonst nichts)
command-description-allcomps =
    Gibt alle Komponenten der angegebenen Entity zurück.
command-description-entitysystemupdateorder-tick =
    Listet die Tick-Update-Reihenfolge der Entity-Systeme auf.
command-description-entitysystemupdateorder-frame =
    Listet die Frame-Update-Reihenfolge der Entity-Systeme auf.
command-description-more =
    Gibt den Inhalt von $more aus, also alles Zusätzliche, das Toolshed beim letzten Befehl nicht ausgegeben hat.
command-description-ModulusCommand =
    Berechnet den Modulus zweier Werte.
    Das ist meist der Rest; siehe die C#-Dokumentation zum Typ.
command-description-ModVecCommand =
    Führt die Modulo-Operation über die Eingabe mit dem angegebenen konstanten rechten Wert durch.
command-description-BitAndNotCommand =
    Führt ein bitweises UND-NICHT über die Eingabe durch.
command-description-bitornot =
    Führt ein bitweises ODER-NICHT über die Eingabe durch.
command-description-BitXnorCommand =
    Führt ein bitweises XNOR über die Eingabe durch.
command-description-BitNotCommand =
    Führt ein bitweises NICHT auf der Eingabe durch.
command-description-abs =
    Berechnet den Absolutwert der Eingabe (ohne Vorzeichen)
command-description-average =
    Berechnet den Durchschnitt (arithmetisches Mittel) der Eingabe.
command-description-bibytecount =
    Gibt die Größe der Eingabe in Bytes zurück, sofern die Eingabe IBinaryInteger implementiert.
    Das ist NICHT sizeof.
command-description-shortestbitlength =
    Gibt die minimale Anzahl an Bits zurück, die zur Darstellung des Eingabewerts nötig ist.
command-description-countleadzeros =
    Zählt die führenden binären Nullen im Eingabewert.
command-description-counttrailingzeros =
    Zählt die nachfolgenden binären Nullen im Eingabewert.
command-description-fpi =
    pi (3,14159...) als Float.
command-description-fe =
    e (2,71828...) als Float.
command-description-ftau =
    tau (6,28318...) als Float.
command-description-fepsilon =
    Der Epsilon-Wert eines Floats, genau 1.4e-45.
command-description-dpi =
    pi (3,14159...) als Double.
command-description-de =
    e (2,71828...) als Double.
command-description-dtau =
    tau (6,28318...) als Double.
command-description-depsilon =
    Der Epsilon-Wert eines Doubles, genau 4.9406564584124654E-324.
command-description-hpi =
    pi (3,14...) als Half.
command-description-he =
    e (2,71...) als Half.
command-description-htau =
    tau (6,28...) als Half.
command-description-hepsilon =
    Der Epsilon-Wert eines Halfs, genau 5.9604645E-08.
command-description-floor =
    Gibt den abgerundeten Wert der Eingabe zurück (Rundung Richtung null).
command-description-ceil =
    Gibt den aufgerundeten Wert der Eingabe zurück (Rundung weg von null).
command-description-round =
    Rundet den Eingabewert.
command-description-trunc =
    Schneidet den Eingabewert ab.
command-description-round2frac =
    Rundet den Eingabewert auf die angegebene Anzahl an Nachkommastellen.
command-description-exponentbytecount =
    Gibt die Anzahl der Bytes zurück, die zum Speichern des Exponenten nötig sind.
command-description-significandbytecount =
    Gibt die Anzahl der Bytes zurück, die zum Speichern der Signifikanz nötig sind.
command-description-significandbitcount =
    Gibt die exakte Bitlänge der Signifikanz zurück.
command-description-exponentshortestbitcount =
    Gibt die minimale Anzahl an Bits zum Speichern des Exponenten zurück.
command-description-stepnext =
    Springt zum nächsten Float-Wert, indem 1 mit Übertrag zur Signifikanz addiert wird.
command-description-stepprev =
    Springt zum vorherigen Float-Wert, indem 1 mit Übertrag von der Signifikanz subtrahiert wird.
command-description-checkedto =
    Wandelt vom numerischen Eingabetyp in den Zieltyp um und meldet einen Fehler, wenn das nicht möglich ist.
command-description-saturateto =
    Wandelt vom numerischen Eingabetyp in den Zieltyp um und sättigt den Wert, wenn er außerhalb des Bereichs liegt.
    Beispiel: 382 in ein Byte umzuwandeln sättigt auf 255 (den Maximalwert eines Bytes).
command-description-truncto =
    Wandelt vom numerischen Eingabetyp in den Zieltyp um, mit Abschneiden.
    Bei Ganzzahlen ist das ein Bit-Cast mit Vorzeichenerweiterung.
command-description-iscanonical =
    Gibt zurück, ob die Eingabe in kanonischer Form vorliegt.
command-description-iscomplex =
    Gibt zurück, ob die Eingabe eine komplexe Zahl ist (nach Wert, nicht nach Typ)
command-description-iseven =
    Gibt zurück, ob die Eingabe gerade ist.
    Kein Javascript-Paket.
command-description-isodd =
    Gibt zurück, ob die Eingabe ungerade ist.
command-description-isfinite =
    Gibt zurück, ob die Eingabe endlich ist.
command-description-isimaginary =
    Gibt zurück, ob die Eingabe rein imaginär ist (kein Realteil).
command-description-isinfinite =
    Gibt zurück, ob die Eingabe unendlich ist.
command-description-isinteger =
    Gibt zurück, ob die Eingabe eine Ganzzahl ist (nach Wert, nicht nach Typ)
command-description-isnan =
    Gibt zurück, ob die Eingabe keine Zahl ist (NaN, Not a Number).
    Das ist ein spezieller Gleitkommawert, daher gilt das nach Wert, nicht nach Typ.
command-description-isnegative =
    Gibt zurück, ob die Eingabe negativ ist.
command-description-ispositive =
    Gibt zurück, ob die Eingabe positiv ist.
command-description-isreal =
    Gibt zurück, ob die Eingabe rein reell ist (kein Imaginärteil).
command-description-issubnormal =
    Gibt zurück, ob die Eingabe in subnormaler Form vorliegt.
command-description-iszero =
    Gibt zurück, ob die Eingabe null ist.
command-description-pow =
    Berechnet die Potenz von linker Seite hoch rechter Seite. x^y.
command-description-sqrt =
    Berechnet die Quadratwurzel der Eingabe.
command-description-cbrt =
    Berechnet die Kubikwurzel der Eingabe.
command-description-root =
    Berechnet die N-te Wurzel der Eingabe.
command-description-hypot =
    Berechnet die Hypotenuse eines Dreiecks mit den Seiten A und B.
command-description-sin =
    Berechnet den Sinus der Eingabe.
command-description-sinpi =
    Berechnet den Sinus der mit pi multiplizierten Eingabe.
command-description-asin =
    Berechnet den Arkussinus der Eingabe.
command-description-asinpi =
    Berechnet den Arkussinus der mit pi multiplizierten Eingabe.
command-description-cos =
    Berechnet den Kosinus der Eingabe.
command-description-cospi =
    Berechnet den Kosinus der mit pi multiplizierten Eingabe.
command-description-acos =
    Berechnet den Arkuskosinus der Eingabe.
command-description-acospi =
    Berechnet den Arkuskosinus der mit pi multiplizierten Eingabe.
command-description-tan =
    Berechnet den Tangens der Eingabe.
command-description-tanpi =
    Berechnet den Tangens der mit pi multiplizierten Eingabe.
command-description-atan =
    Berechnet den Arkustangens der Eingabe.
command-description-atanpi =
    Berechnet den Arkustangens der mit pi multiplizierten Eingabe.
command-description-iterate =
    Wendet die angegebene Funktion N-mal iterativ auf die Eingabe an und gibt eine Liste der Ergebnisse zurück.
    Stell dir vor, die Funktion wird nacheinander auf einen Wert angewendet, wobei alle Zwischenwerte festgehalten werden.
command-description-pick =
    Wählt einen zufälligen Wert aus der Eingabe.
command-description-tee =
    Leitet die Eingabe in den angegebenen Block und ignoriert dessen Ergebnis.
    So kannst du in deinem Code im Grunde verzweigen, um mehrere Operationen auf einem Wert auszuführen.
command-description-cmd-info =
    Gibt eine CommandSpec für den angegebenen Befehl zurück.
    Für sich allein gibt das die Hilfenachricht des Befehls aus.
command-description-comp-rm =
    Entfernt die angegebene Komponente von der Entity.

command-description-overlay-toggle = Schaltet ein Overlay ein oder aus
command-description-overlay-add = Fügt ein Overlay hinzu (falls es noch nicht existiert)
command-description-overlay-remove = Entfernt ein Overlay
