table 11102077 "OM - C/AL History Compiled"
{
    Caption = 'C/AL History Compiled';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = "OM - C/AL History Object";
        }
        field(2; "BLOB Reference"; BLOB)
        {
            Caption = 'BLOB Reference';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Binary,Fob';
            OptionMembers = Binary,Fob;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

