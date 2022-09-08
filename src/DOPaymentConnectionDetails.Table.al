table 824 "DO Payment Connection Details"
{
    Caption = 'DO Payment Connection Details';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; UserName; BLOB)
        {
            Caption = 'UserName';
        }
        field(3; Password; BLOB)
        {
            Caption = 'Password';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

