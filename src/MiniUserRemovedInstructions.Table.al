table 1306 "Mini User Removed Instructions"
{
    Caption = 'Mini User Removed Instructions';

    fields
    {
        field(1; "User ID"; Text[132])
        {
            Caption = 'User ID';
            Editable = false;
        }
        field(2; "Instruction Code"; Code[20])
        {
            Caption = 'Instruction Code';
        }
    }

    keys
    {
        key(Key1; "User ID", "Instruction Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

