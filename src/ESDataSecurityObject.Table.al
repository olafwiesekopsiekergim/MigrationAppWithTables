table 14123808 "ES Data Security Object"
{
    Caption = 'Data Security Object';

    fields
    {
        field(1; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            NotBlank = true;
            TableRelation = "ES Source Table Setup";
        }
        field(2; "Data Security Code"; Code[20])
        {
            Caption = 'Data Security Code';
            NotBlank = true;
            TableRelation = "ES Data Security Code".Code WHERE ("Source Table ID" = FIELD ("Source Table ID"));
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
        field(11; Comment; Text[250])
        {
            Caption = 'Comment';
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
        field(14; "Data Security Description"; Text[250])
        {
            CalcFormula = Lookup ("ES Data Security Code".Description WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                            Code = FIELD ("Data Security Code")));
            Caption = 'Data Security Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Fields"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Field" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                "Data Security Code" = FIELD ("Data Security Code"),
                                                                "Object Type" = FIELD ("Object Type"),
                                                                "Object ID" = FIELD ("Object ID")));
            Caption = 'Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Code Implemented"; Boolean)
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
        field(23; "From Setup Company"; Boolean)
        {
            CalcFormula = Lookup ("ES FLADS Copy Setup"."From Setup Company" WHERE ("Table ID" = CONST (14123804),
                                                                                   "Source Table ID" = FIELD ("Source Table ID"),
                                                                                   Code = FIELD ("Data Security Code")));
            Caption = 'From Setup Company';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Table ID", "Data Security Code", "Object Type", "Object ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

