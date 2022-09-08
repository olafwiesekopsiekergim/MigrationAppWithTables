table 5000220 PerformanceDistributionBuffer
{
    Caption = 'PerformanceDistributionBuffer';

    fields
    {
        field(1; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
        }
        field(2; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
        }
        field(3; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
        }
        field(4; "Amount Fix"; Decimal)
        {
            Caption = 'Amount Fix';
        }
        field(5; "Amount Var"; Decimal)
        {
            Caption = 'Amount Var';
        }
    }

    keys
    {
        key(Key1; "Global Dimension 1 Code", "Cost Account No.", "Reference Unit Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

