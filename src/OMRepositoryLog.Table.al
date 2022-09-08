table 11102086 "OM - Repository Log"
{
    Caption = 'Repository Log';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "User Id"; Code[50])
        {
            Caption = 'User Id';
        }
        field(3; "Log Date"; Date)
        {
            Caption = 'Log Date';
        }
        field(4; "Log Time"; Time)
        {
            Caption = 'Log Time';
        }
        field(5; "Action Type"; Option)
        {
            Caption = 'Action Type';
            OptionCaption = 'Check-out,Check-in,Update Project,Update Transport,Action';
            OptionMembers = "Check-out","Check-in","Update Project","Update Transport","Action";
        }
        field(6; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(7; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
        }
        field(8; "Object Date"; Date)
        {
            Caption = 'Object Date';
        }
        field(9; "Object Time"; Time)
        {
            Caption = 'Object Time';
        }
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(11; BLOB; BLOB)
        {
            Caption = 'BLOB';
        }
        field(12; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,In Progress,Processed,Error';
            OptionMembers = New,"In Progress",Processed,Error;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "No.")
        {
        }
        key(Key3; "Object Type", "Object No.")
        {
        }
    }

    fieldgroups
    {
    }
}

