table 14123807 "ES Field Level Sec. Control"
{
    Caption = 'Field Level Security Control';

    fields
    {
        field(1; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            NotBlank = true;
            TableRelation = "ES Source Table Setup";
        }
        field(2; "Field Level Security Code"; Code[20])
        {
            Caption = 'Field Level Security Code';
            NotBlank = true;
            TableRelation = "ES Field Level Security Code".Code WHERE ("Source Table ID" = FIELD ("Source Table ID"));
        }
        field(3; "Object Type"; Option)
        {
            Caption = 'Object Type';
            NotBlank = true;
            OptionCaption = ' ,,,,,,,,Page';
            OptionMembers = " ",,,,,,,,"Page";
        }
        field(4; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            TableRelation = "ES FLADS Relation"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                   Type = FILTER ("Source Table" | "Data Item"),
                                                                   "Relation Object Type" = CONST (Table),
                                                                   "Relation Object ID" = FIELD ("Source Table ID"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Field,Action';
            OptionMembers = "Field",Control;
        }
        field(6; ID; Integer)
        {
            Caption = 'ID';
        }
        field(11; Permission; Option)
        {
            Caption = 'Permission';
            OptionCaption = 'Edit,View,Hide';
            OptionMembers = Edit,View,Hide;
        }
        field(12; "Source Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table ID")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Object Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Field Level Security Descr."; Text[250])
        {
            CalcFormula = Lookup ("ES Field Level Security Code".Description WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                                   Code = FIELD ("Field Level Security Code")));
            Caption = 'Field Level Security Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Source Table ID"),
                                                              "No." = FIELD (ID)));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(21; "From Setup Company"; Boolean)
        {
            CalcFormula = Lookup ("ES FLADS Copy Setup"."From Setup Company" WHERE ("Table ID" = CONST (14123803),
                                                                                   "Source Table ID" = FIELD ("Source Table ID"),
                                                                                   Code = FIELD ("Field Level Security Code")));
            Caption = 'From Setup Company';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Table ID", "Field Level Security Code", "Object Type", "Object ID", Type, ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

