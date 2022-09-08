table 14123513 "ES Restore Point Windows Login"
{
    Caption = 'Restore Point User';

    fields
    {
        field(1; SID; Guid)
        {
            Caption = 'User Security ID';
        }
        field(2; ID; Text[132])
        {
            Caption = 'ID';
        }
        field(3; Name; Text[208])
        {
            Caption = 'Name';
        }
        field(1001; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            NotBlank = true;
            TableRelation = "ES Restore Point".Code;
        }
        field(1002; "Exists in Live"; Boolean)
        {
            CalcFormula = Exist ("SID - Account ID" WHERE (SID = FIELD (SID)));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Login" WHERE (SID = FIELD (SID)));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", SID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

