table 1261 "Service Password"
{
    Caption = 'Service Password';

    fields
    {
        field(1; "Key"; Guid)
        {
            Caption = 'Key';
        }
        field(2; Value; BLOB)
        {
            Caption = 'Value';
        }
    }

    keys
    {
        key(Key1; "Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

