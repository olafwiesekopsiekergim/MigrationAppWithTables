table 14123530 "ES Company Group"
{
    Caption = 'Company Group';

    fields
    {
        field(1; "Group ID"; Code[30])
        {
            Caption = 'Group ID';
            NotBlank = true;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; "Login Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Company Group ID" = FIELD ("Group ID")));
            Caption = 'Login Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; Companies; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Company Group Line" WHERE ("Company Group ID" = FIELD ("Group ID")));
            Caption = 'Companies';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(6; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Group ID")
        {
            Clustered = true;
        }
        key(Key2; "Created Date Time")
        {
        }
        key(Key3; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

