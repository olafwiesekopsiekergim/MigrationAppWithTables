table 5000028 "Cost Account Ledger Entry"
{
    Caption = 'Cost Account Ledger Entry';
    DataCaptionFields = "Global Dimension 1 Code", "Cost Account No.";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Cost Account Journal Batch".Name;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
        }
        field(4; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Cost,Performance';
            OptionMembers = Cost,Performance;
        }
        field(5; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(6; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(7; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(8; "Bal. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Bal. Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(9; "Bal. Cost Account No."; Code[20])
        {
            Caption = 'Bal. Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(10; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
        }
        field(11; "Bal. Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Bal. Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(12; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(13; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(14; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(16; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(17; Allocated; Boolean)
        {
            Caption = 'Allocated';
        }
        field(18; "Orig. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Orig. Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(19; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User;
        }
        field(20; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(21; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(22; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(23; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(28; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(29; "Operational Cost Rate Fix"; Decimal)
        {
            Caption = 'Operational Cost Rate Fix';
        }
        field(30; "Operational Cost Rate Var"; Decimal)
        {
            Caption = 'Operational Cost Rate Var';
        }
        field(31; "Operational Amount"; Decimal)
        {
            Caption = 'Operational Amount';
        }
        field(32; "Operational Amount Fix"; Decimal)
        {
            Caption = 'Operational Amount Fix';
        }
        field(33; "Operational Amount Var"; Decimal)
        {
            Caption = 'Operational Amount Var';
        }
        field(34; "Tax Amount"; Decimal)
        {
            Caption = 'Tax Amount';
        }
        field(35; "Tax Amount Fix"; Decimal)
        {
            Caption = 'Tax Amount Fix';
        }
        field(36; "Tax Amount Var"; Decimal)
        {
            Caption = 'Tax Amount Var';
        }
        field(37; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            TableRelation = "Allocation Header";
        }
        field(38; "Entry No. PA Ledger Entry"; Integer)
        {
            Caption = 'Entry No. PA Ledger Entry';
        }
        field(39; "Entry No. General Ledger Entry"; Integer)
        {
            Caption = 'Entry No. General Ledger Entry';
        }
        field(40; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
        }
        field(41; "Reference Cost Account No."; Code[20])
        {
            Caption = 'Reference Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(42; "Tax Cost Rate Fix"; Decimal)
        {
            Caption = 'Tax Cost Rate Fix';
        }
        field(43; "Tax Cost Rate Var"; Decimal)
        {
            Caption = 'Tax Cost Rate Var';
        }
        field(44; "Distributed to Project Account"; Boolean)
        {
            Caption = 'Distributed to Project Account';
        }
        field(45; "Original Cost Account No."; Code[20])
        {
            Caption = 'Original Cost Account No.';
        }
        field(46; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
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
        field(62; "Cost Account Name"; Text[50])
        {
            CalcFormula = Lookup ("Cost Account".Name WHERE ("No." = FIELD ("Cost Account No.")));
            Caption = 'Cost Account Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Record ID Performance Source"; RecordID)
        {
            Caption = 'Record ID Performance Source';
        }
        field(271; "Dir. Cost Amnt. Perf. Src. Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Direct Cost Amount Performance Source Fix';
            Editable = false;
        }
        field(272; "Dir. Cost Amnt. Perf. Src. Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Direct Cost Amount Performance Source Var';
            Editable = false;
        }
        field(273; "Ovhd. Amnt. Perf. Source Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Overhead Amount Performance Source Fix';
            Editable = false;
        }
        field(274; "Ovhd. Amnt. Perf. Source Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Overhead Amount Performance Source Var';
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
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No. General Ledger Entry")
        {
        }
        key(Key3; "Entry No. PA Ledger Entry")
        {
        }
        key(Key4; "Document No.", "Posting Date")
        {
        }
        key(Key5; "Cost Account No.", "Posting Date")
        {
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var";
        }
        key(Key6; "Reference Unit Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Key7; "Entry Type", "Reference Unit Code", "Global Dimension 1 Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Key8; "Entry Type", "Reference Unit Code", "Debit Global Dimension 1 Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Key9; "Cost Account No.", "Global Dimension 1 Code", "Posting Date")
        {
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var";
        }
        key(Key10; "Global Dimension 1 Code", "Posting Date")
        {
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var";
        }
        key(Key11; "Entry Type", "Global Dimension 1 Code", "Cost Account No.", "Posting Date", "Bal. Global Dimension 2 Code", "Business Unit Code", "Reference Unit Code")
        {
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key12; "Distributed to Project Account", "Bal. Global Dimension 2 Code")
        {
        }
        key(Key13; "Cost Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Business Unit Code", "Posting Date", "Reference Unit Code")
        {
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key14; "Reference Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Business Unit Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Key15; "Performance Source Type", "Entry No. Performance Source")
        {
        }
        key(Key16; "Allocation Header Code", "Posting Date")
        {
        }
        key(Key17; "Entry Type", "Global Dimension 1 Code", "Reference Unit Code", "Debit Global Dimension 1 Code", "Posting Date")
        {
            SumIndexFields = Quantity, "Dir. Cost Amnt. Perf. Src. Fix", "Dir. Cost Amnt. Perf. Src. Var", "Ovhd. Amnt. Perf. Source Fix", "Ovhd. Amnt. Perf. Source Var";
        }
        key(Key18; "Reference Unit Code", "Debit Global Dimension 1 Code", "Global Dimension 2 Code", "Business Unit Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, "Cost Account No.", "Posting Date", "Document No.")
        {
        }
    }
}

