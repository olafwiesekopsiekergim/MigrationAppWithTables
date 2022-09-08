table 5101269 "DIS - ADO Selection Entry"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Selection Entry';

    fields
    {
        field(1; "Selection GUID"; Guid)
        {
        }
        field(2; "Entry No."; Integer)
        {
        }
        field(10; "Field 01"; Text[250])
        {
        }
        field(11; "Field 02"; Text[250])
        {
        }
        field(12; "Field 03"; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; "Selection GUID", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Field 01")
        {
        }
    }

    fieldgroups
    {
    }
}

