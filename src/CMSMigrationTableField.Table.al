table 5330283 "CMS Migration Table Field"
{
    Caption = 'CMS Migration Table Field';

    fields
    {
        field(5; "Migration Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = "CMS Migration Pack";
        }
        field(10; TableID; Integer)
        {
            Caption = 'TableID';
        }
        field(20; FieldID; Integer)
        {
            Caption = 'FieldID';
        }
        field(30; "Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD (TableID),
                                                        "No." = FIELD (FieldID)));
            Caption = 'Field Name';
            FieldClass = FlowField;
        }
        field(40; "Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD (TableID),
                                                              "No." = FIELD (FieldID)));
            Caption = 'Field Caption';
            FieldClass = FlowField;
        }
        field(50; Validate; Boolean)
        {
            Caption = 'Validate';
        }
        field(60; Include; Boolean)
        {
            Caption = 'Include';
        }
        field(70; Localize; Boolean)
        {
            Caption = 'Localize';
        }
        field(90; "Check before import"; Boolean)
        {
            Caption = 'Check before import';
        }
    }

    keys
    {
        key(Key1; "Migration Code", TableID, FieldID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

