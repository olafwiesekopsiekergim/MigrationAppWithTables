table 823 "Name/Value Buffer"
{
    Caption = 'Name/Value Buffer';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(2; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(3; Value; Text[250])
        {
            Caption = 'Value';
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

