table 5000219 OverheadDistributionBuffer
{
    Caption = 'OverheadDistributionBuffer';

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
        field(3; "Amount Fix"; Decimal)
        {
            Caption = 'Amount Fix';
        }
        field(4; "Amount Var"; Decimal)
        {
            Caption = 'Amount Var';
        }
    }

    keys
    {
        key(Key1; "Global Dimension 1 Code", "Cost Account No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

