table 5000004 "Performance Type"
{
    Caption = 'Performance Type';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(10; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(11; "Table Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; Filtered; Boolean)
        {
            CalcFormula = Exist ("Performance Type Filter" WHERE ("Perf. Type Code" = FIELD (Code),
                                                                 "Table ID" = FIELD ("Table ID")));
            Caption = 'Filtered';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Page ID"; Integer)
        {
            Caption = 'Page ID';
            TableRelation = Object.ID WHERE (Type = CONST (Page));
        }
        field(20; "Table ID Archive"; Integer)
        {
            Caption = 'Table ID Archive';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(21; "Table Name Archive"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID Archive")));
            Caption = 'Table Name Archive';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Filtered Archive"; Boolean)
        {
            CalcFormula = Exist ("Performance Type Filter" WHERE ("Perf. Type Code" = FIELD (Code),
                                                                 "Table ID" = FIELD ("Table ID Archive")));
            Caption = 'Filtered';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Page ID Archive"; Integer)
        {
            Caption = 'Page ID Archive';
            TableRelation = Object.ID WHERE (Type = CONST (Page));
        }
        field(30; "Value Field ID"; Integer)
        {
            Caption = 'Value Type Field ID';
        }
        field(31; "Value Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Table ID"),
                                                        "No." = FIELD ("Value Field ID")));
            Caption = 'Value Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Value Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table ID"),
                                                              "No." = FIELD ("Value Field ID")));
            Caption = 'Value Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "Use Opposite Sign"; Boolean)
        {
            Caption = 'Use Opposite Sign';
        }
        field(40; "Perf. Date Field ID"; Integer)
        {
            Caption = 'Performance Date Field ID';
        }
        field(41; "Perf. Date Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Table ID"),
                                                        "No." = FIELD ("Perf. Date Field ID")));
            Caption = 'Performance Date Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42; "Perf. Date  Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table ID"),
                                                              "No." = FIELD ("Perf. Date Field ID")));
            Caption = 'Performance Date Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(51; "Standard Project Account No."; Code[20])
        {
            Caption = 'Standard Project Account No.';
            TableRelation = "Project Account";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

