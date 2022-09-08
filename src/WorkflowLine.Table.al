table 5103601 "Workflow Line"
{
    // WF0034  Confirmation Messages
    // WF0038  New Field: Access Conflict Handling
    // WF0039  Exit Event No. editable (auto complete tasks)
    // WF0104  Task Type Report or (additional type) Function: Disable "Open Workflow Portal" if "Run automatically".
    // WF0118  Show Workflow Line Card
    // WF0119  Entry/Exit Event Description
    // WF0123  New Field "No Multiple Tasks".
    // WF0127  Corrected length of fields "Entry Condition Code" and "Exit Condition Code" from 10 to 20.
    // WF0146  New Field "Create Confirmation E-Mail".
    // WF0152  New Field "Primary Table No." to execute manual Workflows for secondary Tables.
    // 
    // WF3.01:
    // -------
    // WF0185  New key "Task Template No." for new Flowfield in Workflow Task.
    // WF0186  New field "Auto-Complete Team Restriction".
    // WF0192  New function ShowPredecessorsSuccessors is called from workflow card menu Line->Predecessors/Successors.
    // WF0194  Added DropDown Field Group "Line No.,Task Template No.,Task Description,Table Caption,Team Code".
    // WF0221  Changed length of flowfields "Entry Event Description", "Exit Event Description" from Text 30 to 80.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 20 "Table ID", 63 "Team Custom Function Code" from Code[10] to Code[20].
    // 
    // WF3.02:
    // -------
    // WF0229  New Visio Integration: Find Table ID on validate "Task Template No." for Task Template Type=Report.

    Caption = 'Workflow Line';
    DataCaptionFields = "No.", "Line No.";

    fields
    {
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = "Workflow Header"."No.";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Task Template No."; Code[20])
        {
            Caption = 'Task Template No.';
            TableRelation = "Workflow Task"."No." WHERE ("Document Type" = CONST (Model));
        }
        field(7; Predecessors; Boolean)
        {
            CalcFormula = Exist ("Workflow Line Predecessor" WHERE ("Workflow No." = FIELD ("No."),
                                                                   "Workflow Line No." = FIELD ("Line No."),
                                                                   "Line No." = FIELD ("Line No. Filter"),
                                                                   Type = CONST (Predecessor)));
            Caption = 'Predecessor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Line No. Filter"; Integer)
        {
            Caption = 'Line No. Filter';
            FieldClass = FlowFilter;
        }
        field(11; Level; Integer)
        {
            Caption = 'Step';
            Editable = false;
        }
        field(16; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(20; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Entry Condition Code"));
        }
        field(21; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Entry Condition Code"; Code[20])
        {
            Caption = 'Entry Condition Code';
            Description = 'WF0127';
            TableRelation = Condition;
        }
        field(26; "Exit Condition Code"; Code[20])
        {
            Caption = 'Exit Condition Code';
            Description = 'WF0127';
            TableRelation = Condition;
        }
        field(27; "Team Code"; Code[50])
        {
            Caption = 'Team Code';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(28; "Workflow ID Filter"; Integer)
        {
            Caption = 'Workflow ID Filter';
            FieldClass = FlowFilter;
        }
        field(29; "Incomplete Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE ("Document Type" = CONST (Message),
                                                       "Workflow No." = FIELD ("No."),
                                                       "Workflow Line No." = FIELD ("Line No."),
                                                       "Workflow ID" = FIELD ("Workflow ID Filter"),
                                                       Completed = CONST (false)));
            Caption = 'Incomplete Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(31; "Task Description"; Text[100])
        {
            CalcFormula = Lookup ("Workflow Task".Description WHERE ("No." = FIELD ("Task Template No.")));
            Caption = 'Task Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Complete all Tasks"; Boolean)
        {
            Caption = 'All Predecessors Must Be Completed';
        }
        field(33; "Completed Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE ("Document Type" = CONST (Message),
                                                       "Workflow No." = FIELD ("No."),
                                                       "Workflow Line No." = FIELD ("Line No."),
                                                       "Workflow ID" = FIELD ("Workflow ID Filter"),
                                                       Completed = CONST (true)));
            Caption = 'Completed Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "Entry Condition Description"; Text[80])
        {
            CalcFormula = Lookup (Condition.Description WHERE ("No." = FIELD ("Entry Condition Code")));
            Caption = 'Entry Condition Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "Exit Condition Description"; Text[80])
        {
            CalcFormula = Lookup (Condition.Description WHERE ("No." = FIELD ("Exit Condition Code")));
            Caption = 'Exit Condition Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(36; "Manual Workflow Allowed"; Boolean)
        {
            Caption = 'Manual Workflow Allowed';
        }
        field(37; "Table No."; Integer)
        {
            Caption = 'Table No.';
            Editable = false;
        }
        field(38; "Workflow Description"; Text[250])
        {
            CalcFormula = Lookup ("Workflow Header".Description WHERE ("No." = FIELD ("No.")));
            Caption = 'Workflow Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Create SMS"; Boolean)
        {
            Caption = 'Create SMS';
        }
        field(40; "Entry Event No."; Code[20])
        {
            Caption = 'Entry Event No.';
            TableRelation = "ccWorkflow Event";
        }
        field(41; "Exit Event No."; Code[20])
        {
            Caption = 'Exit Event No.';
            Description = 'WF0039';
            TableRelation = "ccWorkflow Event";
        }
        field(42; "Delivery Date Formula"; DateFormula)
        {
            Caption = 'Delivery Date Formula';
        }
        field(43; "Do not notify"; Boolean)
        {
            Caption = 'Do not notify';
        }
        field(44; "Open Workflow Portal"; Boolean)
        {
            Caption = 'Open Workflow Portal';
        }
        field(45; "Confirmation (Task Initiator)"; Boolean)
        {
            Caption = 'Confirmation (Task Initiator)';
            Description = 'WF0034';
        }
        field(46; "Create E-Mail"; Boolean)
        {
            Caption = 'Create E-Mail';
        }
        field(47; "Team Field No."; Integer)
        {
            Caption = 'Team Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(48; "Lock Record"; Boolean)
        {
            Caption = 'Lock Record';
        }
        field(49; "Password required"; Boolean)
        {
            Caption = 'Password required';
        }
        field(50; "Reverse Entry Condition"; Boolean)
        {
            Caption = 'Reverse Entry Condition';
        }
        field(51; "Approval Team"; Code[50])
        {
            Caption = 'Approval Team';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(52; Successors; Boolean)
        {
            CalcFormula = Exist ("Workflow Line Predecessor" WHERE ("Workflow No." = FIELD ("No."),
                                                                   "Workflow Line No." = FIELD ("Line No."),
                                                                   "Line No." = FIELD ("Line No. Filter"),
                                                                   Type = CONST (Successor)));
            Caption = 'Successors';
            Editable = false;
            FieldClass = FlowField;
        }
        field(53; "Strict Exit Condition"; Boolean)
        {
            Caption = 'Strict Exit Condition';
            InitValue = true;
        }
        field(54; "Confirm Exit Condition"; Boolean)
        {
            Caption = 'Confirm Exit Condition';
            InitValue = true;
        }
        field(55; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(56; "Confirmation Workflow Team"; Code[50])
        {
            Caption = 'Confirmation Workflow Team';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(57; Approval; Boolean)
        {
            Caption = 'Approval';
        }
        field(58; "Periodic Events/Multiple Tasks"; Boolean)
        {
            Caption = 'Periodic Events/Multiple Tasks';
        }
        field(59; "No Multiple Tasks"; Boolean)
        {
            Caption = 'No Multiple Tasks';
            Description = 'WF0123';
        }
        field(60; "Attach Documents"; Boolean)
        {
            Caption = 'Attach Documents';
        }
        field(61; "Document Category Filter"; Code[250])
        {
            Caption = 'Document Category Filter';
            TableRelation = "Document Category";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(62; "Team Selection"; Option)
        {
            Caption = 'Team Selection';
            OptionCaption = 'Static,Initiator,Escalation,Custom Function,Field';
            OptionMembers = Static,Initiator,Escalation,"Custom Function","Field";
        }
        field(63; "Team Custom Function Code"; Code[20])
        {
            Caption = 'Team Custom Function Code';
            Description = 'WF0253';
            TableRelation = "Custom Function".Code WHERE (Type = CONST (Team));
        }
        field(64; "Escalation Level"; Integer)
        {
            Caption = 'Escalation Level';
            InitValue = 1;
            MinValue = 1;
        }
        field(65; "Access Conflict Handling"; Option)
        {
            Caption = 'Access Conflict Handling';
            Description = 'WF0038';
            OptionCaption = 'Message,Error,None';
            OptionMembers = Message,Error,"None";
        }
        field(66; "Entry Event Description"; Text[80])
        {
            CalcFormula = Lookup ("ccWorkflow Event".Description WHERE ("No." = FIELD ("Entry Event No.")));
            Caption = 'Entry Event Description';
            Description = 'WF0119,WF0221';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Exit Event Description"; Text[80])
        {
            CalcFormula = Lookup ("ccWorkflow Event".Description WHERE ("No." = FIELD ("Exit Event No.")));
            Caption = 'Exit Event Description';
            Description = 'WF0119,WF0221';
            Editable = false;
            FieldClass = FlowField;
        }
        field(68; "Confirmation (WF Initiator)"; Boolean)
        {
            Caption = 'Confirmation (Workflow Initiator)';
            Description = 'WF0034';
        }
        field(69; "Create Confirmation E-Mail"; Boolean)
        {
            Caption = 'Create Confirmation E-Mail';
            Description = 'WF0146';
        }
        field(70; "Primary Table No."; Integer)
        {
            Caption = 'Primary Table No.';
            Description = 'WF0152';
        }
        field(71; "Auto-Complete Team Restriction"; Boolean)
        {
            Caption = 'Auto-Complete Team Restriction';
            Description = 'WF0186';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Status, "Entry Event No.")
        {
        }
        key(Key3; "Entry Event No.")
        {
        }
        key(Key4; "Exit Event No.")
        {
        }
        key(Key5; Status, "Exit Event No.", "Exit Condition Code")
        {
        }
        key(Key6; "Entry Condition Code")
        {
        }
        key(Key7; "Exit Condition Code")
        {
        }
        key(Key8; "Task Template No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Line No.", "Task Template No.", "Task Description", "Table Caption", "Team Code")
        {
        }
    }
}

