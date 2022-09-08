table 373 "Dimension Entry Buffer"
{
    Caption = 'Dimension Entry Buffer';

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(2; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Dimension Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

