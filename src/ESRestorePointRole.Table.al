table 14123515 "ES Restore Point Role"
{
    Caption = 'Restore Point Permission Set';

    fields
    {
        field(1; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
        }
        field(2; "Role Name"; Text[30])
        {
            Caption = 'Permission Set Name';
        }
        field(1001; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            NotBlank = true;
            TableRelation = "ES Restore Point".Code;
        }
        field(1002; "Exists in Live"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Role" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", "Role ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

