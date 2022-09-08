table 50045 "RMD Einrichtung"
{
    // P0001-02 22.11.16 DEBIE.ARE RMDUmlagerung nicht buchen
    // P0001-01 09.06.16 DEBIE.ARE Update Qty
    // P0001 29.03.16 DEBIE.ARE New object
    // 
    // //c/gw/10092013 Anpassung in Funktion FTP_Control_RM
    //                 Erstellung und Start des RMDGet.bat jetzt IMMER nicht nur wenn keine .rms vorhanden sind
    //                 DURCH SETZEN VON SEMIKOLON NACH -> IF NOT FileRec.FIND('-') THEN  ; // <- Semikolon Signifikant ...
    //                                                      Start(TRUE, '*.*');
    // 
    // //c/wa/230513: - siehe in Funktion: RMs_Ggf_ZuerstBuchen
    //                  betreff Hidensetzung gewisser Dialoge wegen NAS
    // 
    // ©©©©©©©©©©©©©©©©©©©©©©©©©©©©©©
    // Comsol Unternehmenslösungen AG
    // ©©©©©©©©©©©©©©©©©©©©©©©©©©©©©©
    //   c/gw/100513   >>>  Update V4 -> V6.02 <<
    // 
    // ------------------------------------------------------------------------------------------------------------------------------------
    // c/gw/210911: - LASTERRORTEXT
    //              > Ergänzug in ...
    //                ...  RM_Change_RMD_History(CodeVal : Code[20];ProblemDescription : Text[1024])
    //                     .                                         ------------------
    //                     + ProblemDescription;  // ........................................................ ZUSATZ AM c/gw/210911
    // 
    // 
    // ftp://143-ZAF-RMD:32-JohDa54-dp@www.r-m-d-clients.com
    // //DUE400
    // > Logistikanbindung RMD
    // 
    // ------------------------------------------------------------------------------------------------------------------------------------
    // Beschreibung der Anbindung
    // 
    // Allgemein:
    //    Düperthal setzt den signifikanten "RMD Status" in Lagerkommissionierungen   früher (2.60) Packzettel
    //                                                   in RMD Umlagerungs Buch-Blättern  - interne Kommissionsläger -
    // 
    //    "RMD Status"=freigegeben heißt...
    //    ... wird durch rhythmisch über den Job Scheduler aufgerufenen speziellen Dataport auf dem RMD-ftp-Server bereitgestellt
    //    "RMD Status"=übertragen heißt...
    //    ... wurde durch den rhythmisch über den Job Scheduler aufgerufenen speziellen Dataport auf dem RMD-ftp-Server bereitgestellt
    //    "RMD Status"=rückgemeldet heißt...
    //    ... wurde durch den rhythmisch über den Job Scheduler aufgerufenen speziellen Dataport vom RMD-ftp-Server geholt
    //    "RMD Status"=fehlerhaft rückgemeldet heißt...
    //    ... wurde durch den rhythmisch über den Job Scheduler aufgerufenen speziellen Dataport vom RMD-ftp-Server geholt
    // 
    //    Es werden bestimmte Textfiles an RMD geschickt oder von dort abgeholt...
    //    ... Files mit der Extesion .VA  sind zu versendente <V>ersand<A>ufträge
    //        - aus "Lagerkomissionierungen" oder "RMD Umlagerungs Buch-Blättern"
    //    ... Files mit der Extension .rm sind abzuholende <R>ück<M>eldungen
    //        - mit diesen werden "Lagerkomissionierungen" oder "RMD Umlagerungs Buch-Blättern" rückgemeldet oder fehlerhaft rückgemeldet -
    // 
    //    "RMD Status"="rückgemeldet" bewirkt...
    //    ... bei Lagerkommissionierungen werden Aufträge modifiziert und gebuchte Lieferscheine erzeugt  /  also gebucht
    //        anschliessend wird die jeweilige Lagerkommissionierung gelöscht.
    //    ... bei Umlagerungsbuchblättern  wird die Umlagerung gebucht
    // 
    //    "RMD Status"="fehlerhaft rückgemeldet" heißt...
    //    ... es wird nicht gebucht  - manuele Schritte erforderlich -
    //        HIER KAN MAN IN DER RMD-Historie im Bereich:fehlerhaft GGF. GRÜNDE FÜR DAS FEHLERHAFTE ERKENNEN
    // 
    //    Mit Dataport...
    //       ...50045 RMD.va-Export VersandAuftr-PZ - werden PZ's zu RMD geschickt
    //       ...50046 RMD.rm-Import RückMeldung -PZ-  werden Rückmeldungen von PZ's verarbeitet
    // 
    //       ...50047 RMD.art-Export Artikelstamm werden periodisch Artikeldaten zu RMD geschickt
    // 
    //       ...50048 RMD.bk-Import Best.-Kontrolle werden Bestände abgeglichen, d.h. von RMD
    //          werden die Informationen geholt und den Düperthal-Beständen gegenübergestellt.
    // 
    //       ...50049 RMD.va-Export VersandAuftr-UM- werden die Inhalte von speziellen Umlagerungs-Buchblättern zu RMD geschickt
    //       ...50050 RMD.rm-Import RückMeldung -UM- werden Rückmldungen von speziellen Umlagerungs-Buchblättern verarbeitet
    // 
    //       ...50051 RMD.ova-Import VA-Kontrolle werden offene VA's bei RMD mit denen bei Düperthal angeglichen
    // 
    //    Im RMD-ftp-Verzeichnis
    //       ...DP2RMD landen alle von Düpertal geschickten Files  (Stand:Ende August 2007)
    //       ...RMD2DP werden von Düperthal alle Files abgeholt die von RMD dort bereitgestellt wurden
    // 
    //    Die lokalen Verzeichnisse bei Düperthal sind genauso in die "RMD Einrichtung" einzugeben wie die 2 oben bereits erwähnten
    //    Remote-Verzeichnisse.
    // 
    //    Zum Schicken und Abholen gibt es bei Düperthal sogenannte Allgeine-Verzeichnisse die können z.B. wie folgt heißen
    //    ... EXPORT   hier werden alle ausgehenden Files zuerst gespeichert
    //    ... IMPORT   hier werden alle eingehenden Files zuerst gespeichert
    //    ... ERRORS   nach der fehlhaften Verarbeitung von Rückmeldungen landen diese hier
    // 
    //    ferner gibt es noch Archiv-Verzeichnisse für
    //    ... ARTIKELSTAMM           ... hier landen die Files die zu RMD geschickt wurden   (betreffend Artikelstamm)
    //    ... BESTANDSKONTROLLE      ... hier landen die Files die von RMD geschickt wurden  (betreffend Bestandskontrolle)
    //                                   und eine weitere Verarbeitungsdatei welche beim Abholen der ersten Datei
    //                                   erzeugt wird in der entsprechende Düperthal-Daten den RMD-Daten gegenüber gestellt werden
    //    ... OFFENE-VA KONTROLLE    ... hier landen die Files die von RMD geschickt wurden  (betreffend Kontrolle offener VA's)
    //                                   und eine weitere Verarbeitungsdatei welche beim Abholen der ersten Datei
    //                                   erzeugt wird in der entsprechende Düperthal-Daten den RMD-Daten gegenüber gestellt werden
    //    ... VA-PACKZETTEL          ... hier werden verschickte Lagekommissionierungen(Packzettel) archiviert
    //    ... VA-UMLAGERUNG          ... hier werden verschickte Inhalte aus Umlagerungs-Buch-Blättern archiviert
    //    ... RM-PACKZETTEL          ... hier werden FEHLERFREI rückgemeldete Lagekommissionierungen(Packzettel) archiviert
    //    ... RM-UMLAGERUNG          ... hier werden FEHLERFREI rückgemeldete Inhalte aus Umlagerungs-Buch-Blättern archiviert
    // 
    // ------------------------------------------------------------------------------------------------------------------------------------
    // Spezielle Bemerkungen   !!!  Wichtig  !!! Wichtig  !!!  Wichtig  !!!  Wichtig  !!!  Wichtig  !!!  Wichtig  !!!
    // 
    // 1...
    //    ...Die Rückmeldungen bzw. das Buchen von rückgemeldeten Packzetteln und Umlagerungsbuchblättern geschieht in mehreren Schritten
    // 
    //       Der jeweilge Dataport geht folgend vor ...
    //       ... es wird gepüft ob es rückgemeldete Sachen gibt
    //           WENN JA werden diese gebucht
    //           ANDERNFALLS...
    //                      ... wird geprüft ob es im Allgemeinen Importverzeichnis zu verarbeitende Rückmeldungen gibt
    //                          WENN JA werden diese rückgemeldet
    //                          ANDERNFALLS...
    //                                     ... wird geprüft ob es im RMD-Remotedirectory etwas abzuholen gibt, das im
    //                                         lokalen Importverzeichnis bereitzustellen ist
    //       !!! ES WIRD IN EINEM JOB SCHEDULER STEP ALSO IMMER NUR EINES DER BESCHRIEBENEN DINGE GEMACHT !!!
    // 
    // 2...
    //     ... Die ftp-Zugriffsparameter ( Host, Login und Passwort ) sind hier in diesem Objekt in den Textkonstanten zu finden
    // 
    // 3...
    //     ... Weiteres zukünftig wissenswerte
    //         ...
    //         ...
    //         ...
    //         ...
    // 
    // ES FOLGT EINE AUFLISTUNG ALLER VON DER RMD-ANBINDUNG BETROFFENER OBJEKTE
    // ------------------------------------------------------------------------------------------------------------------------------------
    // > Tanierte Objekte
    // 1 27 Item
    // 1 36 Sales Header
    // 1 82 Item Journal Template
    // 1 83 Item Journal Line
    // 1 110 Sales Shipment Header
    // 1 233 Item Journal Batch
    // 1 5766 Warehouse Activity Header
    // 1 5767 Warehouse Activity Line
    // 1 5770 Warehouse Comment Line
    // 1 5980 Job Scheduler Mgt. Setup
    // 1 5981 Job Scheduler Setup
    // 1 5982 Job Scheduler Log
    // 1 50045 RMD Einrichtung
    // 1 50046 RMDHist Erfolgreich&Fehlerhaft
    // 1 50047 RMD Labelanweisung
    // 1 5005157 RMD Uml.-BuchBlatt-Bemerkungen
    // 2 30Item Card
    // 2 42Sales Order
    // 2 102Item Journal Templates
    // 2 262Item Journal Batches
    // 2 6090Job Scheduler Mgt. Setup
    // 2 6091Job Scheduler Setup
    // 2 6092Job Scheduler Setup List
    // 2 6093Job Scheduler Overview
    // 2 6094Job Scheduler Management
    // 2 6095Job Scheduler Log
    // 2 6097 Error Checking
    // 2 7377 Inventory Pick
    // 2 50044 RMDHist Fehlerhaft
    // 2 50045 RMD Einrichtung
    // 2 50046 RMDHist Erfolgreich
    // 2 50047 RMD Labelanweisung
    // 2 50048 RMD Umlagerungs BuchBlatt
    // 2 50050 RMD Item Journal Templates
    // 2 50051 RMD Item Journal Template List
    // 2 50051 66RMD Uml.-BuchBlatt-Bemerkungen
    // 3 6050 Delete Job Scheduler Log
    // 4 50045 RMD.va-Export VersandAuftr-PZ-
    // 4 50046 RMD.rm-Import RückMeldung -PZ-
    // 4 50047 RMD.art-Export Artikelstamm
    // 4 50048 RMD.bk-Import Best.-Kontrolle
    // 4 50049 RMD.va-Export VersandAuftr-UM-
    // 4 50050 RMD.rm-Import RückMeldung -UM-
    // 4 50051 RMD.ova-Import VA-Kontrolle
    // 5 23 Item Jnl.-Post Batch
    // 5 240 ItemJnlManagement
    // 5 241 Item Jnl.-Post
    // 5 242 Item Jnl.-Post+Print
    // 5 596 1JobScheduler-Run Object
    // 
    // c/gw/261107 RMD-Uml.-Buchblatt Probl.-wird nicht autogebucht
    //             ...  Stichwort:Type  komma
    // 
    // c/gw/210208: - A17068 Katalogversand
    //              > Neue Felder
    //                . 50000 Catalog Order No. Series
    //                . 50001 Special Order Customer No.
    //                . 50002 Catalog Interaction Group code
    //                . 50003 Catalog Interaction Templ.Code
    //                . 50004 Catalog Item
    //                . 50005 Altern. Spec. Order No. Series
    //                . 50006 Altern. Interaction Group Code
    //                . 50007 Altern. Interaction Templ.Code
    // 
    // c/gw/130308: - A17104
    //              > neues Feld
    //                . 50008 Special Order Def.Ship. Agent
    //              > TANGIERTE OBJEKTE ...
    //                ... Table 5050 Contact
    //                ... Table 50045 RMD Einrichtung
    //                ... Form  50045 REM Einrichtung
    // 
    // c/gw/290109: - A17711 "Import Bestellung WÜRTH"
    //              > neues Feld ...
    //                ... 50010 "Bestellung EMail-Import"
    //                ... 50011 "Bestellung Archivpfad"
    // 
    // c/gw/100610: - A19165 Fehlerhandling RMD                                         - Ergänzung: EMailBenachrichtigung an Mitarbeiter -
    //              > Objversand10.06 nach SMTP-Einrichtung gestern durch Herrn Radloff - inkl. Herrn Beermann (DüSi EXTERN) -
    // c/wa/210311: - Feldlänge für Felder mit Tableralation auf USER von 10 auf 20 Zchn. vergrößert


    fields
    {
        field(1; "Primärschlüssel"; Code[10])
        {
        }
        field(2; Erstellungsuser; Code[20])
        {
            Description = 'c/wa/210311 (erweitert auf 20)';
        }
        field(3; Erstellungsdatum; Date)
        {
        }
        field(4; Erstellungszeit; Time)
        {
        }
        field(5; "Änderungsuser"; Code[20])
        {
            Description = 'c/wa/210311 (erweitert auf 20)';
        }
        field(6; "Änderungsdatum"; Date)
        {
        }
        field(7; "Änderungszeit"; Time)
        {
        }
        field(100; "Root Directory"; Code[50])
        {
            Description = 'Dies WAR das LW auf dem sich die RMD-Verzeichnisse beainden  /  AKTUELLER( 5/2013 ) "Root Directory" -> \\s-ts1\        früher->  Lokaler Laufwerksbuchstabe  = C in VorVersion = Code(1)';
        }
        field(105; "NCFTP Directory"; Code[200])
        {
            Description = 'Dies ist das LW auf dem die FTP-Software intalliert ist';
        }
        field(110; "RemoteDirectory DÜPERTHALtoRMD"; Code[200])
        {
            Description = 'Dies ist das Remote Verzeichnis für Düperthal-Exports';
        }
        field(120; "RemoteDirectory RMDtoDÜPERTHAL"; Code[200])
        {
            Description = 'Dies ist das Remote Verzeichnis für Düperthal-Imports';
        }
        field(1000; "Allgemeiner Exportpfad"; Code[200])
        {
            Description = 'Hier wird zuerst alles was exportiert werden soll erzeugt';
        }
        field(1010; "Allgemeiner Importpfad"; Code[200])
        {
            Description = 'Hier wird zuerst alles was importiert werden soll reingestellt';
        }
        field(1015; "Allgemeiner Pfad  (Fehler)"; Code[200])
        {
            Description = 'Hierher werden alle fehlerhaften Import-Dateien verschoben';
        }
        field(1020; "Letzte verarbeitete Datei"; Text[30])
        {
        }
        field(1030; "Letzte Verarbeitung Datum"; Date)
        {
        }
        field(1040; "Letzte Verarbeitung Zeit"; Time)
        {
        }
        field(2000; "VA Datei-Matchcode"; Text[5])
        {
            Description = 'VA = <Versand> <A>uftrag';
        }
        field(2010; "VA Aktuelle/Letzte Datei"; Text[30])
        {
        }
        field(2030; "VA Letzte Verarbeitung Datum"; Date)
        {
        }
        field(2040; "VA Letzte Verarbeitung Zeit"; Time)
        {
        }
        field(2050; "VA Archivpfad (Pakzettel)"; Code[200])
        {
            Description = 'Dies ist das Verzeichnis in dem "exportierte VA`s aus Packzetteln" archiviert werden';
        }
        field(2060; "VA Archivpfad (Umlagerung)"; Code[200])
        {
            Description = 'Dies ist das Verzeichnis in dem "exportierte VA`s aus Umlagerungsbuchblättern" archiviert werden';
        }
        field(2070; "VA Anzahl Datenzeilen"; Integer)
        {
        }
        field(2090; "VA Verarbeitungsstatus"; Option)
        {
            OptionMembers = " ",Erfolgreich,Fehlerhaft;
        }
        field(2500; "VA EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
        field(3000; "RM Datei-Matchcode"; Text[5])
        {
            Description = 'RM = Rückmeldung';
        }
        field(3010; "RM Aktuelle/Letzte Datei"; Text[30])
        {
        }
        field(3030; "RM Letzte Verarbeitung Datum"; Date)
        {
        }
        field(3040; "RM Letzte Verarbeitung Zeit"; Time)
        {
        }
        field(3050; "RM Archivpfad (Pakzettel)"; Code[200])
        {
            Description = 'Dies ist das Verzeichnis in dem "importierte Rückmeldungen aus Packzetteln" archiviert werden';
        }
        field(3060; "RM Archivpfad (Umlagerung)"; Code[200])
        {
            Description = 'Dies ist das Verzeichnis in dem "importierte Rückmeldungen aus Umlagerungsbuchblättern" archiviert werden';
        }
        field(3070; "RM Anzahl Datenzeilen"; Integer)
        {
        }
        field(3090; "RM Verarbeitungsstatus"; Option)
        {
            OptionMembers = " ",Erfolgreich,Fehlerhaft;
        }
        field(3100; "RM Gewicht (RMD)"; Decimal)
        {
            Description = 'wird in RM''s von RMD zurückgemeldet';
        }
        field(3110; "RM Anzahl Colli (RMD)"; Integer)
        {
            Description = 'wird in RM''s von RMD zurückgemeldet';
        }
        field(3120; "RM Paketnr. (RMD)"; Text[30])
        {
            Description = 'wird in RM''s von RMD zurückgemeldet';
        }
        field(3130; "RM Zusteller (RMD)"; Code[10])
        {
            Description = 'wird in RM''s von RMD zurückgemeldet';
        }
        field(3140; "RM Lieferscheinnr. (RMD)"; Code[20])
        {
            Description = 'wird in RM''s von RMD zurückgemeldet';
        }
        field(3500; "RM EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
        field(4000; "ART Datei-Matchcode"; Text[5])
        {
            Description = 'ART = Artkelstamm';
        }
        field(4010; "ART Aktuelle/Letzte Datei"; Text[30])
        {
        }
        field(4030; "ART Letzte Verarbeitung Datum"; Date)
        {
        }
        field(4040; "ART Letzte Verarbeitung Zeit"; Time)
        {
        }
        field(4050; "ART Archivpfad"; Code[200])
        {
            Description = 'Dies ist das Verzeichnis in dem "importierte Bestandskontroll-Dateien" archiviert werden';
        }
        field(4060; "ART Letzte Jounalnr."; Code[20])
        {
        }
        field(4070; "ART Anzahl Datenzeilen"; Integer)
        {
        }
        field(4090; "ART Verarbeitungsstatus"; Option)
        {
            OptionMembers = " ",Erfolgreich,Fehlerhaft;
        }
        field(4500; "ART EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
        field(5000; "BK Datei-Matchcode"; Text[5])
        {
            Description = 'BK = Bestandskontrolle';
        }
        field(5005; "BK Extension (Auswertung)"; Text[5])
        {
        }
        field(5010; "BK Aktuelle/Letzte Datei"; Text[30])
        {
        }
        field(5030; "BK Letzte Verarbeitung Datum"; Date)
        {
        }
        field(5040; "BK Letzte Verarbeitung Zeit"; Time)
        {
        }
        field(5050; "BK Archivpfad"; Code[200])
        {
        }
        field(5070; "BK Anzahl Datenzeilen"; Integer)
        {
        }
        field(5090; "BK Verarbeitungsstatus"; Option)
        {
            OptionMembers = " ",Erfolgreich,Fehlerhaft;
        }
        field(5500; "BK EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
        field(6000; "oVA Datei-Matchcode"; Text[5])
        {
            Description = 'oVA = <o>ffene <V>ersand <A>ufträge';
        }
        field(6005; "oVA Extension (Auswertung)"; Text[5])
        {
        }
        field(6010; "oVA Aktuelle/Letzte Datei"; Text[30])
        {
        }
        field(6030; "oVA Letzte Verarbeitung Datum"; Date)
        {
        }
        field(6040; "oVA Letzte Verarbeitung Zeit"; Time)
        {
        }
        field(6050; "oVA Archivpfad"; Code[200])
        {
        }
        field(6070; "oVA Anzahl Datenzeilen"; Integer)
        {
        }
        field(6090; "oVA Verarbeitungsstatus"; Option)
        {
            OptionMembers = " ",Erfolgreich,Fehlerhaft;
        }
        field(6500; "oVA EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
        field(50000; "Catalog Order No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Description = 'c-gw-210208: - A17068';
            TableRelation = "No. Series";
        }
        field(50001; "Special Order Customer No."; Code[20])
        {
            Caption = 'Special Order Customer No.';
            Description = 'c-gw-210208: - A17068';
            TableRelation = Customer;
        }
        field(50002; "Catalog Interaction Group Code"; Code[10])
        {
            Caption = 'Interaction Group Code';
            Description = 'c-gw-210208: - A17068';
            TableRelation = "Interaction Group";
        }
        field(50003; "Catalog Interaction Templ.Code"; Code[10])
        {
            Caption = 'Catalog Interaction Template Code';
            Description = 'c-gw-210208: - A17068';
            TableRelation = "Interaction Template";
        }
        field(50004; "Catalog Item"; Code[20])
        {
            Caption = 'Current Catalog Item';
            Description = 'c-gw-210208: - A17068';
            TableRelation = Item;
        }
        field(50005; "Altern. Spec. Order No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Description = 'c-gw-210208: - A17068';
            TableRelation = "No. Series";
        }
        field(50006; "Altern. Interaction Group Code"; Code[10])
        {
            Caption = 'Interaction Group Code';
            Description = 'c-gw-210208: - A17068';
            TableRelation = "Interaction Group";
        }
        field(50007; "Altern. Interaction Templ.Code"; Code[10])
        {
            Caption = 'Alternate Interaction Template Code';
            Description = 'c-gw-210208: - A17068';
            TableRelation = "Interaction Template";
        }
        field(50008; "Special Order Def.Ship. Agent"; Code[10])
        {
            Caption = 'Special Order Default Shipping Agent';
            Description = 'c-gw-130308: - A';
            TableRelation = "Shipping Agent";
        }
        field(50010; "Bestellung EMail-Importpfad"; Code[200])
        {
            Description = 'c-gw-290109: - A17711';
        }
        field(50011; "Bestellung Archivpfad"; Code[200])
        {
            Description = 'c-gw-290109: - A17711';
        }
        field(50510; "Spec Order EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
        field(50520; "Bestellung EMail Zuordnungsnr."; Integer)
        {
            Description = 'c-gw-200410: - A19165';
            TableRelation = "EMail per RMD-Beleg Setup";
        }
    }

    keys
    {
        key(Key1; "Primärschlüssel")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

