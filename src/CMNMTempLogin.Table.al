table 5171715 "CMNM Temp. Login"
{
    Caption = 'Login';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Windows Login"; Boolean)
        {
            Caption = 'Windows Login';
        }
        field(3; "Windows Login ID"; Text[100])
        {
            Caption = 'Windows Login ID';
        }
        field(4; Name; Text[65])
        {
            Caption = 'Name';
        }
        field(5; "User Security ID"; Text[119])
        {
            Caption = 'Windows Login SID';
        }
    }

    keys
    {
        key(Key1; "User Security ID")
        {
            Clustered = true;
        }
        key(Key2; "User ID")
        {
        }
    }

    fieldgroups
    {
    }
}

