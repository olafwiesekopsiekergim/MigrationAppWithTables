table 2087634 "DS Doc. FVS Table"
{
    Caption = 'DS Doc. FVS Table';

    fields
    {
        field(1; "Doc. FVS Table No."; Integer)
        {
            Caption = 'Doc. FVS Table No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; "Line No."; Integer)
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
        field(12; "Attached To Line No."; Integer)
        {
            Caption = 'Attached To Line No.';
        }
        field(13; Indentation; Integer)
        {
            Caption = 'Indentation';
        }
        field(14; Method; Option)
        {
            Caption = 'Method';
            OptionCaption = 'Match,First,Last,All';
            OptionMembers = Match,First,Last,All;
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
        field(18; "Number Of Conditions"; Integer)
        {
            CalcFormula = Count ("DS Doc. FVS Relation" WHERE ("Doc. FVS Table No." = FIELD ("Doc. FVS Table No."),
                                                              "Doc. FVS Table Line No." = FIELD ("Line No."),
                                                              "Relation Type" = CONST (Condition)));
            Caption = 'Number Of Conditions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Number Of Links"; Integer)
        {
            CalcFormula = Count ("DS Doc. FVS Relation" WHERE ("Doc. FVS Table No." = FIELD ("Doc. FVS Table No."),
                                                              "Doc. FVS Table Line No." = FIELD ("Line No."),
                                                              "Relation Type" = CONST (Link)));
            Caption = 'Number Of Links';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Number Of Fields"; Integer)
        {
            CalcFormula = Count ("DS Doc. FVS Field" WHERE ("Doc. FVS Table No." = FIELD ("Doc. FVS Table No."),
                                                           "Doc. FVS Table Line No." = FIELD ("Line No.")));
            Caption = 'Number Of Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Number Of Filters"; Integer)
        {
            CalcFormula = Count ("DS Doc. FVS Relation" WHERE ("Doc. FVS Table No." = FIELD ("Doc. FVS Table No."),
                                                              "Doc. FVS Table Line No." = FIELD ("Line No."),
                                                              "Relation Type" = CONST (Filter)));
            Caption = 'Number Of Filters';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Doc. FVS Table No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

