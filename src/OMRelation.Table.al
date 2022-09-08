table 11102078 "OM - Relation"
{
    Caption = 'Relation';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"));
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field';
        }
        field(5; "Relation Table No."; Integer)
        {
            Caption = 'Relation Table';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(6; "Relation Field No."; Integer)
        {
            Caption = 'Relation Field';
        }
        field(7; "Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Table No."),
                                                        "No." = FIELD ("Field No.")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Relation Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Relation Table No.")));
            Caption = 'Relation Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Relation Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Relation Table No."),
                                                        "No." = FIELD ("Relation Field No.")));
            Caption = 'Relation Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Table No.", "Relation Table No.", "Field No.", "Relation Field No.")
        {
        }
        key(Key3; "Object Type", "Relation Table No.", "Table No.", "Relation Field No.", "Field No.")
        {
        }
    }

    fieldgroups
    {
    }
}

