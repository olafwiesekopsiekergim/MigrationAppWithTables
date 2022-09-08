table 14123517 "ES Restore Point Company"
{
    Caption = 'Restore Point Company';

    fields
    {
        field(1; Name; Text[30])
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
            CalcFormula = Exist (Company WHERE (Name = FIELD (Name)));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Company" WHERE (Name = FIELD (Name)));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

