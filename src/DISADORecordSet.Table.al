table 5101268 "DIS - ADO Record Set"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Record Set';

    fields
    {
        field(1; "Execute GUID"; Guid)
        {
            Caption = 'GUID';
        }
        field(2; "Record Entry No."; Integer)
        {
            Caption = 'Record Entry No.';
        }
        field(5; "ADO Interface"; Code[20])
        {
            Caption = 'ADO Interface';
            TableRelation = "DIS - ADO Interface";
        }
        field(6; "Table Name"; Text[80])
        {
            Caption = 'Table Name';
        }
        field(10; "Field Value 01"; Text[250])
        {
        }
        field(11; "Field Value 02"; Text[250])
        {
        }
        field(12; "Field Value 03"; Text[250])
        {
        }
        field(13; "Field Value 04"; Text[250])
        {
        }
        field(14; "Field Value 05"; Text[250])
        {
        }
        field(15; "Field Value 06"; Text[250])
        {
        }
        field(16; "Field Value 07"; Text[250])
        {
        }
        field(17; "Field Value 08"; Text[250])
        {
        }
        field(18; "Field Value 09"; Text[250])
        {
        }
        field(19; "Field Value 10"; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; "Execute GUID", "Record Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

