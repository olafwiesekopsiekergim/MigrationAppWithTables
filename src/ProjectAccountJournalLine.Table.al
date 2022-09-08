table 5000202 "Project Account Journal Line"
{
    Caption = 'Project Account Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5; "Posting Type"; Option)
        {
            Caption = 'Posting Type';
            OptionCaption = 'Cost,Reference Unit,Overhead,Allocation';
            OptionMembers = Cost,"Reference Unit",Overhead,Allocation;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Sales Order,Sales Credit Memo,Purchase Order,Purchase Credit Memo,Manufacturing,Inventory';
            OptionMembers = " ","Sales Order","Sales Credit Memo","Purchase Order","Purchase Credit Memo",Manufacturing,Inventory;
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; "Operational Amount"; Decimal)
        {
            Caption = 'Operational Amount';
        }
        field(10; "Operational Amount Fix"; Decimal)
        {
            Caption = 'Operational Amount Fix';
        }
        field(11; "Operational Amount Var"; Decimal)
        {
            Caption = 'Operational Amount Var';
        }
        field(12; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(13; "Tax Amount"; Decimal)
        {
            Caption = 'Tax Amount';
        }
        field(14; "Tax Amount Fix"; Decimal)
        {
            Caption = 'Tax Amount Fix';
        }
        field(15; "Tax Amount Var"; Decimal)
        {
            Caption = 'Tax Amount Var';
        }
        field(16; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(18; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(19; "Orig. Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Orig. Global Dimension 2 Code';
        }
        field(20; "Original Project Account No."; Code[20])
        {
            Caption = 'Original Project Account No.';
            TableRelation = "Project Account";
        }
        field(21; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
        }
        field(22; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
        }
        field(25; "Original Document No."; Code[20])
        {
            Caption = 'Original Document No.';
        }
        field(26; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Name';
        }
        field(27; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(28; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(29; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(30; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(31; "Cost Rate Fix"; Decimal)
        {
            Caption = 'Cost Rate Fix';
        }
        field(32; "Cost Rate Var"; Decimal)
        {
            Caption = 'Cost Rate Var';
        }
        field(36; "Recurring Type"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Type';
            OptionCaption = ' ,Fix,Variable';
            OptionMembers = " ",Fix,Variable;
        }
        field(37; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(38; "Recurring Frequency"; Text[10])
        {
            Caption = 'Recurring Frequency';
            DateFormula = true;
        }
        field(43; "Entry No. Cost Account Entry"; Integer)
        {
            Caption = 'Entry No. Cost Account Entry';
        }
        field(44; "Entry No. General Ledger Entry"; Integer)
        {
            Caption = 'Entry No. General Ledger Entry';
        }
        field(45; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(49; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(50; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(51; "Canceled from Entry No."; Integer)
        {
            Caption = 'Canceled from Entry No.';
        }
        field(60; "Performance Source Type"; Option)
        {
            Caption = 'Performance Source Type';
            OptionCaption = ' ,Resource,Machine Centers,Work Centers,,,,,,,,,,Performance Type';
            OptionMembers = " ",Resource,"Machine Centers","Work Centers",,,,,,,,,,"Performance Type";
        }
        field(61; "Entry No. Performance Source"; Integer)
        {
            Caption = 'Entry No. Performance Source';
        }
        field(62; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            Editable = false;
            TableRelation = "Allocation Header";
        }
        field(63; "Shortcut Dimension 2 Name"; Text[50])
        {
            CalcFormula = Lookup ("Dimension Value".Name WHERE (Code = FIELD ("Shortcut Dimension 2 Code"),
                                                               "Global Dimension No." = CONST (2)));
            Caption = 'Shortcut Dimension 2 Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64; "Second Split Line Perf. Source"; Boolean)
        {
            Caption = 'Seconded Splitted Line Performance Source';
        }
        field(200; "Record ID Performance Source"; RecordID)
        {
            Caption = 'Record ID Performance Source';
        }
        field(300; "Entry No. Item Ledger Entry"; Integer)
        {
            Caption = 'Entry No. Item Ledger Entry';
        }
        field(400; "Entry No. Res. Ledger Entry"; Integer)
        {
            Caption = 'Entry No. Res. Ledger Entry';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No. General Ledger Entry")
        {
        }
        key(Key3; "Performance Source Type", "Entry No. Performance Source")
        {
        }
        key(Key4; "Entry No. Item Ledger Entry")
        {
        }
        key(Key5; "Entry No. Res. Ledger Entry")
        {
        }
    }

    fieldgroups
    {
    }
}

