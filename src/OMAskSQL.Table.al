table 11102075 "OM - Ask SQL"
{
    Caption = 'Ask SQL';
    DataPerCompany = false;

    fields
    {
        field(1; Question; Integer)
        {
            BlankZero = true;
            Caption = 'Question';
        }
        field(2; Answer; Text[250])
        {
            Caption = 'Answer';
        }
    }

    keys
    {
        key(Key1; Question)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

