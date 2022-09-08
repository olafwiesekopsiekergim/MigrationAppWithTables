table 2087635 "DS Doc. FVS Field"
{
    Caption = 'DS Doc. FVS Field';

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
        field(3; "Filter Group"; Text[50])
        {
            Caption = 'Filter Group';
            TableRelation = "DS Filter Group".GroupName WHERE (Type = CONST (FilterGroup));
        }
        field(10; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(11; "Table Name"; Text[50])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."),
                                               Enabled = CONST (true),
                                               Class = FILTER (<> FlowFilter));
        }
        field(14; "Field Name"; Text[50])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Doc. FVS Table Name"; Text[50])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Doc. FVS Table No.")));
            Caption = 'Doc. FVS Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Fixed Value"; Text[100])
        {
            Caption = 'Fixed Value';
        }
        field(17; "Fixed Value Behavior"; Option)
        {
            Caption = 'Fixed Value Behavior';
            OptionCaption = 'None,Overrule,Overrule When Empty';
            OptionMembers = "None",Overrule,"Overrule When Empty";
        }
        field(18; "Fixed Value When Not Found"; Text[100])
        {
            Caption = 'Fixed Value When Not Found';
        }
        field(19; "Hierarchy Behaviour"; Option)
        {
            Caption = 'Hierarchy Behaviour';
            OptionCaption = 'None,Overrule,Overrule When Emtpy';
            OptionMembers = "None",Overrule,"Overrule When Emtpy";
        }
    }

    keys
    {
        key(Key1; "Doc. FVS Table No.", "Doc. FVS Table Line No.", "Filter Group")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

