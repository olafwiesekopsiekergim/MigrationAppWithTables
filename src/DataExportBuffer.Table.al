table 11008 "Data Export Buffer"
{
    Caption = 'Data Export Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(3; "Line Feed"; Boolean)
        {
            Caption = 'Line Feed';
        }
        field(4; "Field Value"; Text[250])
        {
            Caption = 'Field Value';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

