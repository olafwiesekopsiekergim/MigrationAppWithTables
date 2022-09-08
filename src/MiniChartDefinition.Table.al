table 1310 "Mini Chart Definition"
{
    Caption = 'Mini Chart Definition';

    fields
    {
        field(1; "Code Unit ID"; Integer)
        {
            Caption = 'Code Unit ID';
        }
        field(2; "Chart Name"; Text[60])
        {
            Caption = 'Chart Name';
        }
        field(3; Enabled; Boolean)
        {
            Caption = 'Enabled';
        }
    }

    keys
    {
        key(Key1; "Code Unit ID", "Chart Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

