table 14123809 "ES Data Security Field"
{
    Caption = 'Data Security Field';

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
        field(5; "Field ID"; Integer)
        {
            Caption = 'Field ID';
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Source Table ID"));
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
        field(15; "Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Source Table ID"),
                                                              "No." = FIELD ("Field ID")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Filter Type"; Option)
        {
            Caption = 'Filter Type';
            OptionCaption = 'Hidden,Editable';
            OptionMembers = Hidden,Editable;
        }
        field(17; "Filter Value"; Text[250])
        {
            Caption = 'Filter Value';
        }
        field(18; "Substitute Filter Value"; Boolean)
        {
            Caption = 'Substitute Filter Value';
        }
        field(19; "Original Filter Value"; Text[250])
        {
            Caption = 'Original Filter Value';
            Editable = false;
        }
        field(20; "Always Substitute Filter Value"; Boolean)
        {
            Caption = 'Always Substitute Filter Value';
        }
        field(21; "From Setup Company"; Boolean)
        {
            CalcFormula = Lookup ("ES FLADS Copy Setup"."From Setup Company" WHERE ("Table ID" = CONST (14123804),
                                                                                   "Source Table ID" = FIELD ("Source Table ID"),
                                                                                   Code = FIELD ("Data Security Code")));
            Caption = 'From Setup Company';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Type Name"; Text[30])
        {
            CalcFormula = Lookup (Field."Type Name" WHERE (TableNo = FIELD ("Source Table ID"),
                                                          "No." = FIELD ("Field ID")));
            Caption = 'Type Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Table ID", "Data Security Code", "Object Type", "Object ID", "Field ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

