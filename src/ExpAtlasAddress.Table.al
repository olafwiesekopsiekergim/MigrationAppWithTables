table 5138362 "Exp Atlas Address"
{
    Caption = 'Atlas Address';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Art; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Exporteur,Declarant,Declarant''s agent,Subcontractor,Place of loading,Recipient,EndRecipient';
            OptionMembers = "Ausführer",Anmelder,"Vertreter d. Anmelders",Subunternehmer,Ladeort,"Empfänger",Endverwender;
        }
        field(3; Herkunftsart; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor,Contact';
            OptionMembers = " ",Debitor,Kreditor,Kontakt;
        }
        field(4; "Herkunftsnr."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF (Herkunftsart = CONST (Debitor)) Customer
            ELSE
            IF (Herkunftsart = CONST (Kreditor)) Vendor
            ELSE
            IF (Herkunftsart = CONST (Kontakt)) Contact;
        }
        field(9; Identifikationsart; Code[1])
        {
            Caption = 'Type of Identification';
            Description = 'A1340';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; TIN; Code[17])
        {
            Caption = 'Customs registration numbers';
        }
        field(11; "DE-Zollnummer"; Code[1])
        {
            Caption = 'DE Customs Number';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = FILTER ('A0027'));
        }
        field(12; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(13; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(14; Adresse; Text[50])
        {
            Caption = 'Adress';
        }
        field(15; "Adresse 2"; Text[50])
        {
            Caption = 'Adress 2';
        }
        field(16; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(17; Ort; Text[35])
        {
            Caption = 'City Name';
        }
        field(18; Laendercode; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(19; "Ladeort Code"; Code[4])
        {
            Caption = 'Place of loading';
        }
        field(20; "Ladeort Zusatz"; Text[35])
        {
            Caption = 'Place of loading Adress2';
        }
        field(21; "Ansprechp. Stellung"; Text[35])
        {
            Caption = 'Contact Position';
        }
        field(22; "Ansprechp. Name"; Text[35])
        {
            Caption = 'Contact Name';
        }
        field(23; "Ansprechp. E-Mail"; Text[35])
        {
            Caption = 'Contact E-Mail';
        }
        field(24; "Ansprechp. Telefonnr."; Text[35])
        {
            Caption = 'Contact Phone No.';
        }
        field(25; "Ansprechp. Fax Nr."; Text[35])
        {
            Caption = 'Contact Fax No.';
        }
        field(26; Niederlassungsnummer; Code[4])
        {
        }
        field(30; Blocked; Option)
        {
            Caption = 'Blocked';
            OptionCaption = ' ,,,Yes';
            OptionMembers = " ",,,Yes;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(190; "ausst. Land AEO"; Code[10])
        {
            Caption = 'Country of AEO';
            Description = 'C0010';
        }
        field(191; "Art AEO Bescheinigung"; Option)
        {
            Caption = 'Type of AEO Certificate';
            OptionCaption = ' ,AEOC,AEOS,AEOF';
            OptionMembers = " ",AEOC,AEOS,AEOF;
        }
        field(192; "AEO Nummer"; Text[20])
        {
            Caption = 'AEO Number';
        }
        field(193; "Ausst. Datum AEO"; Date)
        {
            Caption = 'Issue Date AEO';
        }
        field(194; "AEO Codierung"; Code[4])
        {
            Caption = 'AEO Coding';
            Description = 'I0136';
            TableRelation = "Exp Atlas Table Code".Code;
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
        fieldgroup(DropDown; "No.", Name, Ort)
        {
        }
    }
}

