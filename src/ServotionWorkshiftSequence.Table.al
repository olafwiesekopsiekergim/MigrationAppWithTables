table 42014836 "Servotion Workshift Sequence"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Value for Dummy FlowField"; Text[100])
        {
            Caption = 'Value for Dummy FlowField';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

