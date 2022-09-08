table 42012830 "MobileNAV User Key Selection"
{

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Page No."; Integer)
        {
            Caption = 'Page No.';
        }
        field(3; "Key No."; Integer)
        {
            Caption = 'Key No.';
        }
        field(4; "Ascending"; Boolean)
        {
            Caption = 'Ascending';
        }
    }

    keys
    {
        key(Key1; "User ID", "Page No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

