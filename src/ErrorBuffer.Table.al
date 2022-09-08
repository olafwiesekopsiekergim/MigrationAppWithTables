table 5890 "Error Buffer"
{
    Caption = 'Error Buffer';

    fields
    {
        field(1; "Error No."; Integer)
        {
            Caption = 'Error No.';
        }
        field(2; "Error Text"; Text[250])
        {
            Caption = 'Error Text';
        }
        field(3; "Source Table"; Integer)
        {
            Caption = 'Source Table';
        }
        field(4; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(5; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
    }

    keys
    {
        key(Key1; "Error No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Table", "Source No.", "Source Ref. No.")
        {
        }
    }

    fieldgroups
    {
    }
}

