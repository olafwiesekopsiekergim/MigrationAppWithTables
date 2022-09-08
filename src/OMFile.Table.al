table 11102094 "OM - File"
{
    Caption = 'File';
    DataPerCompany = false;

    fields
    {
        field(1; Path; Text[190])
        {
            Caption = 'Path';
        }
        field(2; "Is a File"; Boolean)
        {
            Caption = 'Is a File';
        }
        field(3; Name; Text[250])
        {
            Caption = 'Name';
        }
    }

    keys
    {
        key(Key1; Path, "Is a File", Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

