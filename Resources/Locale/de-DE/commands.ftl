### Localization for engine console commands

cmd-hint-float = [float]

## generic command errors

cmd-invalid-arg-number-error = Ungültige Anzahl an Argumenten.

cmd-parse-failure-integer = {$arg} ist keine gültige Ganzzahl.
cmd-parse-failure-float = {$arg} ist keine gültige Gleitkommazahl.
cmd-parse-failure-bool = {$arg} ist kein gültiger Bool-Wert.
cmd-parse-failure-uid = {$arg} ist keine gültige Entity-UID.
cmd-parse-failure-mapid = {$arg} ist keine gültige MapId.
cmd-parse-failure-enum = {$arg} ist kein {$enum}-Enum.
cmd-parse-failure-grid = {$arg} ist kein gültiges Grid.
cmd-parse-failure-cultureinfo = „{$arg}“ ist keine gültige CultureInfo.
cmd-parse-failure-entity-exist = UID {$arg} entspricht keiner existierenden Entity.
cmd-parse-failure-session = Es gibt keine Sitzung mit dem Benutzernamen: {$username}
cmd-parse-failure-session-guid = Es gibt keine Sitzung mit der GUID: {$guid}

cmd-error-file-not-found = Datei nicht gefunden: {$file}.
cmd-error-dir-not-found = Verzeichnis nicht gefunden: {$dir}.

cmd-failure-no-attached-entity = An diese Shell ist keine Entity angehängt.

## 'help' command
cmd-help-desc = Zeigt allgemeine Hilfe oder den Hilfetext zu einem bestimmten Befehl an.
cmd-help-help = Verwendung: {$command} [Befehlsname]
    Ohne Befehlsnamen wird ein allgemeiner Hilfetext angezeigt. Mit Befehlsnamen wird der Hilfetext zu diesem Befehl angezeigt.

cmd-help-no-args = Um Hilfe zu einem bestimmten Befehl anzuzeigen, schreibe 'help <Befehl>'. Um alle verfügbaren Befehle aufzulisten, schreibe 'list'. Um nach Befehlen zu suchen, nutze 'list <Filter>'.
cmd-help-unknown = Unbekannter Befehl: { $command }
cmd-help-top = { $command } - { $description }
cmd-help-invalid-args = Ungültige Anzahl an Argumenten.
cmd-help-arg-cmdname = [Befehlsname]

## 'cvar' command
cmd-cvar-desc = Liest oder setzt eine CVar.
cmd-cvar-help = Verwendung: {$command} <Name | ?> [Wert]
    Wird ein Wert übergeben, wird er geparst und als neuer Wert der CVar gespeichert.
    Andernfalls wird der aktuelle Wert der CVar angezeigt.
    Mit 'cvar ?' erhältst du eine Liste aller registrierten CVars.

cmd-cvar-invalid-args = Es muss genau ein oder zwei Argumente geben.
cmd-cvar-not-registered = CVar '{ $cvar }' ist nicht registriert. Nutze 'cvar ?' für eine Liste aller registrierten CVars.
cmd-cvar-parse-error = Der eingegebene Wert hat ein falsches Format für den Typ { $type }
cmd-cvar-compl-list = Verfügbare CVars auflisten
cmd-cvar-arg-name = <Name | ?>
cmd-cvar-value-hidden = <Wert verborgen>

## 'cvar_subs' command
cmd-cvar_subs-desc = Listet die OnValueChanged-Abonnements einer CVar auf.
cmd-cvar_subs-help = Verwendung: {$command} <Name>

cmd-cvar_subs-invalid-args = Es muss genau ein Argument angegeben werden.
cmd-cvar_subs-arg-name = <Name>

## 'list' command
cmd-list-desc = Listet verfügbare Befehle auf, optional mit Suchfilter.
cmd-list-help = Verwendung: {$command} [Filter]
    Listet alle verfügbaren Befehle auf. Wird ein Argument angegeben, filtert es die Befehle nach Namen.

cmd-list-heading = SEITE NAME            BESCHR.{"\u000A"}-------------------------{"\u000A"}

cmd-list-arg-filter = [Filter]

## '>' command, aka remote exec
cmd-remoteexec-desc = Führt serverseitige Befehle aus.
cmd-remoteexec-help = Verwendung: > <Befehl> [Arg] [Arg] [Arg...]
    Führt einen Befehl auf dem Server aus. Das ist nötig, wenn auf dem Client ein Befehl gleichen Namens existiert, da der Befehl sonst zuerst auf dem Client ausgeführt würde.

## 'gc' command
cmd-gc-desc = Führt den GC (Garbage Collector) aus.
cmd-gc-help = Verwendung: {$command} [Generation]
    Nutzt GC.Collect(), um den Garbage Collector auszuführen.
    Wird ein Argument angegeben, wird es als GC-Generationsnummer geparst und GC.Collect(int) verwendet.
    Nutze den Befehl 'gfc' für einen vollständigen GC mit LOH-Kompaktierung.
cmd-gc-failed-parse = Das Argument konnte nicht geparst werden.
cmd-gc-arg-generation = [Generation]

## 'gcf' command
cmd-gcf-desc = Führt den GC vollständig aus, inklusive LOH-Kompaktierung.
cmd-gcf-help = Verwendung: {$command}
    Führt ein vollständiges GC.Collect(2, GCCollectionMode.Forced, true, true) aus und kompaktiert dabei das LOH.
    Das friert wahrscheinlich für mehrere hundert Millisekunden ein – du wurdest gewarnt.

## 'gc_mode' command
cmd-gc_mode-desc = Ändert oder liest den GC-Latenzmodus.
cmd-gc_mode-help = Verwendung: {$command} [Typ]
    Ohne Argument wird der aktuelle GC-Latenzmodus ausgegeben.
    Wird ein Argument übergeben, wird es als GCLatencyMode geparst und als GC-Latenzmodus gesetzt.

cmd-gc_mode-current = aktueller GC-Latenzmodus: { $prevMode }
cmd-gc_mode-possible = mögliche Modi:
cmd-gc_mode-option = - { $mode }
cmd-gc_mode-unknown = unbekannter GC-Latenzmodus: { $arg }
cmd-gc_mode-attempt = Versuche, den GC-Latenzmodus zu ändern: { $prevMode } -> { $mode }
cmd-gc_mode-result = resultierender GC-Latenzmodus: { $mode }
cmd-gc_mode-arg-type = [Typ]

## 'mem' command
cmd-mem-desc = Gibt Informationen zum verwalteten Speicher aus.
cmd-mem-help = Verwendung: {$command}

cmd-mem-report = Heap-Größe: { TOSTRING($heapSize, "N0") }
    Insgesamt belegt: { TOSTRING($totalAllocated, "N0") }

## 'physics' command
cmd-physics-overlay = {$overlay} ist kein bekanntes Overlay

## 'lsasm' command
cmd-lsasm-desc = Listet geladene Assemblies nach Load-Kontext auf.
cmd-lsasm-help = Verwendung: lsasm

## 'exec' command
cmd-exec-desc = Führt eine Skriptdatei aus den beschreibbaren Benutzerdaten des Spiels aus.
cmd-exec-help = Verwendung: {$command} <Dateiname>
    Jede Zeile der Datei wird als eigener Befehl ausgeführt, außer sie beginnt mit einem #

cmd-exec-arg-filename = <Dateiname>

## 'dump_net_comps' command
cmd-dump_net_comps-desc = Gibt die Tabelle der vernetzten Komponenten aus.
cmd-dump_net_comps-help = Verwendung: {$command}

cmd-dump_net_comps-error-writeable = Registrierung noch beschreibbar, Netzwerk-IDs wurden nicht generiert.
cmd-dump_net_comps-header = Registrierungen vernetzter Komponenten:

## 'dump_event_tables' command
cmd-dump_event_tables-desc = Gibt die gerichteten Event-Tabellen einer Entity aus.
cmd-dump_event_tables-help = Verwendung: {$command} <entityUid>

cmd-dump_event_tables-missing-arg-entity = Entity-Argument fehlt
cmd-dump_event_tables-error-entity = Ungültige Entity
cmd-dump_event_tables-arg-entity = <entityUid>

## 'monitor' command
cmd-monitor-desc = Schaltet einen Debug-Monitor im F3-Menü um.
cmd-monitor-help = Verwendung: {$command} <Name>
    Mögliche Monitore sind: { $monitors }
    Mit den Spezialwerten "-all" und "+all" kannst du alle Monitore aus- bzw. einblenden.

cmd-monitor-arg-monitor = <Monitor>
cmd-monitor-invalid-name = Ungültiger Monitorname
cmd-monitor-arg-count = Monitor-Argument fehlt
cmd-monitor-minus-all-hint = Blendet alle Monitore aus
cmd-monitor-plus-all-hint = Blendet alle Monitore ein


## 'setambientlight' command
cmd-set-ambient-light-desc = Erlaubt dir, das Umgebungslicht für die angegebene Karte in SRGB zu setzen.
cmd-set-ambient-light-help = Verwendung: {$command} [mapid] [r g b a]
cmd-set-ambient-light-parse = Die Argumente konnten nicht als Byte-Werte für eine Farbe geparst werden.

## Mapping commands

cmd-savemap-desc = Serialisiert eine Karte auf die Festplatte. Speichert keine Karte nach der Initialisierung, außer mit force.
cmd-savemap-help = Verwendung: {$command} <MapID> <Pfad> [force]
cmd-savemap-not-exist = Die Zielkarte existiert nicht.
cmd-savemap-init-warning = Es wurde versucht, eine bereits initialisierte Karte ohne force zu speichern.
cmd-savemap-attempt = Versuche, Karte {$mapId} unter {$path} zu speichern.
cmd-savemap-success = Karte erfolgreich gespeichert.
cmd-savemap-error = Karte konnte nicht gespeichert werden! Details im Server-Log.
cmd-hint-savemap-id = <MapID>
cmd-hint-savemap-path = <Pfad>
cmd-hint-savemap-force = [bool]

cmd-loadmap-desc = Lädt eine Karte von der Festplatte ins Spiel.
cmd-loadmap-help = Verwendung: {$command} <MapID> <Pfad> [x] [y] [rotation] [consistentUids]
cmd-loadmap-nullspace = Du kannst nicht in Karte 0 laden.
cmd-loadmap-exists = Karte {$mapId} existiert bereits.
cmd-loadmap-success = Karte {$mapId} wurde von {$path} geladen.
cmd-loadmap-error = Beim Laden der Karte von {$path} ist ein Fehler aufgetreten.
cmd-hint-loadmap-x-position = [x-Position]
cmd-hint-loadmap-y-position = [y-Position]
cmd-hint-loadmap-rotation = [Rotation]
cmd-hint-loadmap-uids = [float]

cmd-hint-savebp-id = <Grid-EntityID>

## 'flushcookies' command
# Note: the flushcookies command is from Robust.Client.WebView, it's not in the main engine code.

cmd-flushcookies-desc = Schreibt den CEF-Cookie-Speicher auf die Festplatte.
cmd-flushcookies-help = Verwendung: {$command}
    Das stellt sicher, dass Cookies auch bei unsauberem Herunterfahren korrekt gespeichert werden.
    Beachte, dass die eigentliche Operation asynchron abläuft.

cmd-ldrsc-desc = Lädt eine Ressource vorab in den Cache.
cmd-ldrsc-help = Verwendung: {$command} <Pfad> <Typ>

cmd-rldrsc-desc = Lädt eine Ressource neu.
cmd-rldrsc-help = Verwendung: {$command} <Pfad> <Typ>

cmd-gridtc-desc = Gibt die Kachelanzahl eines Grids aus.
cmd-gridtc-help = Verwendung: {$command} <gridId>


# Client-side commands
cmd-guidump-desc = Schreibt den GUI-Baum nach /guidump.txt in den Benutzerdaten.

cmd-guidump-help = Verwendung: {$command}

cmd-uitest-desc = Öffnet ein Dummy-Fenster zum Testen der UI.
cmd-uitest-help = Verwendung: {$command}

## 'uitest2' command
cmd-uitest2-desc = Öffnet ein OS-Fenster zum Testen von UI-Steuerelementen.
cmd-uitest2-help = Verwendung: {$command} <Tab>
cmd-uitest2-arg-tab = <Tab>
cmd-uitest2-error-args = Höchstens ein Argument erwartet
cmd-uitest2-error-tab = Ungültiger Tab: '{$value}'
cmd-uitest2-title = UITest2


cmd-setclipboard-desc = Setzt die System-Zwischenablage.
cmd-setclipboard-help = Verwendung: {$command} <Text>

cmd-getclipboard-desc = Liest die System-Zwischenablage.
cmd-getclipboard-help = Verwendung: {$command}

cmd-togglelight-desc = Schaltet das Rendern von Licht um.
cmd-togglelight-help = Verwendung: {$command}

cmd-togglefov-desc = Schaltet das Sichtfeld (FOV) für den Client um.
cmd-togglefov-help = Verwendung: {$command}

cmd-togglehardfov-desc = Schaltet das harte Sichtfeld (FOV) für den Client um. (zum Debuggen von space-station-14#2353)
cmd-togglehardfov-help = Verwendung: {$command}

cmd-toggleshadows-desc = Schaltet das Rendern von Schatten um.
cmd-toggleshadows-help = Verwendung: {$command}

cmd-togglelightbuf-desc = Schaltet das Rendern der Beleuchtung um. Das umfasst Schatten, aber nicht das Sichtfeld (FOV).
cmd-togglelightbuf-help = Verwendung: {$command}

cmd-chunkinfo-desc = Gibt Informationen zu dem Chunk unter deinem Mauszeiger aus.
cmd-chunkinfo-help = Verwendung: {$command}

cmd-chunkentities-desc = Listet Chunk-Entities im Client-Viewport ODER im angegebenen Bereich auf.
cmd-chunkentities-help = Verwendung: {$command} [<Root-Entity> <x> <y> <Reichweite>]
cmd-chunkentities-error-invalid-root = Ungültige Root-Entity: {$root}
cmd-chunkentities-error-parse = x, y und Reichweite müssen Zahlen sein.
cmd-chunkentities-error-nullspace = Das aktuelle Auge befindet sich im Nullspace.
cmd-chunkentities-error-no-map = Keine Karten-Entity für die aktuelle Augenkarte {$map}.
cmd-chunkentities-range-header = Chunk-Entities für {$root} um ({$x}, {$y}) mit Reichweite {$range}:
cmd-chunkentities-viewport-header = Chunk-Entities im Client-Viewport auf Karte {$map} ({$viewport}):
cmd-chunkentities-total = Gesamt: {$count}
cmd-chunkentities-root-count = Root {$root}: {$count}
cmd-chunkentities-entry = {$netEntity} uid={$uid} root={$root} chunk={$chunk} comps={$componentCount} {$name}
cmd-chunkentities-arg-root = <Root-Entity>
cmd-chunkentities-arg-x = <x>
cmd-chunkentities-arg-y = <y>
cmd-chunkentities-arg-range = <Reichweite>

cmd-rldshader-desc = Lädt alle Shader neu.
cmd-rldshader-help = Verwendung: {$command}

cmd-cldbglyr-desc = Schaltet Debug-Ebenen für Sichtfeld (FOV) und Licht um.
cmd-cldbglyr-help = Verwendung: {$command} <Ebene>: Schaltet <Ebene> um
    cldbglyr: Schaltet alle Ebenen aus

cmd-key-info-desc = Gibt Tasteninformationen zu einer Taste aus.
cmd-key-info-help = Verwendung: {$command} <Taste>

## 'bind' command
cmd-bind-desc = Bindet eine Eingabetasten-Kombination an einen Eingabebefehl.
cmd-bind-help = Verwendung: {$command} { cmd-bind-arg-key } { cmd-bind-arg-mode } { cmd-bind-arg-command }
    Beachte, dass Belegungen dabei NICHT automatisch gespeichert werden.
    Nutze den Befehl 'svbind', um die Belegungskonfiguration zu speichern.

cmd-bind-arg-key = <Tastenname>
cmd-bind-arg-mode = <BindMode>
cmd-bind-arg-command = <Eingabebefehl>

cmd-net-draw-interp-desc = Schaltet die Debug-Darstellung der Netzwerk-Interpolation um.
cmd-net-draw-interp-help = Verwendung: {$command}

cmd-net-watch-ent-desc = Gibt alle Netzwerk-Updates für eine EntityId in der Konsole aus.
cmd-net-watch-ent-help = Verwendung: {$command} <0|EntityUid>

cmd-net-refresh-desc = Fordert einen vollständigen Server-Zustand an.
cmd-net-refresh-help = Verwendung: {$command}

cmd-net-entity-report-desc = Schaltet das Net-Entity-Report-Panel um.
cmd-net-entity-report-help = Verwendung: {$command}

cmd-fill-desc = Füllt die Konsole zum Debuggen.
cmd-fill-help = Verwendung: {$command}
                Füllt die Konsole zum Debuggen mit etwas Unsinn.

cmd-cls-desc = Leert die Konsole.
cmd-cls-help = Verwendung: {$command}
               Entfernt alle Nachrichten aus der Debug-Konsole.

cmd-sendgarbage-desc = Sendet Müll an den Server.
cmd-sendgarbage-help = Verwendung: {$command}
                       Der Server antwortet mit 'no u'

cmd-loadgrid-desc = Lädt ein Grid aus einer Datei in eine bestehende Karte.
cmd-loadgrid-help = Verwendung: {$command} <MapID> <Pfad> [x y] [rotation] [storeUids]

cmd-loc-desc = Gibt die absolute Position der Entity des Spielers in der Konsole aus.
cmd-loc-help = Verwendung: {$command}

cmd-tpgrid-desc = Teleportiert ein Grid an eine neue Position.
cmd-tpgrid-help = Verwendung: {$command} <gridId> <X> <Y> [<MapId>]

cmd-rmgrid-desc = Entfernt ein Grid von einer Karte. Das Standard-Grid kann nicht entfernt werden.
cmd-rmgrid-help = Verwendung: {$command} <gridId>

cmd-mapinit-desc = Führt Map-Init auf einer Karte aus.
cmd-mapinit-help = Verwendung: {$command} <mapID>

cmd-lsmap-desc = Listet Karten auf.
cmd-lsmap-help = Verwendung: {$command}

cmd-lsgrid-desc = Listet Grids auf.
cmd-lsgrid-help = Verwendung: {$command}

cmd-addmap-desc = Fügt der Runde eine neue leere Karte hinzu. Existiert die mapID bereits, passiert nichts.
cmd-addmap-help = Verwendung: {$command} <mapID> [pre-init]

cmd-rmmap-desc = Entfernt eine Karte aus der Welt. Der Nullspace kann nicht entfernt werden.
cmd-rmmap-help = Verwendung: {$command} <mapId>

cmd-pausemap-desc = Pausiert eine Karte und damit die gesamte Simulation auf ihr.
cmd-pausemap-help = Verwendung: pausemap <map ID>

cmd-unpausemap-desc = Hebt die Pause einer Karte auf und setzt die gesamte Simulation auf ihr fort.
cmd-unpausemap-help = Verwendung: unpausemap <map ID>

cmd-querymappaused-desc = Prüft, ob eine Karte pausiert ist.
cmd-querymappaused-help = Verwendung: querymappaused <map ID>

cmd-savegrid-desc = Serialisiert ein Grid auf die Festplatte.
cmd-savegrid-help = Verwendung: {$command} <gridID> <Pfad>

cmd-testbed-desc = Lädt einen Physik-Testbed auf der angegebenen Karte.
cmd-testbed-help = Verwendung: {$command} <mapid> <Test>

## 'flushcookies' command
# Note: the flushcookies command is from Robust.Client.WebView, it's not in the main engine code.

## 'addcomp' command
cmd-addcomp-desc = Fügt einer Entity eine Komponente hinzu.
cmd-addcomp-help = Verwendung: {$command} <uid> <Komponentenname>
cmd-addcompc-desc = Fügt einer Entity auf dem Client eine Komponente hinzu.
cmd-addcompc-help = Verwendung: {$command} <uid> <Komponentenname>

## 'rmcomp' command
cmd-rmcomp-desc = Entfernt eine Komponente von einer Entity.
cmd-rmcomp-help = Verwendung: {$command} <uid> <Komponentenname>
cmd-rmcompc-desc = Entfernt eine Komponente von einer Entity auf dem Client.
cmd-rmcompc-help = Verwendung: {$command} <uid> <Komponentenname>

## 'addview' command
cmd-addview-desc = Erlaubt dir, zu Debug-Zwecken die Ansicht einer Entity zu abonnieren.
cmd-addview-help = Verwendung: {$command} <entityUid>
cmd-addviewc-desc = Erlaubt dir, zu Debug-Zwecken die Ansicht einer Entity zu abonnieren.
cmd-addviewc-help = Verwendung: {$command} <entityUid>

## 'removeview' command
cmd-removeview-desc = Erlaubt dir, zu Debug-Zwecken das Abonnement der Ansicht einer Entity zu beenden.
cmd-removeview-help = Verwendung: {$command} <entityUid>

## 'loglevel' command
cmd-loglevel-desc = Ändert den Log-Level für ein bestimmtes Sawmill.
cmd-loglevel-help = Verwendung: {$command} <sawmill> <level>
      sawmill: Ein Label, das Lognachrichten vorangestellt wird. Für dieses setzt du den Level.
      level: Der Log-Level. Muss einem der Werte des LogLevel-Enums entsprechen.

cmd-testlog-desc = Schreibt einen Test-Log in ein Sawmill.
cmd-testlog-help = Verwendung: {$command} <sawmill> <level> <Nachricht>
    sawmill: Ein Label, das der geloggten Nachricht vorangestellt wird.
    level: Der Log-Level. Muss einem der Werte des LogLevel-Enums entsprechen.
    Nachricht: Die zu loggende Nachricht. Setze sie in doppelte Anführungszeichen, wenn du Leerzeichen verwenden willst.

## 'vv' command
cmd-vv-desc = Öffnet View Variables.
cmd-vv-help = Verwendung: {$command} <Entity-ID|IoC-Interface-Name|SIoC-Interface-Name>

## 'showvelocities' command
cmd-showvelocities-desc = Zeigt deine Winkel- und Lineargeschwindigkeit an.
cmd-showvelocities-help = Verwendung: {$command}

## 'setinputcontext' command
cmd-setinputcontext-desc = Setzt den aktiven Eingabekontext.
cmd-setinputcontext-help = Verwendung: {$command} <Kontext>

## 'forall' command
cmd-forall-desc = Führt einen Befehl für alle Entities mit einer bestimmten Komponente aus.
cmd-forall-help = Verwendung: {$command} <bql-Abfrage> do <Befehl...>

## 'delete' command
cmd-delete-desc = Löscht die Entity mit der angegebenen ID.
cmd-delete-help = Verwendung: {$command} <Entity-UID>

# System commands
cmd-showtime-desc = Zeigt die Serverzeit an.
cmd-showtime-help = Verwendung: {$command}

cmd-restart-desc = Startet den Server geordnet neu (nicht nur die Runde).
cmd-restart-help = Verwendung: {$command}

cmd-shutdown-desc = Fährt den Server geordnet herunter.
cmd-shutdown-help = Verwendung: {$command} [<Grund>]
cmd-shutdown-hint-1 = Grund

cmd-saveconfig-desc = Speichert die Serverkonfiguration in der Konfigurationsdatei.
cmd-saveconfig-help = Verwendung: {$command}

cmd-netaudit-desc = Gibt Informationen zur NetMsg-Sicherheit aus.
cmd-netaudit-help = Verwendung: {$command}

# Player commands
cmd-tp-desc = Teleportiert einen Spieler an eine beliebige Position in der Runde.
cmd-tp-help = Verwendung: {$command} <x> <y> [<mapID>]

cmd-tpto-desc = Teleportiert den aktuellen Spieler oder die angegebenen Spieler/Entities zur Position des ersten Spielers bzw. der ersten Entity.
cmd-tpto-help = Verwendung: {$command} <Benutzername|uid> [Benutzername|NetEntity]...

cmd-tpto-destination-hint = Ziel (NetEntity oder Benutzername)
cmd-tpto-victim-hint = zu teleportierende Entity (NetEntity oder Benutzername)
cmd-tpto-parse-error = Entity oder Spieler kann nicht aufgelöst werden: {$str}

cmd-listplayers-desc = Listet alle aktuell verbundenen Spieler auf.
cmd-listplayers-help = Verwendung: {$command}

cmd-kick-desc = Wirft einen verbundenen Spieler vom Server und trennt seine Verbindung.
cmd-kick-help = Verwendung: {$command} <PlayerIndex> [<Grund>]

# Spin command
cmd-spin-desc = Lässt eine Entity rotieren. Standard-Entity ist das Parent des angehängten Spielers.
cmd-spin-help = Verwendung: {$command} velocity [drag] [entityUid]

# Localization command
cmd-rldloc-desc = Lädt die Lokalisierung neu (Client & Server).
cmd-rldloc-help = Verwendung: {$command}

# Debug entity controls
cmd-spawn-desc = Spawnt eine Entity eines bestimmten Typs.
cmd-spawn-help = Verwendung: {$command} <Prototyp> | {$command} <Prototyp> <relative Entity-ID> | {$command} <Prototyp> <x> <y>
cmd-cspawn-desc = Spawnt eine clientseitige Entity eines bestimmten Typs zu deinen Füßen.
cmd-cspawn-help = Verwendung: {$command} <Entity-Typ>

cmd-dumpentities-desc = Gibt die Entity-Liste aus.
cmd-dumpentities-help = Verwendung: {$command}
                        Gibt die Entity-Liste mit UIDs und Prototypen aus.

cmd-getcomponentregistration-desc = Liest Informationen zur Komponentenregistrierung aus.
cmd-getcomponentregistration-help = Verwendung: {$command} <Komponentenname>

cmd-showrays-desc = Schaltet die Debug-Darstellung von Physik-Strahlen um. Für <raylifetime> muss eine Ganzzahl angegeben werden.
cmd-showrays-help = Verwendung: {$command} <raylifetime>

cmd-disconnect-desc = Trennt sofort die Verbindung zum Server und kehrt zum Hauptmenü zurück.
cmd-disconnect-help = Verwendung: {$command}

cmd-entfo-desc = Zeigt ausführliche Diagnoseinformationen zu einer Entity an.
cmd-entfo-help = Verwendung: {$command} <entityuid>
    Der Entity-UID kann ein 'c' vorangestellt werden, um sie in eine Client-Entity-UID umzuwandeln.

cmd-fuck-desc = Wirft eine Exception.
cmd-fuck-help = Verwendung: {$command}

cmd-showpos-desc = Zeigt die Position aller Entities auf dem Bildschirm an.
cmd-showpos-help = Verwendung: {$command}

cmd-showrot-desc = Zeigt die Rotation aller Entities auf dem Bildschirm an.
cmd-showrot-help = Verwendung: {$command}

cmd-showvel-desc = Zeigt die lokale Geschwindigkeit aller Entities auf dem Bildschirm an.
cmd-showvel-help = Verwendung: {$command}

cmd-showangvel-desc = Zeigt die Winkelgeschwindigkeit aller Entities auf dem Bildschirm an.
cmd-showangvel-help = Verwendung: {$command}

cmd-sggcell-desc = Listet Entities auf einer Snap-Grid-Zelle auf.
cmd-sggcell-help = Verwendung: {$command} <gridID> <vector2i>
    Der vector2i-Parameter hat die Form x<int>,y<int>.

cmd-overrideplayername-desc = Ändert den Namen, der beim Verbindungsversuch zum Server verwendet wird.
cmd-overrideplayername-help = Verwendung: {$command} <Name>

cmd-showanchored-desc = Zeigt verankerte Entities auf einer bestimmten Kachel an.
cmd-showanchored-help = Verwendung: {$command}

cmd-dmetamem-desc = Gibt die Member eines Typs in einem für die Sandbox-Konfigurationsdatei geeigneten Format aus.
cmd-dmetamem-help = Verwendung: {$command} <Typ>

cmd-launchauth-desc = Lädt Authentifizierungs-Token aus den Launcher-Daten, um das Testen auf Live-Servern zu erleichtern.
cmd-launchauth-help = Verwendung: {$command} <Kontoname>

cmd-lightbb-desc = Schaltet um, ob Begrenzungsrahmen von Lichtern angezeigt werden.
cmd-lightbb-help = Verwendung: {$command}

cmd-monitorinfo-desc = Monitorinformationen.
cmd-monitorinfo-help = Verwendung: {$command} <id>

cmd-setmonitor-desc = Setzt den Monitor.
cmd-setmonitor-help = Verwendung: {$command} <id>

cmd-physics-desc = Zeigt ein Physik-Debug-Overlay an. Das angegebene Argument bestimmt das Overlay.
cmd-physics-help = Verwendung: {$command} <aabbs / com / contactnormals / contactpoints / distance / joints / shapeinfo / shapes>

cmd-hardquit-desc = Beendet den Spiel-Client sofort hart.
cmd-hardquit-help = Verwendung: {$command}
                    Beendet den Spiel-Client sofort und spurlos. Dem Server wird nicht Lebewohl gesagt.

cmd-quit-desc = Fährt den Spiel-Client geordnet herunter.
cmd-quit-help = Verwendung: {$command}
                Fährt den Spiel-Client ordnungsgemäß herunter und benachrichtigt dabei unter anderem den verbundenen Server.

cmd-csi-desc = Öffnet eine interaktive C#-Konsole.
cmd-csi-help = Verwendung: {$command}

cmd-scsi-desc = Öffnet eine interaktive C#-Konsole auf dem Server.
cmd-scsi-help = Verwendung: {$command}

cmd-watch-desc = Öffnet ein Variablen-Beobachtungsfenster.
cmd-watch-help = Verwendung: {$command}

cmd-showspritebb-desc = Schaltet um, ob Sprite-Begrenzungen angezeigt werden.
cmd-showspritebb-help = Verwendung: {$command}

cmd-togglelookup-desc = Zeigt / verbirgt die Grenzen des Entity-Lookups per Overlay.
cmd-togglelookup-help = Verwendung: {$command}

cmd-net_entityreport-desc = Schaltet das Net-Entity-Report-Panel um.
cmd-net_entityreport-help = Verwendung: {$command}

cmd-net_refresh-desc = Fordert einen vollständigen Server-Zustand an.
cmd-net_refresh-help = Verwendung: {$command}

cmd-net_graph-desc = Schaltet das Netzwerk-Statistik-Panel um.
cmd-net_graph-help = Verwendung: {$command}

cmd-net_watchent-desc = Gibt alle Netzwerk-Updates für eine EntityId in der Konsole aus.
cmd-net_watchent-help = Verwendung: {$command} <0|EntityUid>

cmd-net_draw_interp-desc = Schaltet die Debug-Darstellung der Netzwerk-Interpolation um.
cmd-net_draw_interp-help = Verwendung: {$command} <0|EntityUid>

cmd-vram-desc = Zeigt die Videospeicher-Nutzung des Spiels an.
cmd-vram-help = Verwendung: {$command}

cmd-showislands-desc = Zeigt die aktuellen Physikkörper in jeder Physik-Insel an.
cmd-showislands-help = Verwendung: {$command}

cmd-showgridnodes-desc = Zeigt die Knoten für die Grid-Aufteilung an.
cmd-showgridnodes-help = Verwendung: {$command}

cmd-profsnap-desc = Erstellt einen Profiling-Snapshot.
cmd-profsnap-help = Verwendung: {$command}

cmd-devwindow-desc = Dev-Fenster.
cmd-devwindow-help = Verwendung: {$command}

cmd-scene-desc = Wechselt sofort die UI-Szene bzw. den UI-Zustand.
cmd-scene-help = Verwendung: {$command} <className>

cmd-szr_stats-desc = Gibt Serializer-Statistiken aus.
cmd-szr_stats-help = Verwendung: {$command}

cmd-hwid-desc = Gibt die aktuelle HWID (HardWare-ID) zurück.
cmd-hwid-help = Verwendung: {$command}

cmd-vvread-desc = Liest den Wert eines Pfads per VV (View Variables).
cmd-vvread-help = Verwendung: {$command} <Pfad>

cmd-vvwrite-desc = Ändert den Wert eines Pfads per VV (View Variables).
cmd-vvwrite-help = Verwendung: {$command} <Pfad>

cmd-vvinvoke-desc = Ruft einen Pfad per VV mit Argumenten auf.
cmd-vvinvoke-help = Verwendung: {$command} <Pfad> [Argumente...]

cmd-dump_dependency_injectors-desc = Gibt den Dependency-Injector-Cache des IoCManagers aus.
cmd-dump_dependency_injectors-help = Verwendung: {$command}
cmd-dump_dependency_injectors-total-count = Gesamtanzahl: { $total }

cmd-dump_netserializer_type_map-desc = Gibt die Typ-Map und den Serializer-Hash des NetSerializers aus.
cmd-dump_netserializer_type_map-help = Verwendung: {$command}

cmd-hub_advertise_now-desc = Meldet den Server sofort beim Master-Hub-Server an.
cmd-hub_advertise_now-help = Verwendung: {$command}

cmd-echo-desc = Gibt Argumente in der Konsole wieder aus.
cmd-echo-help = Verwendung: {$command} "<Nachricht>"

## 'vfs_ls' command
cmd-vfs_ls-desc = Listet Verzeichnisinhalte im VFS auf.
cmd-vfs_ls-help = Verwendung: {$command} <Pfad>
    Beispiel:
    vfs_list /Assemblies

cmd-vfs_ls-err-args = Es wird genau 1 Argument benötigt.
cmd-vfs_ls-hint-path = <Pfad>

cmd-reloadtiletextures-desc = Lädt den Kachel-Texturatlas neu, um Hot-Reloading von Kachel-Sprites zu ermöglichen.
cmd-reloadtiletextures-help = Verwendung: {$command}

cmd-audio_length-desc = Zeigt die Länge einer Audiodatei an
cmd-audio_length-help = Verwendung: {$command} { cmd-audio_length-arg-file-name }
cmd-audio_length-arg-file-name = <Dateiname>

## PVS
cmd-pvs-override-info-desc = Gibt Informationen zu allen mit einer Entity verbundenen PVS-Overrides aus.
cmd-pvs-override-info-empty = Entity {$nuid} hat keine PVS-Overrides.
cmd-pvs-override-info-global = Entity {$nuid} hat einen globalen Override.
cmd-pvs-override-info-clients = Entity {$nuid} hat einen Sitzungs-Override für {$clients}.

cmd-localization_set_culture-desc = Setzt die DefaultCulture für den LocalizationManager des Clients.
cmd-localization_set_culture-help = Verwendung: {$command} <cultureName>
cmd-localization_set_culture-culture-name = <cultureName>
cmd-localization_set_culture-changed = Lokalisierung geändert auf { $code } ({ $nativeName } / { $englishName })

cmd-addmap-hint-2 = runMapInit [true / false]
