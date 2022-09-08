table 14123653 "ES Role Detail"
{
    Caption = 'Permission Set Detail';

    fields
    {
        field(1; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
            TableRelation = "ES Role"."Role ID";
        }
        field(3; "Role Name"; Text[30])
        {
            Caption = 'Permission Set Name';
        }
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5; "File Name"; Text[250])
        {
            Caption = 'File Name';
        }
        field(6; "Exported Date Time"; DateTime)
        {
            Caption = 'Exported Date Time';
            Editable = false;
        }
        field(7; "Imported Date Time"; DateTime)
        {
            Caption = 'Imported Date Time';
            Editable = false;
        }
        field(8; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(9; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(10; "Remove ALL Permissions"; Boolean)
        {
            Caption = 'Remove ALL Permissions';
        }
        field(11; "No Permissions"; Boolean)
        {
            Caption = 'No Permissions';
        }
        field(12; "Role Builder Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Builder Permission" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Builder Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Role Recordings"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Recording" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Recordings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Role Updated Date Time"; DateTime)
        {
            Caption = 'Permission Set Updated Date Time';
            Editable = false;
        }
        field(15; "Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Remove BASIC Permissions"; Boolean)
        {
            Caption = 'Remove BASIC Permissions';
        }
        field(17; "Parent Role ID"; Code[20])
        {
            Caption = 'Parent Permission Set ID';
            TableRelation = "ES Role";
        }
        field(18; "Parent Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role".Name WHERE ("Role ID" = FIELD ("Parent Role ID")));
            Caption = 'Parent Permission Set Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Parent Role Description"; Text[250])
        {
            CalcFormula = Lookup ("ES Role Detail".Description WHERE ("Role ID" = FIELD ("Parent Role ID")));
            Caption = 'Parent Permission Set Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Not in Parent Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Exists in Parent Role" = CONST (false)));
            Caption = 'Not in Parent Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Form/Page Filter"; Text[250])
        {
            Caption = 'Page Filter';
        }
        field(22; "Include Menu Items"; Boolean)
        {
            Caption = 'Include Menu Items';
        }
        field(23; "TableData Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (TableData)));
            Caption = 'TableData Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Role Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Role" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Role Recording Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Role Recording" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Recording Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Only Classic Client Recording"; Boolean)
        {
            Caption = 'Only Classic Client Recording';
        }
        field(27; "Report Filter"; Text[250])
        {
            Caption = 'Report Filter';
        }
        field(28; "Only Form/Page relations"; Boolean)
        {
            Caption = 'Only Page relations';
        }
        field(31; "Role Group ID"; Code[20])
        {
            Caption = 'Permission Group ID';
            TableRelation = "ES Role Group";
        }
        field(32; "Role Group Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role Group".Name WHERE ("Group ID" = FIELD ("Role Group ID")));
            Caption = 'Permission Group Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Object Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = FILTER (Table .. Query)));
            Caption = 'Object Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "System Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = CONST (System)));
            Caption = 'System Permissions';
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

