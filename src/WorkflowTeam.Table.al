table 5103619 "Workflow Team"
{
    // WF0120  New field Workflow Filter for Workflow Team Analysis.
    // WF0033  New Key: Reports to
    // 
    // WF3.01:
    // -------
    // WF0185  New Flowfield "Used in Workflows".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 7 "Task Category Filter", 21 "Workflow Category" from Code[10] to Code[20].

    Caption = 'Workflow Team';

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
            Description = 'WFNAV7';
            NotBlank = true;
        }
        field(2; Name; Text[80])
        {
            Caption = 'Name';
            Description = 'WFNAV7';
        }
        field(4; "Single User"; Boolean)
        {
            Caption = 'Single User';
        }
        field(5; "Number of Members"; Integer)
        {
            CalcFormula = Count ("Workflow Team User" WHERE ("Workflow Team Code" = FIELD (Code)));
            Caption = 'Number of Members';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Open Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE (Completed = CONST (false),
                                                       "Team Code" = FIELD (Code),
                                                       "Document Type" = CONST (Message),
                                                       "Workflow No." = FIELD ("Workflow Filter"),
                                                       "Task Category" = FIELD ("Task Category Filter")));
            Caption = 'Open Tasks';
            Description = 'WF0120';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Task Category Filter"; Code[20])
        {
            Caption = 'Task Category Filter';
            Description = 'WF0253';
            FieldClass = FlowFilter;
            TableRelation = "Task Category";
        }
        field(8; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Due Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE (Completed = CONST (false),
                                                       "Team Code" = FIELD (Code),
                                                       "Document Type" = CONST (Message),
                                                       "Due Date" = FIELD ("Date Filter"),
                                                       "Workflow No." = FIELD ("Workflow Filter")));
            Caption = 'Due Tasks';
            Description = 'WF0120';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Completed Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE (Completed = CONST (true),
                                                       "Team Code" = FIELD (Code),
                                                       "Document Type" = CONST (Message),
                                                       "Date Completed" = FIELD ("Date Filter"),
                                                       "Workflow No." = FIELD ("Workflow Filter")));
            Caption = 'Completed Tasks';
            Description = 'WF0120';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Due Date Filter"; Date)
        {
            Caption = 'Due Date Filter';
            FieldClass = FlowFilter;
        }
        field(12; "Overdue Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE (Completed = CONST (false),
                                                       "Team Code" = FIELD (Code),
                                                       "Document Type" = CONST (Message),
                                                       "Due Date" = FIELD ("Due Date Filter"),
                                                       "Workflow No." = FIELD ("Workflow Filter")));
            Caption = 'Overdue Tasks';
            Description = 'WF0120';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Workflow Filter"; Code[20])
        {
            Caption = 'Workflow Filter';
            Description = 'WF0120';
            FieldClass = FlowFilter;
            TableRelation = "Workflow Header";
        }
        field(14; "Access to all Teams"; Boolean)
        {
            Caption = 'Access to all Teams';
        }
        field(15; Value; Integer)
        {
            Caption = 'Value';
        }
        field(16; "Sequence No."; Integer)
        {
            Caption = 'Sequence No.';
        }
        field(17; "Reports to"; Code[50])
        {
            Caption = 'Reports to';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(18; "Hierarchy Level"; Integer)
        {
            Caption = 'Hierarchy Level';
        }
        field(20; Indirect; Boolean)
        {
            Caption = 'Indirect';
        }
        field(21; "Workflow Category"; Code[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
            TableRelation = "ccWorkflow Category";
        }
        field(22; "Used in Workflows"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Team Code" = FIELD (Code)));
            Caption = 'Used in Workflows';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Sequence No.")
        {
        }
        key(Key3; "Hierarchy Level")
        {
        }
        key(Key4; "Reports to")
        {
        }
    }

    fieldgroups
    {
    }
}

