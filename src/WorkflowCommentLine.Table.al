table 5103634 "Workflow Comment Line"
{
    // WF0082  New fields for Workflow Task Tracing.
    // WF0134  Added Table Name option "Document Connection".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Workflow Comment Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Condition,Task,Workflow Header,Workflow Event,Workflow ID,Approval Condition,Master Document,Document Connection';
            OptionMembers = Condition,Task,"Workflow Header","Workflow Event","Workflow ID","Approval Condition","Master Document","Document Connection";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
            Editable = false;
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(7; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
            Editable = false;
        }
        field(9; "Time Modified"; Time)
        {
            Caption = 'Time';
            Editable = false;
        }
        field(10; "Task No."; Code[20])
        {
            Caption = 'Task No.';
            Description = 'WF0082';
            Editable = false;
        }
        field(11; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
            Description = 'WF0082';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

