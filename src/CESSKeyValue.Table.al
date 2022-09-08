table 5351556 "CESS - Key Value"
{
    Caption = 'Sanscreen Key/Value';

    fields
    {
        field(1; "Key"; Code[50])
        {
            Caption = 'Key';
        }
        field(2; Value; BLOB)
        {
            Caption = 'Value';
        }
        field(10; "Last Modified at"; DateTime)
        {
            Caption = 'Last Modified at';
            Editable = false;
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

