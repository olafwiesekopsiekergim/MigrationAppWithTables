table 450 "Bar Chart Buffer"
{
    Caption = 'Bar Chart Buffer';

    fields
    {
        field(1; "Series No."; Integer)
        {
            Caption = 'Series No.';
        }
        field(2; "Column No."; Integer)
        {
            Caption = 'Column No.';
        }
        field(3; "Y Value"; Decimal)
        {
            Caption = 'Y Value';
        }
        field(4; "X Value"; Text[100])
        {
            Caption = 'X Value';
        }
        field(5; Tag; Text[250])
        {
            Caption = 'Tag';
        }
    }

    keys
    {
        key(Key1; "Series No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

