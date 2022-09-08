table 5101267 "DIS - ADO Table Schema"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Data Viewer Table Schema';

    fields
    {
        field(1; "Execute GUID"; Guid)
        {
            Caption = 'GUID';
        }
        field(2; "Field Ordinal"; Integer)
        {
            Caption = 'Field Ordinal';
        }
        field(4; Active; Boolean)
        {
            Caption = 'SELECT';
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
        field(10; "Field Name"; Text[80])
        {
            Caption = 'Field Name';
        }
        field(11; "Field Type"; Text[80])
        {
            Caption = 'Field Type';
        }
        field(20; "Filter Value"; Text[250])
        {
            Caption = 'WHERE';
        }
        field(21; "Filter Operator"; Option)
        {
            Caption = 'WHERE Operator';
            OptionCaption = '=,<>,>,<,>=,<=,BETWEEN,LIKE,IN';
            OptionMembers = "=","<>",">","<",">=","<=",BETWEEN,LIKE,"IN";
        }
    }

    keys
    {
        key(Key1; "Execute GUID", "Table Name", "Field Name")
        {
            Clustered = true;
        }
        key(Key2; "Execute GUID", "Table Name", "Field Ordinal")
        {
        }
    }

    fieldgroups
    {
    }
}

