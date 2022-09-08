table 62 "Record Export Buffer"
{
    Caption = 'Record Export Buffer';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(2; RecordID; RecordID)
        {
            Caption = 'RecordID';
        }
        field(3; ServerFilePath; Text[250])
        {
            Caption = 'ServerFilePath';
        }
        field(4; ClientFileName; Text[250])
        {
            Caption = 'ClientFileName';
        }
        field(5; ZipFileName; Text[250])
        {
            Caption = 'ZipFileName';
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

