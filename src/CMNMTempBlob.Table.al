table 5171706 "CMNM Temp. Blob"
{
    Caption = 'Temp. Blob';

    fields
    {
        field(1; "Primay Key"; Integer)
        {
            Caption = 'Primay Key';
        }
        field(2; Blob; BLOB)
        {
            Caption = 'Blob';
        }
    }

    keys
    {
        key(Key1; "Primay Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

