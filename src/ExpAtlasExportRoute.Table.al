table 5138376 "Exp Atlas Export Route"
{
    Caption = 'Atlas Export Route';

    fields
    {
        field(1; "AAK No."; Code[20])
        {
            Caption = 'AAK No.';
            TableRelation = "Exp Atlas Export Order";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            Description = 'Codeliste I0800';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

