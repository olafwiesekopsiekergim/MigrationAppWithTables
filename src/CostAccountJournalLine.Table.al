table 5000027 "Cost Account Journal Line"
{
    Caption = 'Cost Account Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Cost Account Journal Template";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Cost Account Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
        }
        field(5; "Posting Type"; Option)
        {
            Caption = 'Posting Type';
            OptionCaption = 'Cost,Performance,Allocation';
            OptionMembers = Cost,Performance,Allocation;
        }
        field(6; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(7; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(8; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(11; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(12; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(13; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(14; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(15; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(17; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(18; Allocated; Boolean)
        {
            Caption = 'Allocated';
        }
        field(19; "Orig. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Orig. Global Dimension 1 Code';
        }
        field(20; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Editable = false;
        }
        field(21; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(22; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(23; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(24; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(29; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(30; "Operational Cost Rate Fix"; Decimal)
        {
            Caption = 'Operational Cost Rate Fix';
        }
        field(31; "Operational Cost Rate Var"; Decimal)
        {
            Caption = 'Operational Cost Rate Var';
        }
        field(32; "Operational Amount"; Decimal)
        {
            Caption = 'Operational Amount';
        }
        field(33; "Operational Amount Fix"; Decimal)
        {
            Caption = 'Operational Amount Fix';
        }
        field(34; "Operational Amount Var"; Decimal)
        {
            Caption = 'Operational Amount Var';
        }
        field(35; "Tax Amount"; Decimal)
        {
            Caption = 'Tax Amount';
        }
        field(36; "Tax Amount Fix"; Decimal)
        {
            Caption = 'Tax Amount Fix';
        }
        field(37; "Tax Amount Var"; Decimal)
        {
            Caption = 'Tax Amount Var';
        }
        field(38; "Recurring Frequency"; Text[10])
        {
            Caption = 'Recurring Frequency';
            DateFormula = true;
        }
        field(39; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(40; "Recurring Type"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Type';
            OptionCaption = ',Fix,Percentage,Performance';
            OptionMembers = ,Fix,Percentage,Performance;
        }
        field(41; "Cost Rate %"; Decimal)
        {
            Caption = 'Cost Rate %';
        }
        field(42; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            Editable = false;
            TableRelation = "Allocation Header";
        }
        field(43; "Entry No. PA Ledger Entry"; Integer)
        {
            Caption = 'Entry No. PA Ledger Entry';
        }
        field(44; "Entry No. General Ledger Entry"; Integer)
        {
            Caption = 'Entry No. General Ledger Entry';
        }
        field(45; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
        }
        field(46; "Reference Cost Account No."; Code[20])
        {
            Caption = 'Reference Cost Account Code';
            TableRelation = "Cost Account";
        }
        field(47; "Tax Cost Rate Fix"; Decimal)
        {
            Caption = 'Tax Cost Rate Fix';
        }
        field(48; "Tax Cost Rate Var"; Decimal)
        {
            Caption = 'Tax Cost Rate Var';
        }
        field(49; "Original Cost Account No."; Code[20])
        {
            Caption = 'Original Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(52; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(53; "Debit Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Debit Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(54; "Canceled from Entry No."; Integer)
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
        field(62; "Shortcut Dimension 1 Name"; Text[50])
        {
            CalcFormula = Lookup ("Dimension Value".Name WHERE (Code = FIELD ("Shortcut Dimension 1 Code"),
                                                               "Global Dimension No." = CONST (1)));
            Caption = 'Shortcut Dimension 1 Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Bal. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Bal. Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(64; "Bal. Cost Account No."; Code[20])
        {
            Caption = 'Bal. Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(200; "Record ID Performance Source"; RecordID)
        {
            Caption = 'Record ID Performance Source';
        }
        field(271; "Dir. Cost Performance Src. Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Direct Cost Performance Source Fix';
            Editable = false;
        }
        field(272; "Dir. Cost Performance Src. Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Direct Cost Performance Source Var';
            Editable = false;
        }
        field(273; "Ovhd. Cost Perform. Source Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Overhead Cost Performance Source Fix';
            Editable = false;
        }
        field(274; "Ovhd. Cost Perform. Source Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Overhead Cost Performance Source var';
            Editable = false;
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
            SumIndexFields = "Operational Amount", "Tax Amount";
        }
        key(Key2; "Entry No. General Ledger Entry")
        {
        }
        key(Key3; "Cost Account No.", "Posting Date")
        {
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var";
        }
        key(Key4; "Performance Source Type", "Entry No. Performance Source")
        {
        }
    }

    fieldgroups
    {
    }
}

