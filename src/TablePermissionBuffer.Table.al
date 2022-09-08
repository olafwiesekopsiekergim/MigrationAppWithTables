table 9800 "Table Permission Buffer"
{
    Caption = 'Table Permission Buffer';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            AutoIncrement = true;
            Caption = 'Table ID';
        }
        field(2; "Session ID"; Integer)
        {
            Caption = 'Session ID';
        }
        field(3; "Insert Permission"; Boolean)
        {
            Caption = 'Insert Permission';
        }
        field(4; "Modify Permission"; Boolean)
        {
            Caption = 'Modify Permission';
        }
        field(5; "Delete Permission"; Boolean)
        {
            Caption = 'Delete Permission';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Session ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

