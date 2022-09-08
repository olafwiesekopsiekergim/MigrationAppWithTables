table 11001 "Place of Receiver"
{
    Caption = 'Place of Receiver';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; Text; Text[80])
        {
            Caption = 'Text';
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
        fieldgroup(DropDown; "Code", Text)
        {
        }
    }
}

