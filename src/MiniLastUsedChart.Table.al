table 1311 "Mini Last Used Chart"
{
    Caption = 'Mini Last Used Chart';

    fields
    {
        field(1; UID; Code[50])
        {
            Caption = 'UID';
        }
        field(2; "Code Unit ID"; Integer)
        {
            Caption = 'Code Unit ID';
        }
        field(3; "Chart Name"; Text[60])
        {
            Caption = 'Chart Name';
        }
    }

    keys
    {
        key(Key1; UID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

