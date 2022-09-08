table 14123651 "ES Recording"
{
    Caption = 'Recording';
    Permissions = TableData "ES Security Setup" = rm;

    fields
    {
        field(1; "Code"; Code[30])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(3; "Recorded by User"; Code[50])
        {
            Caption = 'Recorded by User';
            Editable = false;
        }
        field(4; "Start Date Time"; DateTime)
        {
            Caption = 'Start Date Time';
            Editable = false;
        }
        field(6; "End Date Time"; DateTime)
        {
            Caption = 'End Date Time';
            Editable = false;
        }
        field(8; "File Name"; Text[250])
        {
            Caption = 'File Name';
        }
        field(9; "Exported Date Time"; DateTime)
        {
            Caption = 'Exported Date Time';
            Editable = false;
        }
        field(10; "Imported Date Time"; DateTime)
        {
            Caption = 'Imported Date Time';
            Editable = false;
        }
        field(11; "Extend Insert Permissions"; Boolean)
        {
            Caption = 'Extend Insert Permissions';
        }
        field(12; "Add Related Permissions"; Boolean)
        {
            Caption = 'Add Related Permissions';
        }
        field(13; "Role for Both Clients"; Boolean)
        {
            Caption = 'Permission Set for Both Clients';
        }
        field(14; "Recording Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Recording Permission" WHERE ("Recording Code" = FIELD (Code),
                                                                 "Object Type" = FIELD ("Object Type Filter")));
            Caption = 'Recording Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE (Type = CONST (Recording),
                                                               Code = FIELD (Code)));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Role Recordings"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Recording" WHERE ("Recording Code" = FIELD (Code)));
            Caption = 'Permission Set Recordings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "SQL Profiler Trace File Name"; Text[250])
        {
            Caption = 'SQL Profiler Trace File Name';
        }
        field(18; "Object Type Filter"; Option)
        {
            Caption = 'Object Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'TableData,Table,Form,Report,Dataport,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",Form,"Report",Dataport,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Start Date Time")
        {
        }
        key(Key3; "Recorded by User", "Start Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

