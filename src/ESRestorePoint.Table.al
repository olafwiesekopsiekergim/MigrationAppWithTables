table 14123523 "ES Restore Point"
{
    Caption = 'Restore Point';


    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(3; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(4; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
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
        field(8; "Live Restore Point"; Boolean)
        {
            Caption = 'Live Restore Point';
            Editable = false;
        }
        field(9; "Easy Security Restore Point"; Boolean)
        {
            Caption = 'Easy Security Restore Point';
            Editable = false;
        }
        field(10; "Total Records"; Integer)
        {
            Caption = 'Total Records';
            Editable = false;
        }
        field(12; "Windows Logins"; Integer)
        {
            CalcFormula = Count("ES Restore Point Windows Login" WHERE("Version Code" = FIELD(Code)));
            Caption = 'Users';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; Roles; Integer)
        {
            CalcFormula = Count("ES Restore Point Role" WHERE("Version Code" = FIELD(Code)));
            Caption = 'Permission Sets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; Companies; Integer)
        {
            CalcFormula = Count("ES Restore Point Company" WHERE("Version Code" = FIELD(Code)));
            Caption = 'Companies';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; Objects; Integer)
        {
            CalcFormula = Count("ES Restore Point Object" WHERE("Version Code" = FIELD(Code)));
            Caption = 'Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Object Informations"; Integer)
        {
            CalcFormula = Count("ES Restore Point Object Info." WHERE("Version Code" = FIELD(Code)));
            Caption = 'Object Informations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "File Name"; Text[250])
        {
            Caption = 'File Name';
        }
        field(24; "Create Windows Logins"; Boolean)
        {
            Caption = 'Create Users';
        }
        field(25; "Create Windows Acc. Ctrls."; Boolean)
        {
            Caption = 'Create User Access Controls';
        }
        field(26; "Create Roles"; Boolean)
        {
            Caption = 'Create Permission Sets';
        }
        field(27; "Create Role Permissions"; Boolean)
        {
            Caption = 'Create Permissions';
        }
        field(28; "Create Companies"; Boolean)
        {
            Caption = 'Create Companies';
        }
        field(29; "Create Objects"; Boolean)
        {
            Caption = 'Create Objects';
        }
        field(30; "Create Object Informations"; Boolean)
        {
            Caption = 'Create Object Informations';
        }
        field(31; "Write to Live"; Boolean)
        {
            Caption = 'Write to Live';
        }
        field(32; "Write to Easy Security"; Boolean)
        {
            Caption = 'Write to Easy Security';
        }
        field(33; "Write By User"; Code[50])
        {
            Caption = 'Write By User';
            Editable = false;
        }
        field(34; "Write Start Date Time"; DateTime)
        {
            Caption = 'Write Start Date Time';
            Editable = false;
        }
        field(35; "Write End Date Time"; DateTime)
        {
            Caption = 'Write End Date Time';
            Editable = false;
        }
        field(36; "Imported Restore Point"; Boolean)
        {
            Caption = 'Imported Restore Point';
            Editable = false;
        }
        field(37; Locked; Boolean)
        {
            Caption = 'Locked';
        }
    }

    keys
    {
        key(Key1; "Code")
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
        fieldgroup(DropDown; "Code", Description, "Live Restore Point", "Easy Security Restore Point", "Created Date Time")
        {
        }
    }
}

