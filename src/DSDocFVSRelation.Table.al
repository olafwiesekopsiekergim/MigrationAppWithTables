table 2087636 "DS Doc. FVS Relation"
{
    Caption = 'DS Doc. FVS Relation';

    fields
    {
        field(1; "Doc. FVS Table No."; Integer)
        {
            Caption = 'Doc. FVS Table No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; "Doc. FVS Table Line No."; Integer)
        {
            Caption = 'Doc. FVS Table Line No.';
        }
        field(3; "Relation Type"; Option)
        {
            Caption = 'Relation Type';
            OptionMembers = Condition,Link,"Filter";
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Link From Table No."; Integer)
        {
            Caption = 'Link From Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(11; "Link To Table No."; Integer)
        {
            Caption = 'Link To Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(12; "Link From Field No."; Integer)
        {
            Caption = 'Link From Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Link From Table No."),
                                               Enabled = CONST (true),
                                               Class = FILTER (<> FlowFilter));
        }
        field(13; "Link To Field No."; Integer)
        {
            Caption = 'Link To Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Link To Table No."),
                                               Enabled = CONST (true),
                                               Class = FILTER (<> FlowFilter));
        }
        field(14; "Filter Value"; Text[250])
        {
            Caption = 'Filter Value';
        }
        field(15; "Doc. FVS Table Name"; Text[50])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Doc. FVS Table No.")));
            Caption = 'Doc. FVS Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Link From Table Name"; Text[50])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Link From Table No.")));
            Caption = 'Link From Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Link To Table Name"; Text[50])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Link To Table No.")));
            Caption = 'Link To Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Link From Field Name"; Text[50])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Link From Table No."),
                                                              "No." = FIELD ("Link From Field No.")));
            Caption = 'Link From Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Link To Field Name"; Text[50])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Link To Table No."),
                                                              "No." = FIELD ("Link To Field No.")));
            Caption = 'Link To Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Doc. FVS Table No.", "Doc. FVS Table Line No.", "Relation Type", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

