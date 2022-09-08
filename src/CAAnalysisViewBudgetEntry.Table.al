table 5000098 "CA Analysis View Budget Entry"
{
    Caption = 'CA Analysis View Budget Entry';

    fields
    {
        field(1; "Analysis View Code"; Code[10])
        {
            Caption = 'Analysis View Code';
            NotBlank = true;
            TableRelation = "Cost Account Analysis View";
        }
        field(2; "Budget Name"; Code[10])
        {
            Caption = 'Budget Name';
            TableRelation = "Cost Accounting Budget Name";
        }
        field(3; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(4; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(5; "Dimension 1 Value Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 1 Value Code';
        }
        field(6; "Dimension 2 Value Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 2 Value Code';
        }
        field(7; "Dimension 3 Value Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 3 Value Code';
        }
        field(8; "Dimension 4 Value Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 4 Value Code';
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(10; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(11; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(12; "Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Fix';
        }
        field(13; "Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Var';
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(15; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
        }
        field(16; "Entry No. Performance"; Integer)
        {
            Caption = 'Entry No. Performance';
        }
    }

    keys
    {
        key(Key1; "Analysis View Code", "Budget Name", "Business Unit Code", "Cost Account No.", "Reference Unit Code", "Dimension 1 Value Code", "Dimension 2 Value Code", "Dimension 3 Value Code", "Dimension 4 Value Code", "Posting Date", "Entry No.", "Entry No. Performance")
        {
            Clustered = true;
            SumIndexFields = Amount, "Amount Fix", "Amount Var", Quantity;
        }
    }

    fieldgroups
    {
    }
}

