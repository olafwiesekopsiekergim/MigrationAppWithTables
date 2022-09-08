table 14123804 "ES Data Security Code"
{
    Caption = 'Data Security Code';

    fields
    {
        field(1; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            NotBlank = true;
            TableRelation = "ES Source Table Setup";
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(11; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(12; Default; Boolean)
        {
            Caption = 'Default';
        }
        field(21; Objects; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Object" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                 "Data Security Code" = FIELD (Code)));
            Caption = 'Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "User Security Setups"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES User Security Setup" WHERE ("Source Table ID" = FIELD ("Source Table ID"),
                                                                "Data Security Code" = FIELD (Code)));
            Caption = 'User Security Setups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "From Setup Company"; Boolean)
        {
            CalcFormula = Lookup ("ES FLADS Copy Setup"."From Setup Company" WHERE ("Table ID" = CONST (14123804),
                                                                                   "Source Table ID" = FIELD ("Source Table ID"),
                                                                                   Code = FIELD (Code)));
            Caption = 'From Setup Company';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Source Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table ID")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Copy Setup Exists"; Boolean)
        {
            CalcFormula = Exist ("ES FLADS Copy Setup" WHERE ("Table ID" = CONST (14123804),
                                                             "Source Table ID" = FIELD ("Source Table ID"),
                                                             Code = FIELD (Code)));
            Caption = 'Copy Setup Exists';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Table ID", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Source Table ID", "Code", Description, Default, Objects)
        {
        }
    }
}

