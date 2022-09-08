table 5000079 "Iteration Group"
{
    Caption = 'Iteration Group';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; "No. of Loops"; Integer)
        {
            Caption = 'No. of Loops';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Name, "No. of Loops")
        {
        }
    }
}

