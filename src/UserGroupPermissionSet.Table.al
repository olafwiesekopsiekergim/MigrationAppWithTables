table 9003 "User Group Permission Set"
{
    Caption = 'User Group Permission Set';
    DataPerCompany = false;

    fields
    {
        field(1; "User Group Code"; Code[20])
        {
            Caption = 'User Group Code';
            TableRelation = "User Group";
        }
        field(2; "Role ID"; Code[20])
        {
            Caption = 'Role ID';
            Editable = false;
            TableRelation = "Permission Set";
        }
        field(3; "User Group Name"; Text[30])
        {
            CalcFormula = Lookup ("User Group".Name WHERE (Code = FIELD ("User Group Code")));
            Caption = 'User Group Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("Permission Set".Name WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Role Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "App ID"; Guid)
        {
            Caption = 'App ID';
        }
        field(6; Scope; Option)
        {
            Caption = 'Scope';
            OptionCaption = 'System,Tenant';
            OptionMembers = System,Tenant;
        }
    }

    keys
    {
        key(Key1; "User Group Code", "Role ID", Scope, "App ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

