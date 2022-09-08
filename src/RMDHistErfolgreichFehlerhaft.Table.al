table 50046 "RMDHist Erfolgreich&Fehlerhaft"
{
    // P0001 15.02.16 DEBIE.ARE New object
    // 
    // //DUE400
    // > Logistikanbindung RMD
    // 
    //       WAS RMD BETRIFFT siehe auch in Documentation der Tabelle RMD Einrichtung    !!!      ALLE RMD-TANGIERTEN ENTHALTEN
    //     - dort stehen u.a. die irgendwie von der Logistikanbindung RMD tangierten Objekte -    'RMD' IN DER VERSIONSLISTE!!!
    // ------------------------------------------------------------------------------------------------------------------------
    // 
    // c/gw/290109: - A17711 "Import Bestellung WÜRTH"
    //              > Neuer Optionstring Feld 6 Art
    //                NEU Art = VA-Packzettel,VA-Umlagerung,RM-Packzettel,RM-Umlagerung,Artikelstamm,Bestandskontrolle,offene-VA-Kontrolle
    //                          ,Bestellung    <= kam hinzu
    // 
    // c/gw/030209: - A17711 Nacharbeit
    //              > Feld Datei von 30 auf 200 Byte erweitert
    //                es gab Probleme  weil Namen sich im Ablauf
    //                der Bestellung-Schnittstelle ändern - länger werden -
    // 
    // c/gw/200410: - A19165 "Fehlerhandling RMD"
    //              > Funktion:SendEMail ...
    //                ... Aufruf in OnInsert
    //              > Funktion:URLErstellung ...
    //                ... Aufruf inFunktion:SendEMail
    //              > weitere neue Funktionen
    //                ... GetEmail_An
    //                ... GetEmail_Kopie
    //                ... GetEmail_BlindKopie
    //                ... GetEmail_Betreff
    //                ... GetEmail_Zeilen
    //                ... GetEmail_URL
    //                ... GetEmail_LinkText
    //                ... GetEmail_Dateiname
    //                ... GetEMail_SofortVersand
    // 
    // c/gw/100610: - A19165 Fehlerhandling RMD                                         - Ergänzung: EMailBenachrichtigung an Mitarbeiter -
    //              > Objversand10.06 nach SMTP-Einrichtung gestern durch Herrn Radloff - inkl. Herrn Beermann (DüSi EXTERN) -
    // 
    // c/gw/210911 - Feld 20 Bemerkung von 100 auf 250 erweitert
    //             > Grund: 'Fehler beim Buchen!!! ' mit 6.0-Fnktion -> GETLASTERRORTEXT erweitert!

    Caption = 'Historie';

    fields
    {
        field(1; "Lfd.-Nr"; Integer)
        {
        }
        field(2; Richtung; Option)
        {
            OptionMembers = Export,Import;
        }
        field(3; "Pfad  (Archivierung)"; Code[200])
        {
        }
        field(4; Matchcode; Text[5])
        {
        }
        field(5; Datei; Text[200])
        {
        }
        field(6; Art; Option)
        {
            Description = 'VA-Packzettel,VA-Umlagerung,RM-Packzettel,RM-Umlagerung,Artikelstamm,Bestandskontrolle,offene-VA-Kontrolle,Bestellung';
            OptionMembers = "VA-Packzettel","VA-Umlagerung","RM-Packzettel","RM-Umlagerung",Artikelstamm,Bestandskontrolle,"offene-VA-Kontrolle",Bestellung;
        }
        field(7; Relationcode; Code[20])
        {
        }
        field(8; Datum; Date)
        {
        }
        field(9; Zeit; Time)
        {
        }
        field(10; "Record Type"; Option)
        {
            OptionMembers = " ",Erfolgreich,Fehlerhaft;
        }
        field(11; "Anzahl Datenzeilen"; Integer)
        {
        }
        field(12; "Pfad (Export/Import)"; Code[200])
        {
        }
        field(20; Bemerkung; Text[250])
        {
            Description = 'c/gw/210911 Feld von 100 auf 250 erweitert';
        }
        field(2100; "RMD Status Auftrag"; Option)
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird an RMD geliefert';
            OptionMembers = normal,"Abruf gesperrt","Vorkasse gesperrt",Gesamtauftrag,Musterauftrag,Sammelrechnung,Montageauftrag,Vorabrechnung,Einlagerung,Sonderkommission,Feinabstimmung;
        }
        field(2110; "RMD Rückinfo an Düperthal"; Boolean)
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird an RMD geliefert';
        }
        field(2120; "RMD Sammelsendung"; Boolean)
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird an RMD geliefert';
        }
        field(2130; "RMD Deb.-KD-Nr. bei Spedition"; Text[30])
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird an RMD geliefert';
        }
        field(3100; "RM Gewicht (RMD)"; Decimal)
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird von RMD rückgeliefert';
        }
        field(3110; "RM Anzahl Colli (RMD)"; Integer)
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird von RMD rückgeliefert';
        }
        field(3120; "RM Paketnr. (RMD)"; Text[30])
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird von RMD rückgeliefert';
        }
        field(3130; "RM Zusteller (RMD)"; Code[10])
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird von RMD rückgeliefert';
        }
        field(3140; "RM Lieferscheinnr. (RMD)"; Code[20])
        {
            Description = 'c/gw/Juni2005: - Projekt:1342 wird von RMD rückgeliefert';
        }
    }

    keys
    {
        key(Key1; "Record Type", "Lfd.-Nr")
        {
            Clustered = true;
        }
        key(Key2; Datum, Zeit, Relationcode, Art)
        {
        }
        key(Key3; Relationcode, Richtung, Datum, Zeit)
        {
        }
    }

    fieldgroups
    {
    }
}

