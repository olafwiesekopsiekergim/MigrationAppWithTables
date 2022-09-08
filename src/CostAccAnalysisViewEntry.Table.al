table 5000093 "Cost Acc. Analysis View Entry"
{
    Caption = 'Cost Acc. Analysis View Entry';

    fields
    {
        field(1; "Analysis View Code"; Code[10])
        {
            Caption = 'Analysis View Code';
            NotBlank = true;
            TableRelation = "Cost Account Analysis View";
        }
        field(2; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(3; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(4; "Dimension 1 Value Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 1 Value Code';
        }
        field(5; "Dimension 2 Value Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 2 Value Code';
        }
        field(6; "Dimension 3 Value Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 3 Value Code';
        }
        field(7; "Dimension 4 Value Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 4 Value Code';
        }
        field(8; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(9; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Operational Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Operational Amount';
        }
        field(11; "Operational Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Operational Amount Fix';
        }
        field(12; "Operational Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Operational Amount Var';
        }
        field(13; "Tax Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Tax Amount';
        }
        field(14; "Tax Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Tax Amount Fix';
        }
        field(15; "Tax Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Tax Amount Var';
        }
        field(16; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(17; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
    }

    keys
    {
        key(Key1; "Analysis View Code", "Business Unit Code", "Cost Account No.", "Reference Unit Code", "Dimension 1 Value Code", "Dimension 2 Value Code", "Dimension 3 Value Code", "Dimension 4 Value Code", "Posting Date", "Entry No.")
        {
            Clustered = true;
            SumIndexFields = "Operational Amount", "Operational Amount Fix", "Operational Amount Var", "Tax Amount", "Tax Amount Fix", "Tax Amount Var", Quantity;
        }
    }

    fieldgroups
    {
    }
}

