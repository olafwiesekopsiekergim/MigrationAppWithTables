table 5138348 "Exp Atlas Export Order"
{
    Caption = 'Atlas Export Order';
    DataCaptionFields = "No.", "Empfaenger Name";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Template No."; Code[20])
        {
            Caption = 'Template No.';
            TableRelation = "Exp Atlas Export Order Templ.";
        }
        field(3; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
        }
        field(6; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Editable = false;
        }
        field(7; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(10; "Partner Nr."; Code[15])
        {
            Caption = 'Partner No.';
        }
        field(11; "AES-Kunden Nr."; Code[15])
        {
            Caption = 'AES-Customer No.';
        }
        field(12; "AES-Mandant"; Code[15])
        {
            Caption = 'AES-Client';
            TableRelation = "Exp Atlas Client";
        }
        field(13; "Destination Type"; Option)
        {
            Caption = 'Destination Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Location';
            OptionMembers = " ",Customer,Vendor,Location;
        }
        field(14; "Destination No."; Code[20])
        {
            Caption = 'Destination No.';
            Editable = false;
            TableRelation = IF ("Destination Type" = CONST (Customer)) Customer."No."
            ELSE
            IF ("Destination Type" = CONST (Vendor)) Vendor."No."
            ELSE
            IF ("Destination Type" = CONST (Location)) Location.Code;
        }
        field(18; "Bestimmungsland Vorank."; Code[10])
        {
            Caption = 'Country of Destination Indication';
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
            Description = 'Qualifier aus A0122';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(22; Bestimmungsland; Code[10])
        {
            Caption = 'Country of Destination';
            Description = 'C0008, C0063 wenn EU, I0802 wenn EX';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(23; "Zeitpunkt der Anmeldung- Tag"; Date)
        {
            Caption = 'Document/message Date';
        }
        field(24; Container; Boolean)
        {
            CalcFormula = Exist ("Exp Atlas Export Container" WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'Container';
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
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
        field(27; "Gesamt-Rohmasse (kalk.)"; Decimal)
        {
            CalcFormula = Sum ("Exp Atlas Export Goods".Rohmasse WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'Total Gross Weight (calc.)';
            DecimalPlaces = 3 : 3;
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
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
        field(31; Bezugsnummer; Code[22])
        {
            Caption = 'Declarant''s reference number';
        }
        field(32; "Anzahl Postitionen"; Integer)
        {
            CalcFormula = Count ("Exp Atlas Export Goods" WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'Number of Positions';
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; BIN; Code[25])
        {
            Caption = 'Declarant''s identification number';
        }
        field(34; "Bewilligungsnummer (Ausfuhr)"; Code[12])
        {
            Caption = 'Customs authorisation Number';
        }
        field(35; "Zeitpunkt der Anmeldung- Zeit"; Time)
        {
            Caption = 'Document/message Time';
        }
        field(36; "Besondere Umstaende"; Code[1])
        {
            Caption = 'special circumstances';
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
            Caption = 'Mode of Transport';
            Description = 'A0108  Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(40; "BFM im Inland Verkehrzweig"; Code[2])
        {
            Caption = 'National Mode of Transport';
            Description = 'C0018';
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
            Caption = 'Place of loading Adress2';
        }
        field(70; "AZst. Dienststellennr."; Code[8])
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
        field(95; Comment; Boolean)
        {
            CalcFormula = Exist ("Exp Atlas Comment Line" WHERE ("Document Type" = CONST ("Export Order"),
                                                                "No." = FIELD ("No."),
                                                                "Document Line No." = CONST (0)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
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
        field(104; "Verschluesse Anzahl"; Integer)
        {
            CalcFormula = Count ("Exp Atlas Export Seal" WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'Seal quantity';
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
        }
        field(105; "Packstuecke Anzahl"; Decimal)
        {
            CalcFormula = Sum ("Exp Atlas Export Package".Anzahl WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'Package Count';
            DecimalPlaces = 0 : 2;
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(110; "Gestellung Anfang - Tag"; Date)
        {
            Caption = 'Presentation to customs start date';
        }
        field(111; "Gestellung Anfang - Zeit"; Time)
        {
            Caption = 'Presentation to customs start time';
        }
        field(112; "Gestellung Ende - Tag"; Date)
        {
            Caption = 'Presentation to customs end date';
        }
        field(113; "Gestellung Ende - Zeit"; Time)
        {
            Caption = 'Presentation to customs end time';
        }
        field(115; "Verladung Anfang - Tag"; Date)
        {
            Caption = 'Packing start date';
            Description = 'Vorankündigung';
        }
        field(116; "Verladung Anfang - Zeit"; Time)
        {
            Caption = 'Packing start time';
            Description = 'Vorankündigung';
        }
        field(117; "Verladung Ende - Tag"; Date)
        {
            Caption = 'Packing end date';
            Description = 'Vorankündigung';
        }
        field(118; "Verladung Ende - Zeit"; Time)
        {
            Caption = 'Packing end time';
            Description = 'Vorankündigung';
        }
        field(120; "Dezentraler K.Partner TIN"; Code[7])
        {
            Caption = 'Communication Partner Customs registration numbers';
        }
        field(130; "Ausfuehrer TIN"; Code[17])
        {
            Caption = 'Exporteur Customs registration numbers';
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
            Description = '9 Stellen beim Zoll';
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
            Description = 'I0800';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(140; "Empfaenger TIN"; Code[17])
        {
            Caption = 'Consignee Customs registration numbers';
        }
        field(141; "Empfaenger DE Zollnummer"; Code[1])
        {
            Caption = 'Consignee German Customs Number';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(142; "Empfaenger Name"; Text[50])
        {
            Caption = 'Consignee Name';
        }
        field(143; "Empfaenger Name 2"; Text[50])
        {
            Caption = 'Consignee Name 2';
        }
        field(144; "Empfaenger Kontakt"; Text[50])
        {
            Caption = 'Consignee Contact';
        }
        field(145; "Empfaenger Adresse"; Text[50])
        {
            Caption = 'Consignee Address';
        }
        field(146; "Empfaenger Adresse 2"; Text[50])
        {
            Caption = 'Consignee Address 2';
        }
        field(147; "Empfaenger Post Code"; Code[20])
        {
            Caption = 'Consignee Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(148; "Empfaenger Ort"; Text[35])
        {
            Caption = 'Consignee City Name';
        }
        field(149; "Empfaenger Laendercode"; Code[10])
        {
            Caption = 'Consignee Country Code';
            Description = 'I0800';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(150; "Anmelder TIN"; Code[17])
        {
            Caption = 'Declarant Customs registration numbers';
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
            Caption = 'Declarant''s agent Customs registration numbers';
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
            Description = 'C0010';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(170; "Subunternehmer Anm. TIN"; Code[17])
        {
            Caption = 'Subcontractor Customs registration numbers';
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
        field(205; "Empfaenger Zoll Adresse"; Code[20])
        {
            Caption = 'Recipient Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST ("Empfänger"));
        }
        field(250; Befoerderungsroute; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Exp Atlas Export Route" WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'Transport Route';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(301; "Created by"; Code[20])
        {
            Caption = 'Created by';
        }
        field(302; "Creation Time"; Time)
        {
            Caption = 'Creation Time';
        }
        field(303; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(304; "Last Modified by"; Code[20])
        {
            Caption = 'Last Modified by';
        }
        field(305; "Last Time Modified"; Time)
        {
            Caption = 'Last Time Modified';
        }
        field(306; "Submission Date"; Date)
        {
            Caption = 'Submission Date';
        }
        field(307; "Submitted by"; Code[20])
        {
            Caption = 'Submitted by';
        }
        field(308; "Submission Time"; Time)
        {
            Caption = 'Submission Time';
        }
        field(311; "No. of Source Documents"; Integer)
        {
            CalcFormula = Count ("Exp Atlas Exp.Order Src. Doc." WHERE ("AAK No." = FIELD ("No.")));
            Caption = 'No. of Source Documents';
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
        }
        field(312; "Cancelation Submission Date"; Date)
        {
            Caption = 'Cancelation Submission Date';
        }
        field(313; "Cancelation Submitted by"; Code[20])
        {
            Caption = 'Cancelation Submitted by';
        }
        field(314; "Cancelation Submission Time"; Time)
        {
            Caption = 'Cancelation Submission Time';
        }
        field(400; "Cancelation Type"; Code[2])
        {
            Caption = 'Cancelation Type';
            Description = 'A0130';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(410; "Cancelation Reason"; Text[140])
        {
            Caption = 'Cancelation Reason';
        }
        field(500; "Gesamt-Rohmasse"; Decimal)
        {
            Caption = 'Total Gross Weight';
            DecimalPlaces = 3 : 3;
        }
        field(900; Batchmode; Boolean)
        {
            Caption = 'Batchmode';
        }
        field(901; "disable automatic send"; Boolean)
        {
            Caption = 'disable automatic send';
        }
        field(1000; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released';
            OptionMembers = Open,Released;
        }
        field(1001; "Zoll Status"; Option)
        {
            Caption = 'Customs Status';
            OptionCaption = ' ,00 - Neuer Vorgang,,,,,,,,,,,11 - Entgegengenommen (Antrag nach §9 AWV abgelehnt),12 - Entgegengenommen,13 - Nicht angenommen,14a - Angenommen,14b - Angenommen/Änderung,15 - Nicht Überlassen,16a - Angenommen (erg. AM wird erwartet),16b - Angenommen/Änderung,17a - Angenommen (erg./vollst. AM liegt vor),17b - Angenommen/Änderung,18 - Vorankündigung abgewiesen,19i - Überlassen (ABD vorhanden),,,,23i - Kontrollmaßnahme angeordnet,,,,30 - Überlassen (erg./vollst. AM wird erwartet),31 - Überlassen (erg./vollst. AM liegt vor),32 - Ausgang ganz/ teilweise bestätigt,33 - Ausgang ganz/ teilweise bestätigt,34i - eAM angemahnt,35 - Erledigt  (Ausfuhrnachweis vorhanden),36 - Ausgang untersagt,37 - Bearbeitung außerhalb AES,38 - Ungültig/ Storniert,,,40i - Wiedervorlage,,,,,,,,,,98i - Im Notfallverfahren abgewickelt';
            OptionMembers = ,"00","01","02","03","04","05","06","07","08","09","10","11","12","13","14a","14b","15","16a","16b","17a","17b","18","19i","23","24","25","23i","27","28","29","30","31","32","33","34i","35","36","37","38","39","40","40i",,,,,,,,,,"98i";
        }
        field(1002; MRN; Text[50])
        {
            Caption = 'MRN';
            Editable = false;
        }
        field(1003; "Zoll Statusbeschreibung"; Text[100])
        {
            Caption = 'Customs Statusdescription';
        }
        field(1004; "Bearb. Status"; Text[5])
        {
            Caption = 'Processing Status';
        }
        field(1005; "Bearb. Statusbeschreibung"; Text[100])
        {
            Caption = 'Processing Statusdescription';
        }
        field(1006; VorgangId; Text[50])
        {
            Caption = 'ProcessId';
            Description = 'interne ID des Datensatzes der AES-Applikation';
            Editable = false;
        }
        field(1007; StornoId; Text[50])
        {
            Caption = 'CancelationId';
            Description = 'interne ID des Datensatzes der AES-Applikation';
            Editable = false;
        }
        field(1008; "Storno Status"; Text[5])
        {
            Caption = 'Cancelation Status';
        }
        field(1009; "Storno Statusbeschreibung"; Text[100])
        {
            Caption = 'Cancelation Statusdescription';
        }
        field(1010; "Statusmeldung vorhanden"; Boolean)
        {
            Caption = 'Status Info available';
        }
        field(1011; "Logbuch vorhanden"; Boolean)
        {
            Caption = 'Log available';
        }
        field(1012; "ABD vorhanden"; Boolean)
        {
            Caption = 'ABD available';
        }
        field(1013; "AM vorhanden"; Boolean)
        {
            Caption = 'AM available';
        }
        field(1014; "Fachfehler vorhanden"; Boolean)
        {
            Caption = 'Functional Error';
        }
        field(1015; "Techfehler vorhanden"; Boolean)
        {
            Caption = 'Technical Error';
        }
        field(1016; "Formulare vorhanden"; Boolean)
        {
            Caption = 'Formulars exists';
        }
        field(1017; "Wiedervorlage vorhanden"; Boolean)
        {
            Caption = 'Follow-Up Request';
        }
        field(1018; "Kontrollmassnahme vorhanden"; Boolean)
        {
            Caption = 'Control Directive';
        }
        field(1020; Vorankuendigung; Boolean)
        {
            Caption = 'Indication';
            Description = 'Vorankündigung';
        }
        field(1021; VorankuendigungId; Text[20])
        {
            Caption = 'IndicationId';
        }
        field(1100; "ABD abgerufen"; Boolean)
        {
            CalcFormula = Exist ("Exp Atlas Export Document" WHERE ("Reference No." = FIELD ("No."),
                                                                   "Document Type" = CONST (ABD)));
            Caption = 'ABD received';
            Description = 'kalk';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1101; "AM abgerufen"; Boolean)
        {
            CalcFormula = Exist ("Exp Atlas Export Document" WHERE ("Reference No." = FIELD ("No."),
                                                                   "Document Type" = CONST (AM)));
            Caption = 'AM received';
            Description = 'kalk';
            FieldClass = FlowField;
        }
        field(2000; "Kennnummer der Sendung"; Text[70])
        {
            CalcFormula = Lookup ("Exp Atlas Export Order 2"."Kennnummer der Sendung" WHERE ("No." = FIELD ("No.")));
            Caption = 'Kennnummer der Sendung';
            Description = 'Flowfield aus Order 2; damit in den Übersichten nach diesem Feld gefiltert werden kann';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source Subtype", "Source No.")
        {
        }
    }

    fieldgroups
    {
    }
}

