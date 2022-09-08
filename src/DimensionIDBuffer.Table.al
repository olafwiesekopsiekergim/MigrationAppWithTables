table 353 "Dimension ID Buffer"
{
    Caption = 'Dimension ID Buffer';

    fields
    {
        field(1; "Parent ID"; Integer)
        {
            Caption = 'Parent ID';
        }
        field(2; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
        }
        field(3; "Dimension Value"; Code[20])
        {
            Caption = 'Dimension Value';
        }
        field(4; ID; Integer)
        {
            Caption = 'ID';
        }
    }

    keys
    {
        key(Key1; "Parent ID", "Dimension Code", "Dimension Value")
        {
            Clustered = true;
        }
        key(Key2; ID)
        {
        }
    }

    fieldgroups
    {
    }
}

