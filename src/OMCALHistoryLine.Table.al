table 11102053 "OM - C/AL History Line"
{
    Caption = 'C/AL History Line';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = "OM - C/AL History Object";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Sub Line No."; Integer)
        {
            Caption = 'Sub Line No.';
        }
        field(4; "Code"; Text[250])
        {
            Caption = 'Code';
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Line No.", "Sub Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

