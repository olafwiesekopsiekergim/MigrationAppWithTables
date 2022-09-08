table 5138347 "Exp Atlas Setup"
{
    Caption = 'Atlas Setup';
    Permissions = TableData "Exp Atlas Setup" = rm;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            Description = 'DEU=Primärschlüssel;ENU=Primary Key';
        }
        field(2; "Setup Version"; Text[30])
        {
            Caption = 'Setup Version';
            Description = 'nur intern ';
            Editable = false;
        }
        field(10; Proxy; Boolean)
        {
            Caption = 'Proxy';
        }
        field(11; "Proxy Name"; Text[250])
        {
            Caption = 'Proxy Name';
        }
        field(12; "Proxy Port"; Integer)
        {
            Caption = 'Proxy Port';
        }
        field(13; "Proxy Domain"; Text[30])
        {
            Caption = 'Proxy Domain';
        }
        field(14; "Proxy Username"; Text[50])
        {
            Caption = 'Proxy Username';
        }
        field(15; "Proxy Password"; Text[30])
        {
            Caption = 'Proxy Password';
        }
        field(17; "Connection Timeout"; Integer)
        {
            Caption = 'Connection Timeout (sec)';
            Description = 'wir in ms an den Connector übertragen';
        }
        field(18; "Log Filename"; Text[250])
        {
            Caption = 'Log Filename';
        }
        field(19; "Log Level"; Option)
        {
            Caption = 'Log Level';
            Description = '0=aus, 1=Verbose, 2=Verbose+CallStack-Info';
            OptionCaption = 'off,Verbose,Verbose+CallStack';
            OptionMembers = "0","1","2";
        }
        field(20; "AES-Customer Number"; Code[15])
        {
            Caption = 'AES-Customer Number';
        }
        field(21; "AES-Client"; Code[15])
        {
            Caption = 'AES-Client';
        }
        field(22; "User Name"; Text[50])
        {
            Caption = 'User Name';
            Description = 'ist "Case sensitive", daher Textfeld';
        }
        field(23; Password; Text[30])
        {
            Caption = 'Password';
            Description = 'ist "Case sensitive", daher Textfeld';
        }
        field(24; "Password encrypted"; Boolean)
        {
            Caption = 'Password encrypted';
            Description = 'nur für Setup-Codeunit';
        }
        field(29; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(30; "Export Order Numbers"; Code[10])
        {
            Caption = 'Export Order Numbers';
            TableRelation = "No. Series";
        }
        field(31; "Customs Adress Numbers"; Code[10])
        {
            Caption = 'Customs Adress Numbers';
            TableRelation = "No. Series";
        }
        field(33; "Customs Tariffno. Templ. Nos."; Code[10])
        {
            Caption = 'Customs Tariffno. Templ. Nos.';
            TableRelation = "No. Series";
        }
        field(34; "Export Order Template Nos."; Code[10])
        {
            Caption = 'Export Order Template Nos.';
            TableRelation = "No. Series";
        }
        field(40; "Remaining Transactions"; Integer)
        {
            Caption = 'Remaining Transactions';
            Description = 'wird beim Ausführen automatisch aktualisiert';
        }
        field(41; "Transaction Warning Level"; Integer)
        {
            Caption = 'Transaction Warning Level';
            Description = 'ab dieser verbleibenden Transaktionsanzahl wird bei der Ausfuhr gewarnt';
        }
        field(42; "URL Reorder Transactions"; Text[250])
        {
            Caption = 'URL Reorder Transactions';
        }
        field(43; "URL FAQ"; Text[250])
        {
            Caption = 'URL FAQ';
        }
        field(44; "Last Upd. Rem. Transactions"; DateTime)
        {
            Caption = 'Last Upd. Rem. Transactions';
            Description = 'letzte Aktualisierung der verbleibenden Transaktionen';
        }
        field(50; "Timestamp Setup Data"; Text[30])
        {
            Caption = 'Timestamp Setup Data';
            Editable = false;
        }
        field(51; "Default Exporteur"; Code[20])
        {
            Caption = 'Default Exporteur';
            TableRelation = "Exp Atlas Address" WHERE (Art = CONST ("Ausführer"));
        }
        field(52; "Default Declarant"; Code[20])
        {
            Caption = 'Default Declarant';
            TableRelation = "Exp Atlas Address" WHERE (Art = CONST (Anmelder));
        }
        field(53; "Default Declarants agent"; Code[20])
        {
            Caption = 'Default Declarant''s agent';
            TableRelation = "Exp Atlas Address" WHERE (Art = CONST ("Vertreter d. Anmelders"));
        }
        field(54; "Default Subcontractor"; Code[20])
        {
            Caption = 'Default Subcontractor';
            TableRelation = "Exp Atlas Address" WHERE (Art = CONST (Subunternehmer));
        }
        field(55; "Default Place of loading"; Code[20])
        {
            Caption = 'Default Place of loading';
            TableRelation = "Exp Atlas Address" WHERE (Art = CONST (Ladeort));
        }
        field(56; "Default Customs proc. declared"; Code[2])
        {
            Caption = 'Default Customs procedure declared';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0124'));
        }
        field(57; "Default Customs proc. previous"; Code[2])
        {
            Caption = 'Default Customs procedure previous';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0125'));
        }
        field(58; "Default Customs proc. add."; Code[3])
        {
            Caption = 'Default Customs procedure additional';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0126'));
        }
        field(59; "Default Previous Document Type"; Code[6])
        {
            Caption = 'Default Previous Document Type';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0101'));
        }
        field(70; "Supress Tariff No."; Code[10])
        {
            Caption = 'Supress Tariff No.';
            Description = 'wird nicht in Ausfuhrauftrag übertragen';
            TableRelation = "Tariff Number";
        }
        field(71; "Countrycode to Template"; Boolean)
        {
            Caption = 'Countrycode to Template';
            Description = 'übertrage Ländercode in Vorlage';
        }
        field(72; "Connector on Service-Layer"; Boolean)
        {
            Caption = 'Connector on Service-Layer';
            Description = '>= NAV2009: Connector-Instanz Client- oder Server-Seitig';
        }
        field(73; "Auto Retrieve Remaining Trans."; Boolean)
        {
            Caption = 'Auto Retrieve Remaining Trans.';
            Description = 'vor und nach Senden des Auftrags verbleibende Transaktionen abrufen';
        }
        field(74; "Allow deletion of goods lines"; Boolean)
        {
            Caption = 'Allow deletion of goods lines';
            Description = 'löschen von aufbereiteten Warenzeilen erlauben; Dieses Feld wird nicht in der Setup-Form angezeigt und muss manuell über den Objektdesigner in der Table gesetzt werden!';
        }
        field(79; "Auto Retrieve Error-PDF"; Boolean)
        {
            Caption = 'Auto Retrieve Error-PDF';
            Description = 'beim Aktualisieren des Zollstatus automatisch fachliche- und technische Fehler abrufen';
        }
        field(80; "Send automaticaly"; Boolean)
        {
            Caption = 'send automaticaly';
            Description = 'wenn bei Funktion "Ausführen" PlausiStatus = O (Ok) zurückkommt';
        }
        field(81; "Auto Retrieve ABD at Status"; Option)
        {
            Caption = 'Auto Retrieve ABD at Status';
            OptionCaption = ' ,,,,,,,,,,,,,,,,,,,,,,,19i - Überlassen (ABD vorhanden),,,,,,,,30 - Überlassen (erg./vollst. AM wird erwartet),31 - Überlassen (erg./vollst. AM liegt vor),32 - Ausgang ganz/ teilweise bestätigt,33 - Ausgang ganz/ teilweise bestätigt,,35 - Erledigt  (Ausfuhrnachweis vorhanden),36 - Ausgang untersagt,37 - Bearbeitung außerhalb AES,38 - Ungültig/ Storniert';
            OptionMembers = " ","00","01","02","03","04","05","06","07","08","09","10","11","12","13","14a","14b","15","16a","16b","17a","17b","18","19i","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41";
        }
        field(82; "Auto Retrieve AM at Status"; Option)
        {
            Caption = 'Auto Retrieve AM at Status';
            OptionCaption = ' ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,31 - Transfer (erg./vollst. AM existing),32 - Outgo complete/partial verify,33 - Outgo complete/partial bestätigt,,35 - Done  (Ausfuhrnachweis existing),36 - Outgo enjoin,37 - Processing out AES,38 - Invalid/ canceled';
            OptionMembers = " ","00","01","02","03","04","05","06","07","08","09","10","11","12","13","14a","14b","15","16a","16b","17a","17b","18","19i","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39";
        }
        field(83; "Auto Register at Status"; Option)
        {
            Caption = 'Auto Register at Status';
            OptionCaption = ' ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,35 - Done  (Ausfuhrnachweis existing),36 - Outgo enjoin,37 - Processing out AES,38 - Invalid/ canceled';
            OptionMembers = " ","00","01","02","03","04","05","06","07","08","09","10","11","12","13","14a","14b","15","16a","16b","17a","17b","18","19i","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39";
        }
        field(84; "Show Fieldnumbers"; Boolean)
        {
            Caption = 'Show Fieldnumbers';
            Description = 'Feldnummern in Ausfuhrauftragsform anzeigen; deprecated';
        }
        field(85; "CountryFilter activ"; Boolean)
        {
            Caption = 'CountryFilter activ';
            Description = 'Länderfilter bei Herkunftsbeleg holen aktiv';
        }
        field(86; "Activate Process Aggregation"; Boolean)
        {
            Caption = 'Activate Process Aggregation';
            Description = 'Verdichtung nach Verfahren in Abghängigkeit des Urpsrungslandes des Artikels';
        }
        field(87; "Copy Related Documents"; Boolean)
        {
            Caption = 'copy Related Documents';
            Description = 'kopieren der Unterlagen bei Beipack erstellen';
        }
        field(88; "Invoice No. to rel. Doc."; Boolean)
        {
            Caption = 'Insert Invoice No. to rel. Doc.';
            Description = 'trage die Rechnungsnummern automatisch als N380 in die Unterlagen ein';
        }
        field(89; "Compress with Descr. from"; Option)
        {
            Caption = 'Compress with Descr. from';
            Description = 'beim verdichten den Text woher verwenden; wenn Beschreibung voll ist => neue Warenposition';
            OptionCaption = 'Tariff No.,SourceDocLine';
            OptionMembers = "Tariff No.",SourceDocLine;
        }
        field(90; "URL WebService"; Text[250])
        {
            Caption = 'URL WebService';
        }
        field(92; "DMS active"; Boolean)
        {
            Caption = 'DMS active';
            Description = 'aktives Dokumenten-Mangement-System; wenn aktiv => auch wenn z.B. ABD nicht mehr im Verzeichnis, nicht erneut abrufen';
        }
        field(93; "PDF Directory ABD"; Text[250])
        {
            Caption = 'PDF Directory ABD';
            Description = 'Ausfuhrbegleitdokument';
        }
        field(94; "PDF Directory AM"; Text[250])
        {
            Caption = 'PDF Directory AM';
            Description = 'Ausfuhrmeldung';
        }
        field(95; "PDF Directory Proc. Doc."; Text[250])
        {
            Caption = 'PDF Directory Procedure Documentation';
            Description = 'Fehlerprotokolle, Logbuch etc.';
        }
        field(150; "Src. Doc Description from"; Option)
        {
            Caption = 'Herk. Zeile Beschreibung aus';
            Description = 'welche Beschreibung soll in die Herkunftszeilen eingetragen werden (wichtig für Verdichtung)';
            OptionCaption = 'Herkunftsbelegzeile,Artikelstamm';
            OptionMembers = "Source Doc. Line",Item;
        }
        field(200; "Sales Order Line Qty. Base"; Option)
        {
            Caption = 'Sales Order Line Qty. Base';
            Description = 'welche Menge soll aus der Sales Line in den Ausfuhrauftrag übertragen werden';
            OptionCaption = 'Qty. to Ship,Quantity,Qty. to Invoice';
            OptionMembers = "Qty. to Ship",Quantity,"Qty. to Invoice";
        }
        field(201; "Transfer Order Line Qty. Base"; Option)
        {
            Caption = 'Transfer Order Line Qty. Base';
            Description = 'welche Menge soll aus der Transfer Line in den Ausfuhrauftrag übertragen werden';
            OptionCaption = 'Qty. to Ship,Quantity';
            OptionMembers = "Qty. to Ship",Quantity;
        }
        field(202; "Service Order Line Qty. Base"; Option)
        {
            Caption = 'Service Order Line Qty. Base';
            Description = 'welche Menge soll aus der Service Line in den Ausfuhrauftrag übertragen werden';
            OptionCaption = 'Qty. to Ship,Quantity,Qty. to Invoice';
            OptionMembers = "Qty. to Ship",Quantity,"Qty. to Invoice";
        }
        field(500; "URL Zoll-Atlas"; Text[120])
        {
            Caption = 'URL Zoll-Atlas';
        }
        field(501; "URL MRN-Tracking"; Text[120])
        {
            Caption = 'URL MRN-Tracking';
        }
        field(502; "URL EZT-Online"; Text[120])
        {
            Caption = 'URL EZT-Online';
        }
        field(503; "URL Comsol Support"; Text[120])
        {
            Caption = 'URL Comsol Support';
        }
        field(504; "URL AES Info"; Text[120])
        {
            Caption = 'URL AES Info';
        }
        field(505; "URL COL Search"; Text[120])
        {
            Caption = 'URL COL Search';
        }
        field(506; "URL COL Search Name"; Text[120])
        {
            Caption = 'URL COL Search Name';
        }
        field(507; "URL Atlas Manual"; Text[120])
        {
            Caption = 'URL Atlas Manual';
        }
        field(1000; "Report GetSourceDocument"; Integer)
        {
            Caption = 'Report GetSourceDocument';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(1001; "Codeunit CalcWareline"; Integer)
        {
            Caption = 'Codeunit CalcWareline';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(1002; "Codeunit Postprocessing"; Integer)
        {
            Caption = 'Codeunit Postprocessing';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(1003; "Codeunit Controls Integration"; Integer)
        {
            Caption = 'Codeunit Controls Integration';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(1004; "Form SrcDoc Controls Integr"; Integer)
        {
            Caption = 'Form SrcDoc Controls Integr';
            TableRelation = Object.ID WHERE (Type = CONST (Page));
        }
        field(1005; "Codeunit Show SrcDoc"; Integer)
        {
            Caption = 'Codeunit Show SrcDoc';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(1006; "Codeunit Get SrcDoc Caption"; Integer)
        {
            Caption = 'Codeunit Get SrcDoc Caption';
            Description = 'wird in V3.2.0 nicht auf der Form angezeigt';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

