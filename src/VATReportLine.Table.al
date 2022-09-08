table 741 "VAT Report Line"
{
    Caption = 'VAT Report Line';

    fields
    {
        field(1; "VAT Report No."; Code[20])
        {
            Caption = 'VAT Report No.';
            Editable = false;
            TableRelation = "VAT Report Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(3; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            Editable = false;
            TableRelation = "Gen. Product Posting Group";
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(8; Base; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Base';
        }
        field(9; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(10; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(12; "Bill-to/Pay-to No."; Code[20])
        {
            Caption = 'Bill-to/Pay-to No.';
            Editable = false;
            TableRelation = IF (Type = CONST (Purchase)) Vendor
            ELSE
            IF (Type = CONST (Sale)) Customer;
        }
        field(13; "EU 3-Party Trade"; Boolean)
        {
            Caption = 'EU 3-Party Trade';
            Editable = false;
        }
        field(15; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(16; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            Editable = false;
            TableRelation = "Reason Code";
        }
        field(17; "EU Service"; Boolean)
        {
            Caption = 'EU Service';
            Editable = false;
        }
        field(19; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(20; "Internal Ref. No."; Text[30])
        {
            Caption = 'Internal Ref. No.';
            Editable = false;
        }
        field(22; "Unrealized Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unrealized Amount';
            Editable = false;
        }
        field(23; "Unrealized Base"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unrealized Base';
            Editable = false;
        }
        field(24; "Number of Supplies"; Decimal)
        {
            BlankNumbers = DontBlank;
            Caption = 'Number of Supplies';
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(26; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            Editable = false;
        }
        field(30; "Trade Type"; Option)
        {
            Caption = 'Trade Type';
            Editable = false;
            OptionCaption = 'Purchase,Sale';
            OptionMembers = Purchase,Sale;
        }
        field(31; "Line Type"; Option)
        {
            Caption = 'Line Type';
            Editable = false;
            OptionCaption = 'New,Cancellation,Correction';
            OptionMembers = New,Cancellation,Correction;
        }
        field(32; "Related Line No."; Integer)
        {
            Caption = 'Related Line No.';
            Editable = false;
        }
        field(33; "Trade Role Type"; Option)
        {
            Caption = 'Trade Role Type';
            Editable = false;
            OptionCaption = 'Direct Trade,Intermediate Trade,Property Movement';
            OptionMembers = "Direct Trade","Intermediate Trade","Property Movement";
        }
        field(39; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            Editable = false;
            TableRelation = "VAT Business Posting Group";
        }
        field(40; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            Editable = false;
            TableRelation = "VAT Product Posting Group";
        }
        field(50; "Corrected Reg. No."; Boolean)
        {
            Caption = 'Corrected Reg. No.';
            Editable = false;
        }
        field(51; "Corrected Amount"; Boolean)
        {
            Caption = 'Corrected Amount';
            Editable = false;
        }
        field(54; "Registration No."; Text[20])
        {
            Caption = 'Registration No.';
            Editable = false;
        }
        field(55; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
            Editable = false;
        }
        field(56; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            Editable = false;
            TableRelation = "Gen. Business Posting Group";
        }
        field(99; "System-Created"; Boolean)
        {
            Caption = 'System-Created';
            Editable = false;
        }
        field(100; "Record Identifier"; Code[30])
        {
            Caption = 'Record Identifier';
            Editable = false;
        }
        field(101; "VAT Report to Correct"; Code[20])
        {
            Caption = 'VAT Report to Correct';
        }
        field(102; "Able to Correct Line"; Boolean)
        {
            Caption = 'Able to Correct Line';
        }
    }

    keys
    {
        key(Key1; "VAT Report No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Trade Type", "Country/Region Code", "VAT Registration No.", "Registration No.", "EU 3-Party Trade")
        {
        }
        key(Key3; "VAT Report to Correct", "Able to Correct Line")
        {
        }
        key(Key4; "VAT Report No.", "Line Type")
        {
            SumIndexFields = Base, Amount, "Number of Supplies";
        }
    }

    fieldgroups
    {
    }
}

