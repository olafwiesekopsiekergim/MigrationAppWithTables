table 14123505 "ES Role"
{
    Caption = 'Permission Set';
    DataCaptionFields = "Role ID", Name;

    fields
    {
        field(1; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(1002; "TableData Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (TableData)));
            Caption = 'TableData Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Table Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (Table)));
            Caption = 'Table Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1005; "Report Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (Report)));
            Caption = 'Report Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1007; "Codeunit Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (Codeunit)));
            Caption = 'Codeunit Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1008; "XMLPort Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (XMLport)));
            Caption = 'XMLPort Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1009; "MenuSuite Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (MenuSuite)));
            Caption = 'MenuSuite Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1010; "Page Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (Page)));
            Caption = 'Page Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1011; "System Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (System)));
            Caption = 'System Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1012; "Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1014; "Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Windows Access Control" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1015; "Login Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Role Type" = CONST (Role),
                                                                 "Role ID" = FIELD ("Role ID")));
            Caption = 'Login Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1016; "Role Groups"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Group Line" WHERE ("Role Type" = CONST (Role),
                                                            "Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Groups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1017; "Role Detail Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Role Detail" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Detail Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1018; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(1019; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(1020; "Role Builder Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Builder Permission" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Builder Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1021; "Role Recordings"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Recording" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Recordings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1022; "No Permissions"; Boolean)
        {
            CalcFormula = Lookup ("ES Role Detail"."No Permissions" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'No Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1023; "Remove ALL Permissions"; Boolean)
        {
            CalcFormula = Lookup ("ES Role Detail"."Remove ALL Permissions" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Remove ALL Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1024; "Remove BASIC Permissions"; Boolean)
        {
            CalcFormula = Lookup ("ES Role Detail"."Remove BASIC Permissions" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Remove BASIC Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1025; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE (Type = CONST (Role),
                                                               Code = FIELD ("Role ID")));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1026; "Query Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (Query)));
            Caption = 'Query Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1027; "Parent Role ID"; Code[20])
        {
            CalcFormula = Lookup ("ES Role Detail"."Parent Role ID" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Parent Permission Set ID';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1028; "Not in Parent Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Exists in Parent Role" = CONST (false)));
            Caption = 'Not in Parent Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1029; "Object Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = FILTER (Table .. Query)));
            Caption = 'Object Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Role ID")
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

