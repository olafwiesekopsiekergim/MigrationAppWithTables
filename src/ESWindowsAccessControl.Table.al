table 14123504 "ES Windows Access Control"
{
    Caption = 'User Access Control';

    fields
    {
        field(1; "Login SID"; Guid)
        {
            Caption = 'User Security ID';
            NotBlank = true;
            TableRelation = "ES Windows Login".SID;
        }
        field(2; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
            TableRelation = "ES Role"."Role ID";
        }
        field(3; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = "ES Company".Name;
        }
        field(5; "Login ID"; Text[131])
        {
            CalcFormula = Lookup ("ES Windows Login".ID WHERE (SID = FIELD ("Login SID")));
            Caption = 'Login ID';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role".Name WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1002; "User ID"; Code[50])
        {
            CalcFormula = Lookup ("ES Windows Login"."User ID" WHERE (SID = FIELD ("Login SID")));
            Caption = 'User ID';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Windows Login Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Login" WHERE (SID = FIELD ("Login SID")));
            Caption = 'User Exists';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Login SID", "Role ID", "Company Name")
        {
            Clustered = true;
        }
        key(Key2; "Role ID")
        {
        }
        key(Key3; "Company Name", "Role ID")
        {
        }
    }

    fieldgroups
    {
    }
}

