table 5103635 "ccWorkflow Event"
{
    // WF0046  New Field "Execute only once" disables the periodic event after first execution.
    // 
    // WF3.01:
    // -------
    // WF0185  New Flowfields. Corrected CalcFormula in field Comment.
    // WF0194  Added DropDown Field Group "No.,Object No.,Description,Blocked".
    // WF0221  Changed length of field Description from Text 30 to 80.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 27 "User Event Code" from Code[10] to Code[20].
    //         Changed Length in field 28 "User Event Description" from Text[30] to Text[50].
    // 
    // 
    // WF3.02.01:
    // ----------
    // WF0280  Removed function MaintainChangeLog.

    Caption = 'cc|Workflow Event';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Table';
            OptionMembers = "Table";
        }
        field(3; "Object No."; Integer)
        {
            Caption = 'Object No.';
            TableRelation = IF (Type = CONST (Table)) Object.ID WHERE (Type = CONST (Table));
        }
        field(4; Description; Text[80])
        {
            Caption = 'Description';
            Description = 'WF0221';
        }
        field(5; "Event Type"; Option)
        {
            Caption = 'Event Type';
            OptionCaption = 'Insert,Modify,Delete,Rename,Periodic,User Defined';
            OptionMembers = Insert,Modify,Delete,Rename,Periodic,"User Defined";
        }
        field(6; Blocked; Boolean)
        {
            Caption = 'Blocked';
            InitValue = true;
        }
        field(7; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(9; "Valid From"; Date)
        {
            Caption = 'Valid From';
        }
        field(10; "Valid Through"; Date)
        {
            Caption = 'Valid Through';
        }
        field(11; "Last Date Checked"; Date)
        {
            Caption = 'Last Date Checked';
            Editable = false;
        }
        field(12; "Last Time Checked"; Time)
        {
            Caption = 'Last Time Checked';
            Editable = false;
        }
        field(13; "Time Between Check"; Integer)
        {
            Caption = 'Time Between Check';
            MinValue = 0;
        }
        field(14; "Unit of Measure"; Option)
        {
            Caption = 'Unit of Measure';
            OptionCaption = 'Second,Minute,Hour,Day';
            OptionMembers = Second,Minute,Hour,Day;
        }
        field(15; "Next Check Date"; Date)
        {
            Caption = 'Next Check Date';
        }
        field(16; "Next Check Time"; Time)
        {
            Caption = 'Next Check Time';
        }
        field(18; "Valid on Sundays"; Boolean)
        {
            Caption = 'Valid on Sundays';
            InitValue = true;
        }
        field(19; "Valid on Mondays"; Boolean)
        {
            Caption = 'Valid on Mondays';
            InitValue = true;
        }
        field(20; "Valid on Tuesdays"; Boolean)
        {
            Caption = 'Valid on Tuesdays';
            InitValue = true;
        }
        field(21; "Valid on Wednesdays"; Boolean)
        {
            Caption = 'Valid on Wednesdays';
            InitValue = true;
        }
        field(22; "Valid on Thursdays"; Boolean)
        {
            Caption = 'Valid on Thursdays';
            InitValue = true;
        }
        field(23; "Valid on Fridays"; Boolean)
        {
            Caption = 'Valid on Fridays';
            InitValue = true;
        }
        field(24; "Valid on Saturdays"; Boolean)
        {
            Caption = 'Valid on Saturdays';
            InitValue = true;
        }
        field(25; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(26; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(27; "User Event Code"; Code[20])
        {
            Caption = 'User Event Code';
            Description = 'WF0253';
            TableRelation = "User Event";
        }
        field(28; "User Event Description"; Text[50])
        {
            CalcFormula = Lookup ("User Event".Description WHERE (Code = FIELD ("User Event Code")));
            Caption = 'User Event Description';
            Description = 'WF0253';
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST ("Workflow Event"),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "On Insert"; Boolean)
        {
            Caption = 'Insert';
        }
        field(31; "On Modify"; Boolean)
        {
            Caption = 'Modify';
        }
        field(32; "On Delete"; Boolean)
        {
            Caption = 'Delete';
        }
        field(33; "On Rename"; Boolean)
        {
            Caption = 'Rename';
        }
        field(34; Periodic; Boolean)
        {
            Caption = 'Periodic';
        }
        field(35; "User Defined"; Boolean)
        {
            Caption = 'User Defined';
        }
        field(36; "Execute only once"; Boolean)
        {
            Caption = 'Execute only once';
            Description = 'WF0046';
        }
        field(37; "Used as Entry Event"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Entry Event No." = FIELD ("No.")));
            Caption = 'Used as Entry Event';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "Used as Exit Event"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Exit Event No." = FIELD ("No.")));
            Caption = 'Used as Exit Event';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Used in Approval Conditions"; Integer)
        {
            CalcFormula = Count ("Approval Condition" WHERE ("Event No." = FIELD ("No.")));
            Caption = 'Used in Approval Conditions';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Used in Messages"; Integer)
        {
            CalcFormula = Count (Message WHERE ("Event No." = FIELD ("No.")));
            Caption = 'Used in Messages';
            Description = 'WF0185';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "Object No.", Blocked)
        {
        }
        key(Key3; Blocked, "Event Type")
        {
        }
        key(Key4; Blocked, Type, "Object No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Object No.", Description, Blocked)
        {
        }
    }
}

