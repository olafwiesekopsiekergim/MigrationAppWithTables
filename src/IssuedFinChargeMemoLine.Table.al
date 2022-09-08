table 305 "Issued Fin. Charge Memo Line"
{
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 01.07.14 DEMSR.SSZ new field "Text Set ID" (5060610) and changed code

    Caption = 'Issued Fin. Charge Memo Line';

    fields
    {
        field(1; "Finance Charge Memo No."; Code[20])
        {
            Caption = 'Finance Charge Memo No.';
            TableRelation = "Issued Fin. Charge Memo Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            TableRelation = "Issued Fin. Charge Memo Line"."Line No." WHERE ("Finance Charge Memo No." = FIELD ("Finance Charge Memo No."));
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Customer Ledger Entry';
            OptionMembers = " ","G/L Account","Customer Ledger Entry";
        }
        field(5; "Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(7; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(8; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(9; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(11; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(12; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(13; "Original Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Original Amount';
        }
        field(14; "Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Remaining Amount';
        }
        field(15; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
        }
        field(16; Amount; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Amount';
        }
        field(17; "Interest Rate"; Decimal)
        {
            BlankZero = true;
            Caption = 'Interest Rate';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(19; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
        }
        field(20; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(21; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(22; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(23; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(24; "VAT Identifier"; Code[10])
        {
            Caption = 'VAT Identifier';
            Editable = false;
        }
        field(26; "VAT Clause Code"; Code[10])
        {
            Caption = 'VAT Clause Code';
            TableRelation = "VAT Clause";
        }
        field(101; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            Editable = false;
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Finance Charge Memo No.", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = Amount, "VAT Amount", "Remaining Amount";
        }
        key(Key2; "Finance Charge Memo No.", Type)
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "VAT Amount", "Remaining Amount";
        }
    }

    fieldgroups
    {
    }
}

