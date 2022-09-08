table 5138378 "Exp Atlas Templ Export Route"
{
    Caption = 'Atlas Templ Export Route';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
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
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

