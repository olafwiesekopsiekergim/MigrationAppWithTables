table 5100937 "DIS - Rec. Pool Related Table"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Related Tables';
    DataPerCompany = false;

    fields
    {
        field(1; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool';
            TableRelation = "DIS - Record Pool";
        }
        field(30; "Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(31; "Table Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Table Filter"; Boolean)
        {
            CalcFormula = Exist ("DIS - Rec. Pool Related Filter" WHERE ("Record Pool Code" = FIELD ("Record Pool Code"),
                                                                        "Target Table No." = FIELD ("Table No.")));
            Caption = 'Filter';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Record Pool Code", "Table No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

