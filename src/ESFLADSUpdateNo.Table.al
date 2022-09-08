table 14123813 "ES FLADS Update No."
{
    Caption = 'Field Level and Data Security Update No.';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(11; "Update No."; Integer)
        {
            Caption = 'Update No.';
        }
        field(12; "Last Update Date Time"; DateTime)
        {
            Caption = 'Last Update Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

