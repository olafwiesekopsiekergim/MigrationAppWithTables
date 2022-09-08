table 5138357 "Exp Atlas Export Order 2"
{
    Caption = 'Atlas Export Order 2';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; "Kennnummer der Sendung"; Text[70])
        {
            Caption = 'Shipment Identification No.';
        }
        field(11; Ausfuhrland; Code[10])
        {
            Caption = 'Country of Export';
            Description = 'C0010';
        }
        field(21; "Art der Anmeldung Verfahren"; Text[2])
        {
            Caption = 'Customs declaration method';
            Description = 'A0122';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(50; "massgebliches Datum"; Date)
        {
            Caption = 'massgebliches Datum';
        }
        field(51; "statistische Meldung"; Code[1])
        {
            Caption = 'statistische Meldung';
            Description = 'A0027';
        }
        field(52; "Adressaten Konstellation"; Code[1])
        {
            Caption = 'Adressaten Konstellation';
            Description = 'A0139';
        }
        field(60; "BFM am Abgang Art"; Code[2])
        {
            Caption = 'Type of means of transport';
            Description = 'A0108';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(61; "BFM am Abgang Kennzeichen"; Text[27])
        {
            Caption = 'Id. of the means of transport';
        }
        field(62; "BFM am Abgang Staatszug."; Code[2])
        {
            Caption = 'Nationality of means of transport';
            Description = 'I0803';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(100; "Ausf. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Exporteur Contact Position';
        }
        field(101; "Ausf. Ansprechp. Name"; Text[35])
        {
            Caption = 'Exporteur Contact Name';
        }
        field(102; "Ausf. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Exporteur Contact E-Mail';
        }
        field(103; "Ausf. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Exporteur Contact Phone No.';
        }
        field(104; "Ausf. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Exporteur Contact Fax No.';
        }
        field(105; "Ausf. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Exporteur Branchno.';
        }
        field(106; "Ausf. Identifikationsart"; Code[1])
        {
            Caption = 'Exporteur Ident. Type';
            Description = 'A1340';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
        field(200; "Anm. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Declarant Contact Position';
        }
        field(201; "Anm. Ansprechp. Name"; Text[35])
        {
            Caption = 'Declarant Contact Name';
        }
        field(202; "Anm. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Declarant Contact E-Mail';
        }
        field(203; "Anm. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Declarant Contact Phone No.';
        }
        field(204; "Anm. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Declarant Contact Fax No.';
        }
        field(205; "Anm. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Declarant Branchno.';
        }
        field(206; "Anmelder Ident. Art"; Code[1])
        {
            Caption = 'Declarant Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
        field(300; "Vertr. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Position';
        }
        field(301; "Vertr. Ansprechp. Name"; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Name';
        }
        field(302; "Vertr. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Declarant''s Agent Contact E-Mail';
        }
        field(303; "Vertr. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Phone No.';
        }
        field(304; "Vertr. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Declarant''s Agent Contact Fax No.';
        }
        field(305; "Vertr. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Declarant''s Agent Branchno.';
        }
        field(306; "Vertreter Anm. Ident. Art"; Code[1])
        {
            Caption = 'Declarant''s Agent Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(390; "Vertr. ausst. Land AEO"; Code[10])
        {
            Caption = 'Declarant''s Agent Country of AEO';
            Description = 'C0010';
        }
        field(391; "Vertr. Art AEO Bescheinigung"; Option)
        {
            Caption = 'Declarant''s Agent Type of AEO Certificate';
            OptionCaption = ' ,AEOC,AEOS,AEOF';
            OptionMembers = " ",AEOC,AEOS,AEOF;
        }
        field(392; "Vertr. AEO Nummer"; Text[20])
        {
            Caption = 'Declarant''s Agent AEO Number';
        }
        field(393; "Vertr. Ausst. Datum AEO"; Date)
        {
            Caption = 'Declarant''s Agent Issue Date AEO';
        }
        field(394; "Vertr. AEO Codierung"; Code[4])
        {
            Caption = 'Declarant''s Agent AEO Coding';
            Description = 'I0136';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(400; "Subunt. Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Subcontractor Contact Position';
        }
        field(401; "Subunt. Ansprechp. Name"; Text[35])
        {
            Caption = 'Subcontractor Contact Name';
        }
        field(402; "Subunt. Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Subcontractor Contact E-Mail';
        }
        field(403; "Subunt. Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Subcontractor Contact Phone No.';
        }
        field(404; "Subunt. Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Subcontractor Contact Fax No.';
        }
        field(405; "Subunt. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Subcontractor Branchno.';
        }
        field(406; "Subunternehmer Ident. Art"; Code[1])
        {
            Caption = 'Subcontractor Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(410; "Cancelation Reason 2"; Text[250])
        {
            Caption = 'Cancelation Reason';
            Description = 'gehört zu Cancelation Reason in Kopfsatz';
        }
        field(505; "Empfaenger Niederlassungsnr."; Code[4])
        {
            Caption = 'Consignee Branchno.';
        }
        field(506; "Empfaenger Ident. Art"; Code[1])
        {
            Caption = 'Consignee Ident. Type';
            Description = 'A1340 (Identifikationsart)';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(600; "Endverwender TIN"; Code[17])
        {
            Caption = 'Enduser Customs registration number';
        }
        field(601; "Endverwender Ident. Art"; Code[1])
        {
            Caption = 'Enduser Ident. Type';
            Description = 'A1340';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(602; "Endverwender Name"; Text[50])
        {
            Caption = 'Enduser Name';
        }
        field(603; "Endverwender Name 2"; Text[50])
        {
            Caption = 'Enduser Name 2';
        }
        field(604; "Endverwender Kontakt"; Text[50])
        {
            Caption = 'Enduser Contact';
        }
        field(605; "Endverwender Adresse"; Text[50])
        {
            Caption = 'Enduser Address';
        }
        field(606; "Endverwender Adresse 2"; Text[50])
        {
            Caption = 'Enduser Address2';
        }
        field(607; "Endverwender Post Code"; Code[20])
        {
            Caption = 'Enduser Post Code';
            Description = '9 Stellen beim Zoll';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(608; "Endverwender Ort"; Text[35])
        {
            Caption = 'Enduser City Name';
        }
        field(609; "Endverwender Laendercode"; Code[10])
        {
            Caption = 'Enduser Country Code';
            Description = 'I0800';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(610; "Endver. Niederlassungsnummer"; Code[4])
        {
            Caption = 'Enduser Branchno.';
        }
        field(611; "Endverwender Zoll Adresse"; Code[20])
        {
            Caption = 'Enduser Customs Address';
            TableRelation = "Exp Atlas Address"."No." WHERE (Art = CONST (Endverwender));
        }
        field(1000; NachverfId; Text[50])
        {
            Caption = 'FollowUpId';
            Description = 'interne ID des Datensatzes der AES-Applikation';
            Editable = false;
        }
        field(1001; "Nachverf.  Status"; Text[5])
        {
            Caption = 'FollowUp Status';
        }
        field(1002; "Nachverf. Statusbeschreibung"; Text[100])
        {
            Caption = 'FollowUp Statusdescription';
        }
        field(1003; "FollowUp Submission Date"; Date)
        {
            Caption = 'FollowUp Submission Date';
        }
        field(1004; "FollowUp Submitted by"; Code[20])
        {
            Caption = 'FollowUp Submitted by';
        }
        field(1005; "FollowUp Submission Time"; Time)
        {
            Caption = 'FollowUp Submission Time';
        }
        field(1100; "Art des Ausgangs"; Code[2])
        {
            Caption = 'Export Type';
            Description = 'A0137';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(1101; "Datum Ausgang"; Date)
        {
            Caption = 'Export Date';
        }
        field(1102; "Datum vorgesehener Ausgang"; Date)
        {
            Caption = 'Designated Export Date';
        }
        field(1103; Vermerk; Text[200])
        {
            Caption = 'Annotation';
        }
        field(1104; "Tats. AZst. Dienststellennr."; Code[8])
        {
            Caption = 'Actual Customs office of export Customs office number';
            TableRelation = "Exp Atlas Customs Departm." WHERE (Type = CONST (Grenzzollstelle));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2000; "PV Datum der Wiedereinfuhr"; Date)
        {
            Caption = 'PV Datum der Wiedereinfuhr';
            Description = 'passive Veredelung';
        }
        field(2001; "PV Standardaustausch"; Code[1])
        {
            Caption = 'PV Standardaustausch';
            Description = 'A0027 passive Veredelung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3000; "VA Antragsart"; Code[2])
        {
            Caption = 'Type of application';
            Description = 'A0145 Voranmeldung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3001; "VA Textliche Erkl."; Text[200])
        {
            Caption = 'Textual Explanation';
            Description = 'Voranmeldung';
        }
        field(3002; "VA Zahlungsweg"; Integer)
        {
            BlankZero = true;
            Caption = 'Zahlungsweg';
            Description = 'Voranmeldung';
            MaxValue = 99;
            MinValue = 0;
        }
        field(3003; "VA Zustellungsbev."; Integer)
        {
            BlankZero = true;
            Caption = 'Zustellungsbevollmächtigter';
            Description = 'Voranmeldung';
            MaxValue = 99;
            MinValue = 0;
        }
        field(3004; "VA Sicherheitenkonto"; Integer)
        {
            BlankZero = true;
            Caption = 'Sicherheitenkonto';
            Description = 'Voranmeldung';
            MaxValue = 9999;
            MinValue = 0;
        }
        field(3005; "VA Klammerungsvorb."; Text[1])
        {
            Caption = 'Klammerungsvorbehalt';
            Description = 'A0027 Voranmeldung';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

