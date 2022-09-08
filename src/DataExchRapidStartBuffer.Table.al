table 8650 "DataExch-RapidStart Buffer"
{
    Caption = 'DataExch-RapidStart Buffer';

    fields
    {
        field(1; "Node ID"; Text[250])
        {
            Caption = 'Node ID';
        }
        field(2; "RapidStart No."; Integer)
        {
            Caption = 'RapidStart No.';
        }
    }

    keys
    {
        key(Key1; "Node ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

