table 8615 "Config. Package Data"
{
    Caption = 'Config. Package Data';

    fields
    {
        field(1; "Package Code"; Code[20])
        {
            Caption = 'Package Code';
            NotBlank = true;
            TableRelation = "Config. Package";
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(3; "No."; Integer)
        {
            Caption = 'No.';
            TableRelation = "Config. Package Record"."No." WHERE ("Table ID" = FIELD ("Table ID"));
        }
        field(4; "Field ID"; Integer)
        {
            Caption = 'Field ID';
            TableRelation = "Config. Package Field"."Field ID" WHERE ("Table ID" = FIELD ("Table ID"));
        }
        field(5; Value; Text[250])
        {
            Caption = 'Value';
        }
        field(6; Invalid; Boolean)
        {
            Caption = 'Invalid';
        }
    }

    keys
    {
        key(Key1; "Package Code", "Table ID", "No.", "Field ID")
        {
            Clustered = true;
        }
        key(Key2; "Package Code", "Table ID", "Field ID")
        {
        }
    }

    fieldgroups
    {
    }
}

