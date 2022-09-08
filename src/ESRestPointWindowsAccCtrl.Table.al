table 14123514 "ES Rest Point Windows Acc Ctrl"
{
    Caption = 'Restore Point User Access Control';

    fields
    {
        field(1; "Login SID"; Guid)
        {
            Caption = 'User Security ID';
            TableRelation = "ES Restore Point Windows Login".SID;
        }
        field(2; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            TableRelation = "ES Restore Point Role"."Role ID" WHERE ("Version Code" = FIELD ("Version Code"));
        }
        field(3; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = "ES Restore Point Company".Name WHERE ("Version Code" = FIELD ("Version Code"));
        }
        field(5; "Login ID"; Text[131])
        {
            CalcFormula = Lookup ("ES Restore Point Windows Login".ID WHERE (SID = FIELD ("Login SID"),
                                                                            "Version Code" = FIELD ("Version Code")));
            Caption = 'Login ID';
            FieldClass = FlowField;
        }
        field(7; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Restore Point Role"."Role Name" WHERE ("Role ID" = FIELD ("Role ID"),
                                                                            "Version Code" = FIELD ("Version Code")));
            Caption = 'Permission Set Name';
            FieldClass = FlowField;
        }
        field(1001; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            NotBlank = true;
            TableRelation = "ES Restore Point".Code;
        }
        field(1002; "Exists in Live"; Boolean)
        {
            CalcFormula = Exist ("Access Control" WHERE ("User Security ID" = FIELD ("Login SID"),
                                                        "Role ID" = FIELD ("Role ID"),
                                                        "Company Name" = FIELD ("Company Name")));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Access Control" WHERE ("Login SID" = FIELD ("Login SID"),
                                                                   "Role ID" = FIELD ("Role ID"),
                                                                   "Company Name" = FIELD ("Company Name")));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", "Login SID", "Role ID", "Company Name")
        {
            Clustered = true;
        }
        key(Key2; "Version Code", "Role ID")
        {
        }
    }

    fieldgroups
    {
    }
}

