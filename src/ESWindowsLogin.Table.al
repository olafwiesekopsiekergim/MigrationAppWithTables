table 14123503 "ES Windows Login"
{
    Caption = 'User';

    fields
    {
        field(1; SID; Guid)
        {
            Caption = 'User Security ID';
            NotBlank = true;
        }
        field(2; ID; Text[132])
        {
            Caption = 'ID';
        }
        field(3; "User Name"; Text[208])
        {
            Caption = 'User Name';
        }
        field(1002; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(1003; "Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Windows Access Control" WHERE ("Login SID" = FIELD (SID)));
            Caption = 'User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1004; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE (Type = CONST ("Windows Login"),
                                                               Code = FIELD ("User ID")));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; SID)
        {
            Clustered = true;
        }
        key(Key2; "User ID")
        {
        }
    }

    fieldgroups
    {
    }
}

