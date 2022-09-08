table 296 "Reminder Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EXT  01.11.08   Extended Application (Extension)
    //                 - New Field added
    //                 - Table relations extended
    //                 - Functions added and changed
    // VAL  04.07.16   Views and Lists
    //                 - New Field added
    // -----------------------------------------------------
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code

    Caption = 'Reminder Line';

    fields
    {
        field(1; "Reminder No."; Code[20])
        {
            Caption = 'Reminder No.';
            TableRelation = "Reminder Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(3; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
            TableRelation = "Reminder Line"."Line No." WHERE ("Reminder No." = FIELD ("Reminder No."));
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Customer Ledger Entry,Line Fee';
            OptionMembers = " ","G/L Account","Customer Ledger Entry","Line Fee";
        }
        field(5; "Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(6; "No. of Reminders"; Integer)
        {
            Caption = 'No. of Reminders';
        }
        field(7; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(8; "Document Date"; Date)
        {
            Caption = 'Document Date';
            Editable = false;
        }
        field(9; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Editable = false;
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
            Editable = false;
        }
        field(14; "Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Remaining Amount';
            Editable = false;
        }
        field(15; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF (Type = CONST ("Line Fee")) "G/L Account";
        }
        field(16; Amount; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Amount';
        }
        field(17; "Interest Rate"; Decimal)
        {
            Caption = 'Interest Rate';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
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
            Editable = false;
        }
        field(20; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(21; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'VAT Amount';
            Editable = false;
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
        field(25; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = 'Reminder Line,Not Due,Beginning Text,Ending Text,Rounding,On Hold,Additional Fee,Line Fee';
            OptionMembers = "Reminder Line","Not Due","Beginning Text","Ending Text",Rounding,"On Hold","Additional Fee","Line Fee";
        }
        field(26; "VAT Clause Code"; Code[10])
        {
            Caption = 'VAT Clause Code';
            TableRelation = "VAT Clause";
        }
        field(27; "Applies-to Document Type"; Option)
        {
            Caption = 'Applies-to Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(28; "Applies-to Document No."; Code[20])
        {
            Caption = 'Applies-to Document No.';
        }
        field(101; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            Editable = false;
        }
        field(50000; "Customer No."; Code[20])
        {
            CalcFormula = Lookup ("Reminder Header"."Customer No." WHERE ("No." = FIELD ("Reminder No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50001; "Salesperson Code"; Code[10])
        {
            CalcFormula = Lookup ("Cust. Ledger Entry"."Salesperson Code" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                                "Document No." = FIELD ("Document No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50002; "Customer Name"; Text[50])
        {
            CalcFormula = Lookup ("Reminder Header".Name WHERE ("No." = FIELD ("Reminder No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50003; KTR; Code[20])
        {
            CalcFormula = Lookup ("G/L Entry"."Global Dimension 2 Code" WHERE ("Document No." = FIELD ("Document No."),
                                                                              "Global Dimension 2 Code" = FILTER (<> '')));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5157842; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Description = 'EXT';
            Editable = false;
            TableRelation = IF ("Entry Type" = CONST ("Customer Ledger Entry")) Customer
            ELSE
            IF ("Entry Type" = CONST ("Vendor Ledger Entry")) Vendor;
        }
        field(5157843; "Our Account No."; Text[20])
        {
            Caption = 'Our Account No.';
            Description = 'EXT';
            Editable = false;
        }
        field(5157844; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Description = 'EXT';
            Editable = false;
            OptionCaption = ' ,Customer Ledger Entry,Vendor Ledger Entry';
            OptionMembers = " ","Customer Ledger Entry","Vendor Ledger Entry";
        }
        field(5157845; "Vendor Ledger Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Vendor Ledger Entry No.';
            Description = 'EXT';
            TableRelation = IF ("Entry Type" = CONST ("Vendor Ledger Entry")) "Vendor Ledger Entry";
        }
        field(5157862; "Entry Comment"; Boolean)
        {
            CalcFormula = Exist ("Ledger Entry Comment Line" WHERE ("Table Name" = CONST (Customer),
                                                                   "Entry No." = FIELD ("Entry No.")));
            Caption = 'Entry Comment';
            Description = 'VAL';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Reminder No.", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = Amount, "VAT Amount", "Remaining Amount";
        }
        key(Key2; "Reminder No.", Type, "Line Type")
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

