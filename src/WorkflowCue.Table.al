table 5103655 "Workflow Cue"
{
    // WF0169  New table for NAV 2009 SP1 RTC Role Center.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Workflow Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "New Workflow Tasks"; Integer)
        {
            CalcFormula = Count ("User Workflow Tasks" WHERE ("User ID" = FIELD (FILTER ("User ID Filter")),
                                                             "Delivery Date" = FIELD (FILTER ("Delivery Date Filter")),
                                                             "Workflow Task No." = FIELD (FILTER ("Task No. Filter"))));
            Caption = 'New Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Total Open Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE ("Document Type" = CONST (Message),
                                                       Completed = CONST (false),
                                                       "Team Code" = FIELD (FILTER ("Team Filter")),
                                                       "Delivery Date" = FIELD (FILTER ("Delivery Date Filter"))));
            Caption = 'Open Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Due Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE ("Document Type" = CONST (Message),
                                                       Completed = CONST (false),
                                                       "Team Code" = FIELD (FILTER ("Team Filter")),
                                                       "Delivery Date" = FIELD (FILTER ("Delivery Date Filter")),
                                                       "Due Date" = FIELD (FILTER ("Due Date Filter"))));
            Caption = 'Due Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Overdue Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE ("Document Type" = CONST (Message),
                                                       Completed = CONST (false),
                                                       "Team Code" = FIELD (FILTER ("Team Filter")),
                                                       "Delivery Date" = FIELD (FILTER ("Delivery Date Filter")),
                                                       "Due Date" = FIELD (FILTER ("Overdue Date Filter"))));
            Caption = 'Overdue Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Unread Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE ("Document Type" = CONST (Message),
                                                       Completed = CONST (false),
                                                       "Team Code" = FIELD (FILTER ("Team Filter")),
                                                       "Delivery Date" = FIELD (FILTER ("Delivery Date Filter")),
                                                       Read = CONST (false)));
            Caption = 'Unread Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            Description = 'WFNAV7';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(11; "Delivery Date Filter"; Date)
        {
            Caption = 'Delivery Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(12; "Due Date Filter"; Date)
        {
            Caption = 'Due Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(13; "Overdue Date Filter"; Date)
        {
            Caption = 'Overdue Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(14; "Team Filter"; Code[50])
        {
            Caption = 'Team Filter';
            Description = 'WFNAV7';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(15; "Task No. Filter"; Code[20])
        {
            Caption = 'Task No. Filter';
            Editable = false;
            FieldClass = FlowFilter;
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

