table 5138366 "Exp Atlas Export Order Templ."
{
    Caption = 'Atlas Export Order Templ.';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(5; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(15; "massgebliches Datum"; Date)
        {
            Caption = 'massgebliches Datum';
        }
        field(16; "statistische Meldung"; Code[1])
        {
            Caption = 'statistische Meldung';
            Description = 'A0027';
        }
        field(18; "Bestimmungsland Vorank."; Code[10])
        {
            Caption = 'Country of Destination Adv.Not.';
            Description = 'I0804 Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(19; "Art der Anm.Ueberfuehr.Vorank."; Text[1])
        {
            Caption = 'Customs declaration type Indication';
            Description = 'A0142  Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(20; "Art der Anmeldung Ausfuhr"; Code[2])
        {
            Caption = 'Customs area of transaction';
            Description = 'A0121';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(21; "Art der Anmeldung Ueberfuehr."; Text[1])
        {
            Caption = 'Customs declaration type';
            Description = 'A0122';
        }
        field(22; Bestimmungsland; Code[10])
        {
            Caption = 'Country of Destination';
            Description = 'C0008';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(25; "Beteiligten-Konstellation"; Code[4])
        {
            Caption = 'Parties hereto-Combination';
            Description = 'A0127';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(26; "Antrag auf Ausfuhrerstattung"; Code[1])
        {
            Caption = 'Application for Export Refund';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(28; "Registriernummer Fremdsystem"; Code[70])
        {
            Caption = 'Registration number third-party System (Additional export information)';
        }
        field(29; Vermerk1; Text[240])
        {
            Caption = 'Additional information1';
        }
        field(30; Vermerk2; Text[100])
        {
            Caption = 'Additional information2';
        }
        field(33; BIN; Code[25])
        {
            Caption = 'Declarant''s identification number';
            Enabled = false;
        }
        field(34; "Bewilligungsnummer (Ausfuhr)"; Code[12])
        {
            Caption = 'Customs authorisation Number';
        }
        field(36; "Besondere Umstaende"; Code[1])
        {
            Caption = 'Special circumstances';
            Description = 'C0096';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(37; "Zahlungsweise Bef.-Kosten"; Code[1])
        {
            Caption = 'Form of payment forwarding charges';
            Description = 'C0116';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(39; "BFM am Abgang"; Code[2])
        {
            Caption = 'Despatch Mode of Transport';
            Description = 'A0108  Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(40; "BFM im Inland Verkehrzweig"; Code[2])
        {
            Caption = 'Inland Mode of Transport';
            Description = 'C0018';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(41; "BFM am Abgang Art"; Code[2])
        {
            Caption = 'Despatch Type of means of transport';
            Description = 'A0108';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(42; "BFM am Abgang Kennzeichen"; Text[27])
        {
            Caption = 'Despatch Id. of the means of transport';
        }
        field(43; "BFM am Abgang Staatszug."; Code[2])
        {
            Caption = 'Despatch Nationality of means of transport';
            Description = 'I0803';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(50; "BFM an der Grenze Verkehrz."; Code[2])
        {
            Caption = 'Frontier Mode of transport';
            Description = 'C0018';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(51; "BFM an der Grenze Art"; Code[2])
        {
            Caption = 'Type of means of transport';
            Description = 'A0108';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(52; "BFM an der Grenze Kennzeichen"; Text[27])
        {
            Caption = 'Id. of the means of transport';
        }
        field(53; "BFM an der Grenze Staatszug."; Code[2])
        {
            Caption = 'Nationality of means of transport';
            Description = 'I0803';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(60; "Ladeort Code"; Code[4])
        {
            Caption = 'Place of loading';
        }
        field(61; "Ladeort Strasse u. Hausnr."; Text[35])
        {
            Caption = 'Place of loading Adress';
        }
        field(62; "Ladeort Post Code"; Code[5])
        {
            Caption = 'Place of loading Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(63; "Ladeort Ort"; Text[35])
        {
            Caption = 'Place of loading City Name';
        }
        field(64; "Ladeort Zusatz"; Text[35])
        {
            Caption = 'Place of loading Adress 2';
        }
        field(70; "AZst. Dieststellennr."; Code[8])
        {
            Caption = 'Customs office of export Customs office number';
            TableRelation = "Exp Atlas Customs Departm." WHERE (Type = CONST (Binnenzollstelle));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(80; "AZst. F. eAM Dienststellennr."; Code[8])
        {
            Caption = 'Place of lodgement of documents Customs office number';
        }
        field(90; "Vorgesehene AZst. Dienst.-Nr."; Code[8])
        {
            Caption = 'Customs office number';
            TableRelation = "Exp Atlas Customs Departm." WHERE (Type = CONST (Grenzzollstelle));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(98; "Art der Anmeldung Verfahren"; Text[2])
        {
            Caption = 'Customs declaration method';
            Description = 'A0122';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(99; "Adressaten Konstellation"; Code[1])
        {
            Caption = 'Adressaten Konstellation';
            Description = 'A0139';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(100; "GV Art"; Code[2])
        {
            Caption = 'Type of business transaction';
            Description = 'A1150';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(101; "GV Rechnungspreis"; Decimal)
        {
            Caption = 'Business transaction Invoice price';
            DecimalPlaces = 2 : 2;
        }
        field(102; "GV Waehrung"; Code[3])
        {
            Caption = 'Business transaction Currency';
            Description = 'I0400';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(103; "Verschluesse Art"; Code[1])
        {
            Caption = 'Seal number';
            Description = 'A0102';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(120; "Dezentraler K.Partner TIN"; Code[7])
        {
            Caption = 'Communication Partner Customs registration numbers';
        }
        field(130; "Ausfuehrer TIN"; Code[17])
        {
            Caption = 'Exporteur Customs registration number';
        }
        field(131; "Ausfuehrer DE Zollnummer"; Code[1])
        {
            Caption = 'Exporteur German Customs Number';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(132; "Ausfuehrer Name"; Text[50])
        {
            Caption = 'Exporteur Name';
        }
        field(133; "Ausfuehrer Name 2"; Text[50])
        {
            Caption = 'Exporteur Name 2';
        }
        field(134; "Ausfuehrer Kontakt"; Text[50])
        {
            Caption = 'Exporteur Contact';
        }
        field(135; "Ausfuehrer Adresse"; Text[50])
        {
            Caption = 'Exporteur Address';
        }
        field(136; "Ausfuehrer Adresse 2"; Text[50])
        {
            Caption = 'Exporteur Address2';
        }
        field(137; "Ausfuehrer Post Code"; Code[20])
        {
            Caption = 'Exporteur Post Code';
            Description = '9 Stellen bei Zoll';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(138; "Ausfuehrer Ort"; Text[35])
        {
            Caption = 'Exporteur City Name';
        }
        field(139; "Ausfuehrer Laendercode"; Code[10])
        {
            Caption = 'Exporteur Country Code';
            Description = 'C0008';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(140; "Empfaenger TIN"; Code[17])
        {
            Caption = 'Consignee Customs registration number';
            Enabled = false;
        }
        field(141; "Empfaenger DE Zollnummer"; Code[1])
        {
            Caption = 'Consignee German Customs Number';
            Description = 'A0027';
            Enabled = false;
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(142; "Empfaenger Name"; Text[50])
        {
            Caption = 'Consignee Name';
            Enabled = false;
        }
        field(143; "Empfaenger Name 2"; Text[50])
        {
            Caption = 'Consignee Name 2';
            Enabled = false;
        }
        field(144; "Empfaenger Kontakt"; Text[50])
        {
            Caption = 'Consignee Contact';
            Enabled = false;
        }
        field(145; "Empfaenger Adresse"; Text[50])
        {
            Caption = 'Consignee Address';
            Enabled = false;
        }
        field(146; "Empfaenger Adresse 2"; Text[50])
        {
            Caption = 'Consignee Address 2';
            Enabled = false;
        }
        field(147; "Empfaenger Post Code"; Code[20])
        {
            Caption = 'Consignee Post Code';
            Enabled = false;
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(148; "Empfaenger Ort"; Text[35])
        {
            Caption = 'Consignee City Name';
            Enabled = false;
        }
        field(149; "Empfaenger Laendercode"; Code[10])
        {
            Caption = 'Consignee Country Code';
            Description = 'C0008';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(150; "Anmelder TIN"; Code[17])
        {
            Caption = 'Declarant Customs registration number';
        }
        field(151; "Anmelder DE Zollnummer"; Code[1])
        {
            Caption = 'Declarant German Customs Number';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(152; "Anmelder Name"; Text[50])
        {
            Caption = 'Declarant Name';
        }
        field(153; "Anmelder Name 2"; Text[50])
        {
            Caption = 'Declarant Name 2';
        }
        field(154; "Anmelder Kontakt"; Text[50])
        {
            Caption = 'Declarant Contact';
        }
        field(155; "Anmelder Adresse"; Text[50])
        {
            Caption = 'Declarant Address';
        }
        field(156; "Anmelder Adresse 2"; Text[50])
        {
            Caption = 'Declarant Address 2';
        }
        field(157; "Anmelder Post Code"; Code[20])
        {
            Caption = 'Declarant Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(158; "Anmelder Ort"; Text[35])
        {
            Caption = 'Declarant City Name';
        }
        field(159; "Anmelder Laendercode"; Code[10])
        {
            Caption = 'Declarant Country Code';
            Description = 'C0010';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(160; "Vertreter Anm. TIN"; Code[17])
        {
            Caption = 'Declarant''s agent Customs registration number';
        }
        field(161; "Vertreter Anm. DE Zollnummer"; Code[1])
        {
            Caption = 'Declarant''s agent German Customs Number';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(162; "Vertreter Anm. Name"; Text[50])
        {
            Caption = 'Declarant''s agent Name';
        }
        field(163; "Vertreter Anm. Name 2"; Text[50])
        {
            Caption = 'Declarant''s agent Name 2';
        }
        field(164; "Vertreter Anm. Kontakt"; Text[50])
        {
            Caption = 'Declarant''s agent Contact';
        }
        field(165; "Vertreter Anm. Adresse"; Text[50])
        {
            Caption = 'Declarant''s agent Address';
        }
        field(166; "Vertreter Anm. Adresse 2"; Text[50])
        {
            Caption = 'Declarant''s agent Address 2';
        }
        field(167; "Vertreter Anm. Post Code"; Code[20])
        {
            Caption = 'Declarant''s agent Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(168; "Vertreter Anm. Ort"; Text[35])
        {
            Caption = 'Declarant''s agent City Name';
        }
        field(169; "Vertreter Anm. Laendercode"; Code[10])
        {
            Caption = 'Declarant''s agent Country Code';
            Description = 'A0105';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(170; "Subunternehmer Anm. TIN"; Code[17])
        {
            Caption = 'Subcontractor Customs registration number';
        }
        field(171; "Subunternehmer DE Zollnummer"; Code[1])
        {
            Caption = 'Subcontractor German Customs Number';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(172; "Subunternehmer Name"; Text[50])
        {
            Caption = 'Subcontractor Name';
        }
        field(173; "Subunternehmer Name 2"; Text[50])
        {
            Caption = 'Subcontractor Name 2';
        }
        field(174; "Subunternehmer Kontakt"; Text[50])
        {
            Caption = 'Subcontractor Contact';
        }
        field(175; "Subunternehmer Adresse"; Text[50])
        {
            Caption = 'Subcontractor Address';
        }
        field(176; "Subunternehmer Adresse 2"; Text[50])
        {
            Caption = 'Subcontractor Address 2';
        }
        field(177; "Subunternehmer Post Code"; Code[20])
        {
            Caption = 'Subunternehmer Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(178; "Subunternehmer Ort"; Text[35])
        {
            Caption = 'Subcontractor City Name';
        }
        field(179; "Subunternehmer Laendercode"; Code[10])
        {
            Caption = 'Subcontractor Country Code';
            Description = 'A0105';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(180; "Lieferbedingung Incoterm Code"; Code[10])
        {
            Caption = 'Delivery condition Incoterm Code';
            Description = 'A1840';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(181; "Lieferbedingung Text"; Text[140])
        {
            Caption = 'Delivery condition Text';
        }
        field(182; "Lieferbedingung Ort"; Text[35])
        {
            Caption = 'Delivery condition City Name';
        }
        field(190; "Ausf. ausst. Land AEO"; Code[10])
        {
            Caption = 'Exporteur Country of AEO';
            Description = 'C0010';
        }
        field(191; "Ausf. Art AEO Bescheinigung"; Option)
        {
            Caption = 'Exporteur Type of AEO Certificate';
            OptionCaption = ' ,AEOC,AEOS,AEOF';
            OptionMembers = " ",AEOC,AEOS,AEOF;
        }
        field(192; "Ausf. AEO Nummer"; Text[20])
        {
            Caption = 'Exporteur AEO Number';
        }
        field(193; "Ausf. Ausst. Datum AEO"; Date)
        {
            Caption = 'Exporteur Issue Date AEO';
        }
        field(194; "Ausf. AEO Codierung"; Code[4])
        {
            Caption = 'Exporteur AEO Coding';
            Description = 'I0136';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(200; "Ausfuehrer Zoll Adresse"; Code[20])
        {
            Caption = 'Exporteur Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST ("Ausführer"));
        }
        field(201; "Anmelder Zoll Adresse"; Code[20])
        {
            Caption = 'Declarant Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST (Anmelder));
        }
        field(202; "Vertreter Zoll Adresse"; Code[20])
        {
            Caption = 'Declarant''s agent Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST ("Vertreter d. Anmelders"));
        }
        field(203; "Subunternehmer Zoll Adresse"; Code[20])
        {
            Caption = 'Subcontractor Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST (Subunternehmer));
        }
        field(204; "Ladeort Zoll Adresse"; Code[20])
        {
            Caption = 'Place of loading Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST (Ladeort));
        }
        field(250; Befoerderungsroute; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Exp Atlas Templ Export Route" WHERE ("No." = FIELD ("No.")));
            Caption = 'Transport Route';
            Editable = false;
            FieldClass = FlowField;
        }
        field(290; "Anm. ausst. Land AEO"; Code[10])
        {
            Caption = 'Declarant Country of AEO';
            Description = 'C0010';
        }
        field(291; "Anm. Art AEO Bescheinigung"; Option)
        {
            Caption = 'Declarant Type of AEO Certificate';
            OptionCaption = ' ,AEOC,AEOS,AEOF';
            OptionMembers = " ",AEOC,AEOS,AEOF;
        }
        field(292; "Anm. AEO Nummer"; Text[20])
        {
            Caption = 'Declarant AEO Number';
        }
        field(293; "Anm. Ausst. Datum AEO"; Date)
        {
            Caption = 'Declarant Issue Date AEO';
        }
        field(294; "Anm. AEO Codierung"; Code[4])
        {
            Caption = 'Declarant AEO Coding';
            Description = 'I0136';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(390; "Vertr. ausst. Land AEO"; Code[10])
        {
            Caption = 'Declarant''s agent Country of AEO';
            Description = 'C0010';
        }
        field(391; "Vertr. Art AEO Bescheinigung"; Option)
        {
            Caption = 'Declarant''s agent Type of AEO Certificate';
            OptionCaption = ' ,AEOC,AEOS,AEOF';
            OptionMembers = " ",AEOC,AEOS,AEOF;
        }
        field(392; "Vertr. AEO Nummer"; Text[20])
        {
            Caption = 'Declarant''s agent AEO Number';
        }
        field(393; "Vertr. Ausst. Datum AEO"; Date)
        {
            Caption = 'Declarant''s agent Issue Date AEO';
        }
        field(394; "Vertr. AEO Codierung"; Code[4])
        {
            Caption = 'Declarant''s agent AEO Coding';
            Description = 'I0136';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(4999; Ausfuhrland; Code[10])
        {
            Caption = 'Exporting Country Code';
            Description = 'C0010';
        }
        field(5000; "Ausf. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Exporteur Contact Position';
        }
        field(5001; "Ausf. Ansprechp. Name"; Text[35])
        {
            Caption = 'Exporteur Contact Name';
        }
        field(5002; "Ausf. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Exporteur Contact E-Mail';
        }
        field(5003; "Ausf. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Exporteur Contact Phone No.';
        }
        field(5004; "Ausf. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Exporteur Contact Fax No.';
        }
        field(5005; "Ausf. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Exporteur Branchno.';
        }
        field(5006; "Ausf. Identifikationsart"; Code[1])
        {
            Caption = 'Exporteur Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5100; "Anm. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Declarant Contact Position';
        }
        field(5101; "Anm. Ansprechp. Name"; Text[35])
        {
            Caption = 'Declarant Contact Name';
        }
        field(5102; "Anm. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Declarant Contact E-Mail';
        }
        field(5103; "Anm. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Declarant Contact Phone No.';
        }
        field(5104; "Anm. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Declarant Contact Fax No.';
        }
        field(5105; "Anm. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Declarant Branchno.';
        }
        field(5106; "Anmelder Ident. Art"; Code[1])
        {
            Caption = 'Declarant Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5200; "Vertr. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Position';
        }
        field(5201; "Vertr. Ansprechp. Name"; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Name';
        }
        field(5202; "Vertr. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Declarant''s Agent Contact E-Mail';
        }
        field(5203; "Vertr. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Phone No.';
        }
        field(5204; "Vertr. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Fax No.';
        }
        field(5205; "Vertr. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Declarant''s Agent Branchno.';
        }
        field(5206; "Vertreter Anm. Ident. Art"; Code[1])
        {
            Caption = 'Declarant''s agent Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5300; "Subunt. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Subcontractor Contact Position';
        }
        field(5301; "Subunt. Ansprechp. Name"; Text[35])
        {
            Caption = 'Subcontractor Contact Name';
        }
        field(5302; "Subunt. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Subcontractor Contact E-Mail';
        }
        field(5303; "Subunt. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Subcontractor Contact Phone No.';
        }
        field(5304; "Subunt. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Subcontractor Contact Fax No.';
        }
        field(5305; "Subunt. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Subcontractor Branchno.';
        }
        field(5306; "Subunternehmer Ident. Art"; Code[1])
        {
            Caption = 'Subcontractor Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5405; "Empfaenger Niederlassungsnr."; Code[4])
        {
            Caption = 'Consignee Branchno.';
        }
        field(5406; "Empfaenger Ident. Art"; Code[1])
        {
            Caption = 'Consignee Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5501; "Endverwender TIN"; Code[17])
        {
            Caption = 'Enduser Customs registration number';
        }
        field(5502; "Endverwender Ident. Art"; Code[1])
        {
            Caption = 'Enduser Ident. Type';
            Description = 'A1340';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5503; "Endverwender Name"; Text[50])
        {
            Caption = 'Enduser Name';
        }
        field(5504; "Endverwender Name 2"; Text[50])
        {
            Caption = 'Enduser Name 2';
        }
        field(5505; "Endverwender Kontakt"; Text[50])
        {
            Caption = 'Enduser Contact';
        }
        field(5506; "Endverwender Adresse"; Text[50])
        {
            Caption = 'Enduser Address';
        }
        field(5507; "Endverwender Adresse 2"; Text[50])
        {
            Caption = 'Enduser Address2';
        }
        field(5508; "Endverwender Post Code"; Code[20])
        {
            Caption = 'Enduser Post Code';
            Description = '9 Stellen beim Zoll';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5509; "Endverwender Ort"; Text[35])
        {
            Caption = 'Enduser City Name';
        }
        field(5510; "Endverwender Laendercode"; Code[10])
        {
            Caption = 'Enduser Country Code';
            Description = 'I0800';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5511; "Endver. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Enduser Branchno.';
        }
        field(5512; "Endverwender Zoll Adresse"; Code[20])
        {
            Caption = 'Enduser Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST (Endverwender));
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Description)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Art der Anmeldung Ausfuhr", "Art der Anmeldung Verfahren", "Art der Anmeldung Ueberfuehr.", "BFM im Inland Verkehrzweig", "BFM an der Grenze Verkehrz.", "BFM an der Grenze Art", "Anmelder TIN")
        {
        }
    }
}

