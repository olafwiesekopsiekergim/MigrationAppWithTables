table 5138400 "CESS - Setup"
{
    Caption = 'SanScreen Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Setup Version"; Text[30])
        {
            Caption = 'Setup Version';
            Description = 'nur intern ';
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
        field(14; "Proxy Benutzername"; Text[50])
        {
            Caption = 'Proxy Username';
        }
        field(15; "Proxy Passwort"; Text[30])
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
            Caption = 'Log Path';
        }
        field(19; "Log Level"; Option)
        {
            Caption = 'Log-Level';
            Description = '0=aus, 1=Verbose, 2=Verbose+CallStack-Info';
            OptionCaption = 'Off,Verbose,Verbose+CallStack';
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
            Description = 'intern';
        }
        field(25; "Bex Customer No."; Text[30])
        {
            Caption = 'Bex Customer No.';
            Description = 'für Transaktionsbestellung';
        }
        field(26; "Company Name"; Text[50])
        {
            Caption = 'Company Name';
            Description = 'für Transaktionsbestellung';
        }
        field(27; Contact; Text[50])
        {
            Caption = 'Contact';
            Description = 'für Transaktionsbestellung';
        }
        field(28; "E-Mail for Order Confirmation"; Text[50])
        {
            Caption = 'E-Mail for Order Confirmation';
            Description = 'für Transaktionsbestellung';
        }
        field(29; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(30; "Screening Entry Nos."; Code[10])
        {
            Caption = 'Screening Entry Nos';
            TableRelation = "No. Series";
        }
        field(31; "Screen Instantly"; Boolean)
        {
            Caption = 'Screen Instantly';
        }
        field(32; "Screen Central"; Boolean)
        {
            Caption = 'Screen Central';
            Description = 'über Projektwarteschlange';
        }
        field(33; "Insert Bus. Rel. Entry"; Boolean)
        {
            Caption = 'Insert Bus. Rel. Entry';
            Description = 'nach dem Screening Eintrag für Geschäftsbeziehungen kopieren';
        }
        field(34; "Doc.Adr.Last Chk Period"; DateFormula)
        {
            Caption = 'Doc.Adr.Last Chk Period';
            Description = 'prüft Dokumenten Adressen nur, wenn die letzte Prüfung des Stammdatensatzes älter als Formel ist';
        }
        field(35; "Doc.Adr.Last Chk Date"; DateFormula)
        {
            Caption = 'Doc.Adr.Last Chk Date';
            Description = 'prüft Dokumenten Adressen nur, wenn die letzte Prüfung älter als Formel ist';
        }
        field(36; "Doc. Screening active"; Boolean)
        {
            Caption = 'Doc. Screening active';
        }
        field(40; "Remaining Transactions"; Integer)
        {
            Caption = 'remaining Transactions';
            Description = 'wird beim Screening automatisch aktualisiert, sofern "Auto Retrieve Remaining Trans." so eingerichtet ist';
        }
        field(41; "Transaction Warning Level"; Integer)
        {
            Caption = 'Transaction Warning Level';
            Description = 'ab dieser verbleibenden Transaktionsanzahl wird bei der Prüfung gewarnt';
        }
        field(42; "URL Reorder Transactions"; Text[250])
        {
            Caption = 'URL Reorder Transactions';
        }
        field(43; "Last Upd. Rem. Transactions"; DateTime)
        {
            Caption = 'Last Upd. Rem. Transactions';
            Description = 'letzte Aktualisierung der verbleibenden Transaktionen';
        }
        field(44; "Auto Retrieve Remaining Trans."; Boolean)
        {
            Caption = 'Auto Retrieve Remaining Trans.';
            Description = 'nach Prüfung verbleibende Transaktionen abrufen';
        }
        field(60; "New Connection at NoOfScreens"; Integer)
        {
            Caption = 'New Connection at NoOfScreens';
            Description = 'nach Prüfung von x Adressen => Connection neu aufbauen';
        }
        field(61; ActSanListsRefreshRate; Integer)
        {
            Caption = 'Refreshrate active Sanctionslists (in minutes)';
            Description = 'Minuten bis zum erneuten Holen der aktiven Sanktionslisten für die Protokollierung in den Posten';
        }
        field(72; "Connector on Service-Layer"; Boolean)
        {
            Caption = 'Connector on Service-Layer';
            Description = '>= NAV2009: Connector-Instanz Client- oder Server-Seitig';
        }
        field(75; "Split-Character Source Id"; Text[1])
        {
            Caption = 'Split-Character "Source Id"';
            Description = 'wird zum Zusammenbauen der Source-Id verwendet';
        }
        field(81; "Codeunit Queue Filter"; Integer)
        {
            Caption = 'Codeunit Queue Filter';
            Description = 'Codeunit zum Filtern von neuen Warteschlangeneinträgen';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(82; "Codeunit after Hit"; Integer)
        {
            Caption = 'Codeunit Process Hit';
            Description = 'Codeunit für Verarbeitung nach Treffer';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(83; "Codeunit after Screening"; Integer)
        {
            Caption = 'Codeunit Post Screening';
            Description = 'Codeunit für Verarbeitung nach Prüfung';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(84; "Codeunit after Process Hit"; Integer)
        {
            Caption = 'Codeunit Post Process Hit';
            Description = 'Codeunit für Verarbeitung nach Trefferberarbeitung';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(90; "URL WebService"; Text[250])
        {
            Caption = 'URL WebService';
        }
        field(91; "URL Comsol Support"; Text[120])
        {
            Caption = 'URL Comsol Support';
        }
        field(92; "URL SanScreen Info"; Text[120])
        {
            Caption = 'URL SanScreen Info';
        }
        field(93; "URL FAQ"; Text[250])
        {
            Caption = 'URL FAQ';
        }
        field(94; "URL BZSt"; Text[250])
        {
            Caption = 'URL BZSt';
            Description = 'URL für USt-Id Prüfung, deprecated since V1.0.6';
        }
        field(95; "URL SanScreen Manual"; Text[120])
        {
            Caption = 'URL SanScreen Manual';
        }
        field(96; "URL SanScreen Update"; Text[120])
        {
            Caption = 'URL SanScreen Update';
        }
        field(200; "AC Role ID Handle Hits"; Code[20])
        {
            Caption = 'AC Role ID Handle Hits';
            Description = 'deprectated since V1.3.1';
            TableRelation = "Permission Set";
        }
        field(500; "Add. Info in Hit-Protocol"; Boolean)
        {
            Caption = 'Show additional Info in Hit-Protocol';
            Description = 'Zusatzinformationen im Trefferptotokoll anzeigen';
        }
        field(600; "Logger Level"; Option)
        {
            Caption = 'Log Level';
            OptionCaption = ' ,Trace,Debug,Info,Warn,Error,Fatal';
            OptionMembers = " ",Trace,Debug,Info,Warn,Error,Fatal;
        }
        field(601; "Logger Config Directory"; Text[250])
        {
            Caption = 'Logger Config Directory';
            Description = 'hier wird die NLog-Config abgelegt';
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

