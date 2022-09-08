table 14123539 "ES Windows Object"
{
    Caption = 'Windows Object';

    fields
    {
        field(1; GUID; Text[38])
        {
            Caption = 'GUID';
        }
        field(2; ID; Text[131])
        {
            Caption = 'ID';
        }
        field(3; Name; Text[207])
        {
            Caption = 'Name';
        }
        field(4; Type; Text[5])
        {
            Caption = 'Type';
        }
        field(5; SID; Text[119])
        {
            Caption = 'User Security ID';
        }
        field(6; "Distinguished Name"; Text[249])
        {
            Caption = 'Distinguished Name';
        }
    }

    keys
    {
        key(Key1; GUID)
        {
            Clustered = true;
        }
        key(Key2; SID)
        {
        }
    }

    fieldgroups
    {
    }
}

