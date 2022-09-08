table 5292381 "PR - Job Word Line"
{
    Caption = 'Job Word Line';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Command; Integer)
        {
            Caption = 'Command';
        }
        field(20; Bookmark; Text[50])
        {
            Caption = 'Bookmark';
        }
        field(21; "Bookmark Field"; Text[250])
        {
            Caption = 'Bookmark Field';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

