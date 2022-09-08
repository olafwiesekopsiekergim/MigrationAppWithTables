table 14123538 "ES Windows Group Member"
{
    Caption = 'Windows Group Member';

    fields
    {
        field(1; "Group GUID"; Text[38])
        {
            Caption = 'Group GUID';
            NotBlank = true;
        }
        field(2; "Member GUID"; Text[38])
        {
            Caption = 'Member GUID';
            NotBlank = true;
        }
        field(3; "Group ID"; Text[64])
        {
            Caption = 'Group ID';
        }
        field(4; "Member ID"; Text[64])
        {
            Caption = 'Member ID';
        }
        field(1001; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(1002; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(1003; "Group Exists as Windows Login"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Login" WHERE (SID = FIELD ("Group SID")));
            Caption = 'Group Exists as User';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1004; "Member Exists as Windows Login"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Login" WHERE (SID = FIELD ("Member SID")));
            Caption = 'Member Exists as User';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1005; "Group SID"; Guid)
        {
            Caption = 'Group User Security ID';
        }
        field(1006; "Member SID"; Guid)
        {
            Caption = 'Member User Security ID';
        }
        field(1008; "Group Login User ID"; Code[50])
        {
            Caption = 'Group Login User ID';
            NotBlank = true;
            TableRelation = "ES Login"."User ID" WHERE (Type = CONST (Windows));
        }
        field(1010; "Member Login User ID"; Code[50])
        {
            Caption = 'Member Login User ID';
            NotBlank = true;
            TableRelation = "ES Login"."User ID" WHERE (Type = CONST (Windows));
        }
    }

    keys
    {
        key(Key1; "Group GUID", "Member GUID")
        {
            Clustered = true;
        }
        key(Key2; "Member GUID")
        {
        }
        key(Key3; "Created Date Time")
        {
        }
        key(Key4; "Group SID")
        {
        }
        key(Key5; "Member SID")
        {
        }
        key(Key6; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

