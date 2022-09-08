table 5000203 "Project Account Ledger Entry"
{
    Caption = 'Project Account Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; "Posting Type"; Option)
        {
            Caption = 'Posting Type';
            OptionCaption = 'Cost,Reference Unit,Overhead';
            OptionMembers = Cost,"Reference Unit",Overhead;
        }
        field(5; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(9; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
        }
        field(10; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
        }
        field(12; "Operational Amount"; Decimal)
        {
            Caption = 'Operational Amount';
        }
        field(13; "Operational Amount Fix"; Decimal)
        {
            Caption = 'Operational Amount Fix';
        }
        field(14; "Operational Amount Var"; Decimal)
        {
            Caption = 'Operational Amount Var';
        }
        field(15; "Tax Amount"; Decimal)
        {
            Caption = 'Tax Amount';
        }
        field(16; "Tax Amount Fix"; Decimal)
        {
            Caption = 'Tax Amount Fix';
        }
        field(17; "Tax Amount Var"; Decimal)
        {
            Caption = 'Tax Amount Var';
        }
        field(18; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(19; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(24; "Original Document No."; Code[20])
        {
            Caption = 'Original Document No.';
        }
        field(25; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(26; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(27; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(28; "Cost Rate Fix"; Decimal)
        {
            Caption = 'Cost Rate Fix';
        }
        field(29; "Cost Rate Var"; Decimal)
        {
            Caption = 'Cost Rate Var';
        }
        field(36; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(37; "Distributed Amount Fix"; Decimal)
        {
            Caption = 'Distributed Amount Fix';
        }
        field(38; "Distributed Amount Var"; Decimal)
        {
            Caption = 'Distributed Amount Var';
        }
        field(39; "Calculation Period"; Date)
        {
            Caption = 'Calculation Period';
            TableRelation = "Accounting Period";
        }
        field(41; "Distribute to Cost Account"; Boolean)
        {
            Caption = 'Distribute to Cost Account';
        }
        field(42; "Entry No. Cost Account Entry"; Integer)
        {
            Caption = 'Entry No. Cost Account Entry';
        }
        field(43; "Entry No. General Ledger Entry"; Integer)
        {
            Caption = 'Entry No. General Ledger Entry';
        }
        field(44; "User ID"; Code[50])
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
        field(63; "Project Account Name"; Text[50])
        {
            CalcFormula = Lookup ("Project Account".Name WHERE ("No." = FIELD ("Project Account No.")));
            Caption = 'Project Account Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Bal. Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Bal. Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(81; "Bal. Project Account No."; Code[20])
        {
            Caption = 'Bal. Project Account No.';
            TableRelation = "Project Account";
        }
        field(82; "Orig. Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Orig. Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(83; "Original Project Account No."; Code[20])
        {
            Caption = 'Original Project Account No.';
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
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Posting Date")
        {
        }
        key(Key3; "Project Account No.", "Posting Date")
        {
        }
        key(Key4; "Global Dimension 2 Code", "Posting Date")
        {
            SumIndexFields = "Operational Amount Fix", "Operational Amount", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key5; "Global Dimension 2 Code", "Posting Type", "Posting Date")
        {
            SumIndexFields = "Operational Amount Fix", "Operational Amount", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key6; "Global Dimension 2 Code", "Project Account No.", "Global Dimension 1 Code", "Posting Type", "Posting Date")
        {
            SumIndexFields = "Operational Amount Fix", "Operational Amount", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key7; "Global Dimension 2 Code", "Posting Type", "Global Dimension 1 Code", "Distribute to Cost Account", "Calculation Period")
        {
            SumIndexFields = "Operational Amount Fix", "Operational Amount", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key8; "Entry No. Cost Account Entry")
        {
        }
        key(Key9; "Entry No. General Ledger Entry")
        {
        }
        key(Key10; "Posting Type", "Global Dimension 1 Code", "Reference Unit Code", "Global Dimension 2 Code", "Posting Date")
        {
            SumIndexFields = "Operational Amount Fix", "Operational Amount", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key11; "Project Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Business Unit Code", "Posting Date", "Reference Unit Code")
        {
            SumIndexFields = "Operational Amount Fix", "Operational Amount", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
        key(Key12; "Reference Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Business Unit Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Key13; "Performance Source Type", "Entry No. Performance Source")
        {
        }
        key(Key14; "Allocation Header Code", "Posting Date")
        {
        }
        key(Key15; "Entry No. Item Ledger Entry")
        {
        }
        key(Key16; "Entry No. Res. Ledger Entry")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, "Project Account No.", "Posting Date", "Document No.")
        {
        }
    }
}

