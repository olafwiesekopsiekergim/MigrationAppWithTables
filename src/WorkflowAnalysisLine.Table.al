table 5103652 "Workflow Analysis Line"
{
    // WF0082  Workflow Task Tracing.
    // 
    // WF3.01:
    // -------
    // WF0185  New fields "No. of Processes", "No. of Tasks".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 7 "Task Category", 80 "Workflow Category",
    //         111 "Task Category Filter", 112 "Workflow Category Filter" from Code[10] to Code[20].

    Caption = 'Workflow Analysis Line';

    fields
    {
        field(1; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
        }
        field(2; "Workflow ID"; Integer)
        {
            Caption = 'Workflow ID';
            Editable = false;
        }
        field(3; "Workflow Line No."; Integer)
        {
            Caption = 'Workflow Line No.';
        }
        field(4; "Task No."; Code[20])
        {
            Caption = 'Task No.';
        }
        field(6; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(7; "Task Category"; Code[20])
        {
            Caption = 'Task Category';
            Description = 'WF0253';
            TableRelation = "Task Category";
        }
        field(8; "Team Code"; Code[50])
        {
            Caption = 'Team Code';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(9; "From User ID"; Code[50])
        {
            Caption = 'From User ID';
            Description = 'WFNAV7';
            TableRelation = User;
        }
        field(10; "Date Sent"; Date)
        {
            Caption = 'Sending Date';
        }
        field(11; "Time Sent"; Time)
        {
            Caption = 'Sending Time';
        }
        field(13; Subject; Text[250])
        {
            Caption = 'Reference';
        }
        field(20; "Record Position"; Text[200])
        {
            Caption = 'Record Position';
        }
        field(21; Completed; Boolean)
        {
            Caption = 'Completed';
        }
        field(28; "Date Completed"; Date)
        {
            Caption = 'Date Completed';
        }
        field(29; "Time Completed"; Time)
        {
            Caption = 'Time Completed';
        }
        field(31; "Completed by"; Code[50])
        {
            Caption = 'Completed by';
            Description = 'WFNAV7';
            TableRelation = User;
        }
        field(32; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(33; "Start Time"; Time)
        {
            Caption = 'Start Time';
        }
        field(34; "Started by"; Code[50])
        {
            Caption = 'Started by';
            Description = 'WFNAV7';
            TableRelation = User;
        }
        field(36; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(41; "Task Template No."; Code[20])
        {
            Caption = 'Task Template No.';
        }
        field(43; Started; Boolean)
        {
            Caption = 'Started';
        }
        field(45; "Workflow Description"; Text[50])
        {
            CalcFormula = Lookup ("Workflow Header".Description WHERE ("No." = FIELD ("Workflow No.")));
            Caption = 'Workflow Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(52; Cancelled; Boolean)
        {
            Caption = 'Cancelled';
        }
        field(53; "Cancelled by"; Code[50])
        {
            Caption = 'Cancelled by';
            Description = 'WFNAV7';
            Editable = false;
        }
        field(65; "Workflow completed"; Boolean)
        {
            Caption = 'Workflow completed';
        }
        field(67; "Record Position 2"; Text[250])
        {
            Caption = 'Record Position 2';
        }
        field(80; "Workflow Category"; Code[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
            TableRelation = "ccWorkflow Category";
        }
        field(100; Level; Integer)
        {
            Caption = 'Step';
            Editable = false;
        }
        field(101; "No. of Processes"; Integer)
        {
            Caption = 'No. of Processes';
            Description = 'WF0185';
        }
        field(102; "No. of Tasks"; Integer)
        {
            Caption = 'No. of Tasks';
            Description = 'WF0185';
        }
        field(110; "Team Filter"; Code[50])
        {
            Caption = 'Team Filter';
            Description = 'WFNAV7';
            FieldClass = FlowFilter;
            TableRelation = "Workflow Team";
        }
        field(111; "Task Category Filter"; Code[20])
        {
            Caption = 'Task Category Filter';
            Description = 'WF0253';
            FieldClass = FlowFilter;
            TableRelation = "Task Category";
        }
        field(112; "Workflow Category Filter"; Code[20])
        {
            Caption = 'Workflow Category Filter';
            Description = 'WF0253';
            FieldClass = FlowFilter;
            TableRelation = "ccWorkflow Category";
        }
        field(115; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(116; "Due Date Filter"; Date)
        {
            Caption = 'Due Date Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Workflow No.", "Workflow ID", "Workflow Line No.", "Task No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

