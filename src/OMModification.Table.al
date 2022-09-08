table 11102042 "OM - Modification"
{
    Caption = 'Modification';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(3; "Object No."; Integer)
        {
            Caption = 'Object No.';
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(4; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
        }
        field(5; "Object Date"; Date)
        {
            Caption = 'Object Date';
        }
        field(6; "Object Time"; Time)
        {
            Caption = 'Object Time';
        }
        field(7; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Inserted,Assigned,Ignored';
            OptionMembers = Inserted,Assigned,Ignored;
        }
        field(8; "Inserted By"; Code[50])
        {
            Caption = 'Inserted By';
        }
        field(9; "Insert Date"; Date)
        {
            Caption = 'Insert Date';
        }
        field(10; "Insert Time"; Time)
        {
            Caption = 'Insert Time';
        }
        field(11; "Assigned to Project No."; Code[20])
        {
            Caption = 'Assigned to Project No.';
            TableRelation = "OM - Project";
        }
        field(12; "Project Description"; Text[100])
        {
            CalcFormula = Lookup ("OM - Project".Description WHERE ("No." = FIELD ("Assigned to Project No.")));
            Caption = 'Project Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Assigned By"; Code[50])
        {
            Caption = 'Assigned By';
        }
        field(14; "Assign Date"; Date)
        {
            Caption = 'Assign Date';
        }
        field(15; "Assign Time"; Time)
        {
            Caption = 'Assign Time';
        }
        field(16; "Auto Assigned"; Boolean)
        {
            Caption = 'Auto Assigned';
        }
        field(17; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
        field(18; "Object Date Time"; DateTime)
        {
            Caption = 'Object Date Time';
        }
        field(19; "Locked By"; Code[50])
        {
            Caption = 'Locked By';
        }
        field(20; "Traced By SQL"; Boolean)
        {
            Caption = 'Traced By SQL';
        }
        field(21; "SQL Trigger"; Option)
        {
            Caption = 'Trigger';
            OptionCaption = ' ,Insert,Modify,Delete,Rename';
            OptionMembers = " ",Insert,Modify,Delete,Rename;
        }
        field(22; "SQL Status"; Option)
        {
            Caption = 'SQL Status';
            OptionCaption = ' ,Inserted,Ready to Assign,Processed';
            OptionMembers = " ",Inserted,"Ready to Assign",Processed;
        }
        field(23; "Host Name"; Text[50])
        {
            Caption = 'Host Name';
        }
        field(24; "System User"; Text[132])
        {
            Caption = 'System User';
        }
        field(25; "Token No."; Integer)
        {
            Caption = 'Token No.';
        }
        field(26; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Project No. Filter"; Code[20])
        {
            Caption = 'Project No. Filter';
            FieldClass = FlowFilter;
            TableRelation = "OM - Project";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object No.", "Insert Date", "Insert Time")
        {
        }
        key(Key3; Status, "Object Type", "Object No.", "Insert Date", "Insert Time")
        {
        }
        key(Key4; "Assigned to Project No.")
        {
        }
        key(Key5; "Assigned to Project No.", "Object Type", "Object No.", "Object Date", "Object Time")
        {
        }
        key(Key6; "Transport No.", "Object Type", "Object No.", "Object Date", "Object Time")
        {
        }
        key(Key7; "SQL Status", "Inserted By")
        {
        }
        key(Key8; "Token No.")
        {
        }
        key(Key9; "Object Type", "Object No.", "Entry No.")
        {
        }
        key(Key10; Status, "Inserted By")
        {
        }
    }

    fieldgroups
    {
    }
}

