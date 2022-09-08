table 1234 "CSV Buffer"
{
    Caption = 'CSV Buffer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(3; Value; Text[250])
        {
            Caption = 'Value';
        }
    }

    keys
    {
        key(Key1; "Line No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

