table 5000021 "Cost Rate"
{
    Caption = 'Cost Rate';
    DataCaptionFields = "Global Dimension 1 Code", "Reference Unit Code", "Starting Date";

    fields
    {
        field(1; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(2; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            NotBlank = true;
            TableRelation = "Reference Unit";
        }
        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            NotBlank = true;
            TableRelation = "Accounting Period";
            ValidateTableRelation = false;
        }
        field(5; "Operational Fix"; Decimal)
        {
            Caption = 'Operational Fix';
        }
        field(6; "Operational Var"; Decimal)
        {
            Caption = 'Operational Var';
        }
        field(7; "Tax Fix"; Decimal)
        {
            Caption = 'Tax Fix';
        }
        field(8; "Tax Var"; Decimal)
        {
            Caption = 'Tax Var';
        }
        field(9; "Operational Actual Fix"; Decimal)
        {
            Caption = 'Operational Actual Fix';
            Editable = false;
        }
        field(10; "Operational Actual Var"; Decimal)
        {
            Caption = 'Operational Actual Var';
            Editable = false;
        }
        field(11; "Tax Actual Fix"; Decimal)
        {
            Caption = 'Tax Actual Fix';
            Editable = false;
        }
        field(12; "Tax Actual Var"; Decimal)
        {
            Caption = 'Tax Actual Var';
            Editable = false;
        }
        field(13; "Budget Fix"; Decimal)
        {
            Caption = 'Budget Fix';
            Editable = false;
        }
        field(14; "Budget Var"; Decimal)
        {
            Caption = 'Budget Var';
            Editable = false;
        }
        field(15; "Reference Cost Account No."; Code[20])
        {
            Caption = 'Reference Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(16; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
        field(17; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Reference Unit Code", "Global Dimension 1 Code", "Starting Date")
        {
            Clustered = true;
        }
        key(Key2; "Global Dimension 1 Code", "Reference Unit Code", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

