table 14123529 "ES Windows Login Mapping"
{
    Caption = 'User Mapping';

    fields
    {
        field(1; SID; Guid)
        {
            Caption = 'User Security ID';
        }
        field(2; ID; Text[132])
        {
            Caption = 'ID';
        }
        field(4; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(5; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(6; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; SID)
        {
            Clustered = true;
        }
        key(Key2; "Created Date Time")
        {
        }
        key(Key3; "Created By User", "Created Date Time")
        {
        }
        key(Key4; "User ID")
        {
        }
    }

    fieldgroups
    {
    }
}

