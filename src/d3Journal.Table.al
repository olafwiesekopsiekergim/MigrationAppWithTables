table 50038 "d3 Journal"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
            Description = 'AutoIncrement=Yes';
        }
        field(3; "Export Status"; Option)
        {
            Caption = 'Export Status';
            Description = 'd3 verarbeitung';
            Editable = false;
            OptionCaption = 'Open,Processed';
            OptionMembers = Open,Processed;
        }
        field(4; "Import Status"; Option)
        {
            Caption = 'Import Status';
            Description = 'NAV verarbeitung';
            Editable = false;
            OptionCaption = 'Open,Processed';
            OptionMembers = Open,Processed;
        }
        field(5; RegistrierNr; Code[20])
        {
            Caption = 'Registrier Nr.';
            Description = 'Anbindung an D3';
            Numeric = true;
        }
        field(6; d3_doc_id; Code[20])
        {
            Caption = 'd3 Dokument ID';
            Description = 'Anbindung an D3';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(15; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(30; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(31; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact;
        }
        field(32; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(34; "Our Account No."; Text[20])
        {
            Caption = 'Our Account No.';
        }
        field(35; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(37; City; Text[30])
        {
            Caption = 'City';
        }
        field(41; "Source Reference"; Text[30])
        {
            Caption = 'Source Reference';
        }
        field(42; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(43; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(44; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(49; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(50; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(60; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(61; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Including VAT';
            Editable = false;
        }
        field(66; "Source Order No."; Code[20])
        {
            Caption = 'Source Order No.';
        }
        field(68; "Source Invoice No."; Code[35])
        {
            Caption = 'Source Invoice No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source ID")
        {
        }
    }

    fieldgroups
    {
    }
}

