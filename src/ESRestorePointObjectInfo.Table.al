table 14123519 "ES Restore Point Object Info."
{
    Caption = 'Restore Point Object Information';

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(4; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
        }
        field(20; "Object Caption"; Text[249])
        {
            Caption = 'Object Caption';
        }
        field(1001; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            NotBlank = true;
            TableRelation = "ES Restore Point".Code;
        }
        field(1002; "Exists in Live"; Boolean)
        {
            CalcFormula = Exist (AllObjWithCaption WHERE ("Object Type" = FIELD ("Object Type"),
                                                         "Object ID" = FIELD ("Object ID")));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Object Information" WHERE ("Object Type" = FIELD ("Object Type"),
                                                               "Object ID" = FIELD ("Object ID")));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", "Object Type", "Object ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

