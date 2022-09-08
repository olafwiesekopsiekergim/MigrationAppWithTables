table 14123805 "ES User Security Setup"
{
    Caption = 'User Security Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            TableRelation = "ES Source Table Setup";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; "Field Level Security Code"; Code[20])
        {
            Caption = 'Field Level Security Code';
            TableRelation = "ES Field Level Security Code".Code WHERE ("Source Table ID" = FIELD ("Source Table ID"));
        }
        field(12; "Data Security Code"; Code[20])
        {
            Caption = 'Data Security Code';
            TableRelation = "ES Data Security Code".Code WHERE ("Source Table ID" = FIELD ("Source Table ID"));
        }
        field(13; "Source Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table ID")));
            Caption = 'Source Table Caption';
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
        field(15; "Data Security Description"; Text[250])
        {
            CalcFormula = Lookup ("ES Data Security Code".Description WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                            Code = FIELD ("Field Level Security Code")));
            Caption = 'Data Security Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Security as User ID"; Code[50])
        {
            Caption = 'Security as User ID';
            TableRelation = "ES User Security Setup"."User ID";
        }
        field(21; "Field Level Security Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Security Object" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                        "Field Level Security Code" = FIELD ("Field Level Security Code")));
            Caption = 'Field Level Security Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Data Security Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Object" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                 "Data Security Code" = FIELD ("Data Security Code")));
            Caption = 'Data Security Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "User Security Setups"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES User Security Setup" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                "Security as User ID" = FIELD ("User ID")));
            Caption = 'User Security Setups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "User Security Setup Exists"; Boolean)
        {
            CalcFormula = Exist ("ES User Security Setup" WHERE ("User ID" = FIELD ("User ID"),
                                                                "Source Table ID" = FIELD ("Source Table ID")));
            Caption = 'User Security Setup Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "From Setup Company"; Boolean)
        {
            CalcFormula = Lookup ("ES FLADS Copy Setup"."From Setup Company" WHERE ("Table ID" = CONST (14123805),
                                                                                   "Source Table ID" = FIELD ("Source Table ID"),
                                                                                   Code = FIELD ("User ID")));
            Caption = 'From Setup Company';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Copy Setup Exists"; Boolean)
        {
            CalcFormula = Exist ("ES FLADS Copy Setup" WHERE ("Table ID" = CONST (14123805),
                                                             "Source Table ID" = FIELD ("Source Table ID"),
                                                             Code = FIELD ("User ID")));
            Caption = 'Copy Setup Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Direct User Security Setup"; Boolean)
        {
            Caption = 'Direct User Security Setup';
            Editable = false;
        }
        field(28; "By Group User Security Setup"; Boolean)
        {
            Caption = 'By Group User Security Setup';
            Editable = false;
        }
        field(29; "Default User Security Setup"; Boolean)
        {
            Caption = 'Default User Security Setup';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "User ID", "Source Table ID")
        {
            Clustered = true;
        }
        key(Key2; "Source Table ID")
        {
        }
    }

    fieldgroups
    {
    }
}

