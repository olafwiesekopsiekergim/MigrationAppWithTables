table 14123806 "ES Field Level Security Object"
{
    Caption = 'Field Level Security Object';

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
            InitValue = "Page";
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
        field(11; "General Permission"; Option)
        {
            Caption = 'General Permission';
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
        field(15; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(21; "Fields"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Sec. Control" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                     "Field Level Security Code" = FIELD ("Field Level Security Code"),
                                                                     "Object Type" = FIELD ("Object Type"),
                                                                     "Object ID" = FIELD ("Object ID"),
                                                                     Type = CONST (Field)));
            Caption = 'Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; Controls; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Sec. Control" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                     "Field Level Security Code" = FIELD ("Field Level Security Code"),
                                                                     "Object Type" = FIELD ("Object Type"),
                                                                     "Object ID" = FIELD ("Object ID"),
                                                                     Type = CONST (Control)));
            Caption = 'Actions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Code Implemented"; Boolean)
        {
            CalcFormula = Lookup ("ES FLADS Relation"."Code Implemented" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                               "Object ID" = FIELD ("Object ID"),
                                                                               Type = CONST ("Source Table"),
                                                                               "Relation Object Type" = CONST (Table),
                                                                               "Relation Object ID" = FIELD ("Source Table ID")));
            Caption = 'Code Implemented';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "From Setup Company"; Boolean)
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
        key(Key1; "Source Table ID", "Field Level Security Code", "Object Type", "Object ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

