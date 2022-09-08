table 5100942 "DIS - Conversion Line Value"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Conversion Line Value';

    fields
    {
        field(1; "Conversion Code"; Code[20])
        {
            Caption = 'Conversion Code';
            TableRelation = "DIS - Conversion Header";
        }
        field(5; "List Name"; Text[80])
        {
            Caption = 'List-/Table-/Tag-Name';
            TableRelation = "DIS - Conversion Line"."Target List Name" WHERE ("Conversion Code" = FIELD ("Conversion Code"));
        }
        field(6; "Field Name"; Text[80])
        {
            Caption = 'Field-/Tag-Name';
            TableRelation = "DIS - Conversion Line"."Target Field Name" WHERE ("Conversion Code" = FIELD ("Conversion Code"),
                                                                               "Target List Name" = FIELD ("List Name"));
        }
        field(20; "Value From"; Text[250])
        {
            Caption = 'Value From';
        }
        field(25; "Value To"; Text[250])
        {
            Caption = 'Value To';
        }
    }

    keys
    {
        key(Key1; "Conversion Code", "List Name", "Field Name", "Value From")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

