table 99008535 TempBlob
{
    Caption = 'TempBlob';

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
        }
        field(2; Blob; BLOB)
        {
            Caption = 'Blob';
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

