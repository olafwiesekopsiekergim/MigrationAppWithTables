table 283 "Line Number Buffer"
{
    Caption = 'Line Number Buffer';

    fields
    {
        field(1; "Old Line Number"; Integer)
        {
            Caption = 'Old Line Number';
        }
        field(2; "New Line Number"; Integer)
        {
            Caption = 'New Line Number';
        }
    }

    keys
    {
        key(Key1; "Old Line Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

