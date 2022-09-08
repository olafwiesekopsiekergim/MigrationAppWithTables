table 5103606 "Workflow Task"
{
    // WF0033  New Key: Document Type,Team Code,Due Date
    // WF0034  Confirmation messages
    // WF0039  New Field "Exit Event No." for auto completion of tasks
    //         New Key: Completed,Team Code,Exit Event No.
    // WF0057  New Key "From User ID" for Sent Tasks.
    // WF0092  New handling for work instructions.
    // WF0093  Added work instructun source type URL.
    // WF0104  Additional Task Type Function executable on NAS. New Field "Task Function Code".
    // WF0105  Insert Fields also for Type Report.
    // WF0107  Enquiry functionality.
    // WF0112  Send created Message Buffer after task creation.
    // WF0130  Table Locking Issue with Transaction No.
    // WF0131  Approval Teams, Direct Approval and Approval Code.
    // WF0146  New Field "Create Confirmation E-Mail".
    // WF0155  New Fields "Task Completion Confirmation", "Completed Task No.".
    // WF0157  TestTableRelation=No in UserID fields (9, 31, 34).
    // 
    // WF3.01:
    // -------
    // WF0185  New Flowfield "Used in Workflows".
    // WF0187  Delete Task Log on deletion.
    // WF0194  Added DropDown Field Group "No.,Description,Task Category,Team Code,Type,Object Name".
    // WF0205  Job Queue Integration: New field "Reminder to No.".
    // WF0217  New Flowfield for Field Security check on Workflow Task Field Protection
    //         only if Task Template is used in a certified Workflow.
    // 
    // WF3.01.01:
    // ----------
    // WF0232  Removed Flowfield 92 "Used in Certified Workflows" (WF0217).
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 3 "Task Category", 42 "Table ID", 46 "Task Priority Code",
    //         74 "Task Function Code" from Code[10] to Code[20].
    // 
    // WF3.02.01:
    // ----------
    // WF0281  Corrected Variable LookUpUserID from Code[20] to Code[50] in fields "From User ID",
    //         "Completed by", "Started by", "Cancelled by".
    // WF0282  Changed Length in field 70 "Approval Code" from Code[20] to Code[50].
    // 
    // WF3.02.02:
    // ----------
    // WF0292  Open work instruction on Web Client with Hyperlink.

    Caption = 'Workflow Task';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Task Category"; Code[20])
        {
            Caption = 'Task Category';
            Description = 'WF0253';
            TableRelation = "Task Category";
        }
        field(5; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Model,Message';
            OptionMembers = Model,Message;
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
            //This property is currently not supported
            //TestTableRelation = false;
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
        field(17; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
        }
        field(18; "Workflow ID"; Integer)
        {
            Caption = 'Workflow ID';
            Editable = false;
        }
        field(20; "Record Position"; Text[200])
        {
            Caption = 'Record Position';
        }
        field(21; Completed; Boolean)
        {
            Caption = 'Completed';
        }
        field(22; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(23; Type; Option)
        {
            Caption = 'Type';
            Description = 'WF0104,WFNAV7';
            OptionCaption = ' ,,,Report,,Function,,,Page';
            OptionMembers = " ",,Form,"Report",,"Task Function",,,"Page";
        }
        field(24; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            TableRelation = Object.ID WHERE (Type = FIELD (Type));
        }
        field(25; "Object Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD (Type),
                                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Workflow Line No."; Integer)
        {
            Caption = 'Workflow Line No.';
        }
        field(28; "Date Completed"; Date)
        {
            Caption = 'Date Completed';
        }
        field(29; "Time Completed"; Time)
        {
            Caption = 'Time Completed';
        }
        field(30; Read; Boolean)
        {
            CalcFormula = Exist ("Workflow Task Tracking" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                "No." = FIELD ("No."),
                                                                "User ID" = FIELD ("User ID Filter"),
                                                                Read = CONST (true)));
            Caption = 'Read';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Completed by"; Code[50])
        {
            Caption = 'Completed by';
            Description = 'WFNAV7';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
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
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(35; "Due Date Formula"; DateFormula)
        {
            Caption = 'Due Date Formula';
        }
        field(36; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(37; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            Description = 'WFNAV7';
            FieldClass = FlowFilter;
            TableRelation = User;
        }
        field(38; "Use Request Page"; Boolean)
        {
            Caption = 'Use Request Page';
            Description = 'WFNAV7';
        }
        field(39; "Run automatically"; Boolean)
        {
            Caption = 'Run automatically';
        }
        field(40; "Work Instruction Hyperlink"; Text[250])
        {
            Caption = 'Work Instruction Hyperlink';
        }
        field(41; "Task Template No."; Code[20])
        {
            Caption = 'Task Template No.';
        }
        field(42; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
        }
        field(43; Started; Boolean)
        {
            Caption = 'Started';
        }
        field(44; "Condition Valid"; Boolean)
        {
            Caption = 'Condition valid';
        }
        field(45; "Workflow Description"; Text[50])
        {
            CalcFormula = Lookup ("Workflow Header".Description WHERE ("No." = FIELD ("Workflow No.")));
            Caption = 'Workflow Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(46; "Task Priority Code"; Code[20])
        {
            Caption = 'Task Priority Code';
            Description = 'WF0253';
            TableRelation = "Task Priority";
        }
        field(47; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST (Task),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Delivery Date"; Date)
        {
            Caption = 'Delivery Date';
        }
        field(49; "Do not Notify"; Boolean)
        {
            Caption = 'Do not notify';
        }
        field(50; "Open Workflow Portal"; Boolean)
        {
            Caption = 'Open Workflow Portal';
        }
        field(51; "Confirmation (Task Initiator)"; Boolean)
        {
            Caption = 'Confirmation (Task Initiator)';
            Description = 'WF0034';
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
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(54; "Create SMS"; Boolean)
        {
            Caption = 'Create SMS';
        }
        field(55; "Create E-Mail"; Boolean)
        {
            Caption = 'Create E-Mail';
        }
        field(56; "Language ID"; Integer)
        {
            Caption = 'Language ID';
        }
        field(57; "Lock Record"; Boolean)
        {
            Caption = 'Lock Record';
        }
        field(58; "Approval Team"; Code[50])
        {
            Caption = 'Approval Team';
            Description = 'WF0131,WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(59; "Task Started"; DateTime)
        {
            Caption = 'Task started';
        }
        field(60; "Task Completed"; DateTime)
        {
            Caption = 'Task completed';
        }
        field(61; "Task Duration (MS)"; Duration)
        {
            Caption = 'Duration (MS)';
        }
        field(62; "Task Duration (Min.)"; Decimal)
        {
            Caption = 'Duration (Min.)';
        }
        field(63; "Workflow Duration (MS)"; Duration)
        {
            Caption = 'Workflow Duration (MS)';
        }
        field(64; "Workflow Duration (Min.)"; Decimal)
        {
            Caption = 'Workflow Duration (Min.)';
        }
        field(65; "Workflow completed"; Boolean)
        {
            Caption = 'Workflow completed';
        }
        field(66; "Approval expired"; Boolean)
        {
            Caption = 'Approval expired';
        }
        field(67; "Record Position 2"; Text[250])
        {
            Caption = 'Record Position 2';
        }
        field(68; "Approval Value"; Integer)
        {
            Caption = 'Approval Value';
        }
        field(69; Approval; Boolean)
        {
            Caption = 'Approval';
            Editable = false;
        }
        field(70; "Approval Code"; Code[50])
        {
            Caption = 'Approval Code';
            Description = 'WF0131,WF0282';
        }
        field(71; "Approval Checksum"; Integer)
        {
            Caption = 'Approval Checksum';
            Description = 'WF0131';
        }
        field(72; "Direct Approval"; Boolean)
        {
            Caption = 'Direct Approval';
            Description = 'WF0131';
        }
        field(73; "Exit Event No."; Code[20])
        {
            Caption = 'Exit Event No.';
            Description = 'WF0039';
            Editable = false;
            TableRelation = "ccWorkflow Event";
        }
        field(74; "Task Function Code"; Code[20])
        {
            Caption = 'Task Function Code';
            Description = 'WF0104,WF0253';
            TableRelation = "Custom Function".Code WHERE (Type = CONST ("Task Function"));
        }
        field(78; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
            Description = 'WF0112';
        }
        field(79; "Work Instruction Source Type"; Option)
        {
            Caption = 'Work Instruction Source Type';
            Description = 'WF0093';
            OptionCaption = 'File,URL';
            OptionMembers = File,URL;
        }
        field(80; Enquiry; Boolean)
        {
            Caption = 'Enquiry';
            Description = 'WF0107';
        }
        field(81; "Enquiry created"; Boolean)
        {
            Caption = 'Enquiry created';
            Description = 'WF0107';
        }
        field(82; "Enquiry completed"; Boolean)
        {
            CalcFormula = Min ("Workflow Task".Completed WHERE ("Workflow ID" = FIELD ("Workflow ID"),
                                                               "Workflow No." = CONST (''),
                                                               "Enquiry from No." = FIELD ("No."),
                                                               Enquiry = CONST (true)));
            Caption = 'Enquiry completed';
            Description = 'WF0107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "Enquiry partially completed"; Boolean)
        {
            CalcFormula = Max ("Workflow Task".Completed WHERE ("Workflow ID" = FIELD ("Workflow ID"),
                                                               "Workflow No." = CONST (''),
                                                               "Enquiry from No." = FIELD ("No."),
                                                               Enquiry = CONST (true)));
            Caption = 'Enquiry partially completed';
            Description = 'WF0107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "Enquiry from No."; Code[20])
        {
            Caption = 'Enquiry from No.';
            Description = 'WF0107';
        }
        field(85; "Confirmation (WF Initiator)"; Boolean)
        {
            Caption = 'Confirmation (Workflow Initiator)';
            Description = 'WF0034';
        }
        field(86; "Confirmation Workflow Team"; Code[50])
        {
            Caption = 'Confirmation Workflow Team';
            Description = 'WF0034,WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(87; "Create Confirmation E-Mail"; Boolean)
        {
            Caption = 'Create Confirmation E-Mail';
            Description = 'WF0146';
        }
        field(88; "Task Completion Confirmation"; Boolean)
        {
            Caption = 'Task Completion Confirmation';
            Description = 'WF0155';
        }
        field(89; "Completed Task No."; Code[20])
        {
            Caption = 'Completed Task No.';
            Description = 'WF0155';
        }
        field(90; "Reminder to No."; Code[20])
        {
            Caption = 'Reminder to No.';
            Description = 'WF0205';
        }
        field(91; "Used in Workflows"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Task Template No." = FIELD ("No.")));
            Caption = 'Used in Workflows';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.")
        {
            Clustered = true;
        }
        key(Key2; "Workflow No.", "Workflow ID")
        {
        }
        key(Key3; Completed, "Team Code")
        {
        }
        key(Key4; "Team Code", "Started by", "Delivery Date")
        {
        }
        key(Key5; "Document Type", Completed, "Team Code", "Delivery Date", "Do not Notify")
        {
        }
        key(Key6; "Record Position")
        {
        }
        key(Key7; "Team Code", "No.")
        {
        }
        key(Key8; Completed, "Workflow No.", "Workflow Line No.")
        {
        }
        key(Key9; Completed, "Document Type", "No.")
        {
        }
        key(Key10; "Due Date")
        {
        }
        key(Key11; Completed, "Table No.", "Record Position", "Lock Record")
        {
        }
        key(Key12; Completed, "Table No.", "Record Position")
        {
        }
        key(Key13; Completed, "Workflow ID", "No.")
        {
        }
        key(Key14; "Document Type", "Workflow No.", "Workflow ID", "Task Started")
        {
        }
        key(Key15; "Document Type", "Workflow No.", "Workflow ID", "Task Completed")
        {
        }
        key(Key16; "Document Type", "Workflow ID")
        {
        }
        key(Key17; "Record Position", Approval, Completed, "Approval expired")
        {
        }
        key(Key18; "Document Type", "Record Position", Approval, Completed)
        {
        }
        key(Key19; "Document Type", Approval, Completed, "Approval expired")
        {
        }
        key(Key20; "Workflow ID")
        {
        }
        key(Key21; "Document Type", "Workflow No.", "Workflow Line No.", Completed)
        {
        }
        key(Key22; Completed, "Approval Code")
        {
        }
        key(Key23; "Team Code", "Due Date")
        {
        }
        key(Key24; "Document Type", Completed, "Delivery Date", "Do not Notify", "No.")
        {
        }
        key(Key25; "Document Type", Completed, "Do not Notify", "No.")
        {
        }
        key(Key26; "From User ID")
        {
        }
        key(Key27; Completed, "Team Code", "Exit Event No.", "Document Type")
        {
        }
        key(Key28; "Document Type", Enquiry, Completed, "Enquiry from No.")
        {
        }
        key(Key29; "Document Type", "Team Code", "Due Date")
        {
        }
        key(Key30; "Transaction No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Task Category", "Team Code", Type, "Object Name")
        {
        }
    }
}

