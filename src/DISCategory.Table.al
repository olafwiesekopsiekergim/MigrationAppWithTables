table 5100905 "DIS - Category"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Data Integration Suite Category';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(15; Indent; Integer)
        {
            Caption = 'Indentation';
        }
        field(16; "Sorting Position"; Integer)
        {
            Caption = 'Sorting Position';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Sorting Position")
        {
        }
    }

    fieldgroups
    {
    }
}

