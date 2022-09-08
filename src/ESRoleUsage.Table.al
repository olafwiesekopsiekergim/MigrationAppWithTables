table 14123535 "ES Role Usage"
{
    Caption = 'Permission Set Usage';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role".Name WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Name';
            FieldClass = FlowField;
        }
        field(5; "Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Windows Access Control" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; Roles; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Sets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "RestPnt Windows Access Ctrls."; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Rest Point Windows Acc Ctrl" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Restore Point User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Restore Point Roles"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Restore Point Role" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Restore Point Permission Sets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Role Group Lines"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Group Line" WHERE ("Role Type" = CONST (Role),
                                                            "Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Group Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Login Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Role Type" = CONST (Role),
                                                                 "Role ID" = FIELD ("Role ID")));
            Caption = 'Login Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Role Details"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Detail" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Details';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Live Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Access Control" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Live User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Live Roles"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Permission Set" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Live Permission Sets';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

