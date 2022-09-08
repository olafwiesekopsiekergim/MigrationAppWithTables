table 11102074 "OM - Field to Renumber"
{
    Caption = 'Field to Renumber';
    DataPerCompany = false;

    fields
    {
        field(1; "Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; "Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(4; "Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Table No."),
                                                        "No." = FIELD ("Field No.")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "New Number"; Integer)
        {
            Caption = 'New Number';
        }
    }

    keys
    {
        key(Key1; "Table No.", "Field No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "New Number")
        {
        }
    }

    fieldgroups
    {
    }
}

