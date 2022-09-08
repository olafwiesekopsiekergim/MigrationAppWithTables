table 5000006 "Performance Type Filter"
{
    Caption = 'Performance Type Filter';

    fields
    {
        field(1; "Perf. Type Code"; Code[20])
        {
            Caption = 'Type Code';
            TableRelation = "Performance Type";
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(5; "Field ID"; Integer)
        {
            Caption = 'Field ID';
        }
        field(6; "Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Table ID"),
                                                        "No." = FIELD ("Field ID")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table ID"),
                                                              "No." = FIELD ("Field ID")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Field Filter"; Text[250])
        {
            Caption = 'Field Filter';
        }
    }

    keys
    {
        key(Key1; "Perf. Type Code", "Table ID", "Field ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

