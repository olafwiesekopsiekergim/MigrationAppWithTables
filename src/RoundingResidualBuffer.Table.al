table 5810 "Rounding Residual Buffer"
{
    Caption = 'Rounding Residual Buffer';

    fields
    {
        field(1; "Item Ledger Entry No."; Integer)
        {
            Caption = 'Item Ledger Entry No.';
        }
        field(2; "Adjusted Cost"; Decimal)
        {
            Caption = 'Adjusted Cost';
        }
        field(3; "Adjusted Cost (ACY)"; Decimal)
        {
            Caption = 'Adjusted Cost (ACY)';
        }
        field(4; "Completely Invoiced"; Boolean)
        {
            Caption = 'Completely Invoiced';
        }
        field(5; "No. of Hits"; Integer)
        {
            Caption = 'No. of Hits';
        }
    }

    keys
    {
        key(Key1; "Item Ledger Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

