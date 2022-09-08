table 11102065 "OM - Sort Variable Buffer"
{
    Caption = 'Sort Variable Buffer';
    DataPerCompany = false;

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Variable Type"; Integer)
        {
            Caption = 'Variable Type';
        }
        field(3; "Object No."; Integer)
        {
            Caption = 'Object No.';
        }
        field(4; "Variable Name"; Text[250])
        {
            Caption = 'Variable Name';
        }
        field(5; "Variable No."; Integer)
        {
            Caption = 'Variable No.';
        }
        field(6; Sort; Boolean)
        {
            Caption = 'Sort';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Sort, "Variable Type", "Object No.", "Variable Name")
        {
        }
    }

    fieldgroups
    {
    }
}

