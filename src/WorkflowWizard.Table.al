table 5103642 "Workflow Wizard"
{
    // WF3.00.03:
    // ----------
    // WF0168  Changed field lengths.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Workflow Wizard';

    fields
    {
        field(2; Text; Text[80])
        {
            Caption = 'Text';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Create New Workflow"; Boolean)
        {
            Caption = 'Create New Workflow';
        }
        field(6; "Workflow Description"; Text[50])
        {
            Caption = 'Workflow Description';
            Description = 'WF0168';
        }
        field(7; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
            TableRelation = "Workflow Header";
        }
        field(8; "Team Code"; Code[50])
        {
            Caption = 'Team Code';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(9; "New Entry Condition"; Boolean)
        {
            Caption = 'Create new Entry Condition';
        }
        field(10; "Entry Condition Description"; Text[80])
        {
            Caption = 'Entry Condition Description';
            Description = 'WF0168';
        }
        field(11; "New Exit Condition"; Boolean)
        {
            Caption = 'Create new exit condition';
        }
        field(12; "Exit Condition Description"; Text[80])
        {
            Caption = 'Exit Condition Description';
            Description = 'WF0168';
        }
        field(13; "Entry Condition No."; Code[20])
        {
            Caption = 'Entry Condition No.';
        }
        field(14; "Exit Condition No."; Code[20])
        {
            Caption = 'Exit Condition No.';
        }
        field(15; "Wizard finished"; Boolean)
        {
            Caption = 'Wizard finished';
        }
        field(16; "Task Description"; Text[100])
        {
            Caption = 'Task Description';
            Description = 'WF0168';
        }
        field(17; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(18; "Manual Workflow Allowed"; Boolean)
        {
            Caption = 'Manual Workflow Allowed';
        }
        field(19; Confirmation; Boolean)
        {
            Caption = 'Confirmation';
        }
        field(20; "Create E-Mail"; Boolean)
        {
            Caption = 'Create E-Mail';
        }
        field(21; "On Insert"; Boolean)
        {
            Caption = 'On Insert';
        }
        field(22; "On Modify"; Boolean)
        {
            Caption = 'On Modify';
        }
        field(23; "On Delete"; Boolean)
        {
            Caption = 'On Delete';
        }
        field(24; "On Rename"; Boolean)
        {
            Caption = 'On Rename';
        }
        field(25; "Certify Workflow"; Boolean)
        {
            Caption = 'Certify Workflow';
        }
        field(26; "Show Workflow"; Boolean)
        {
            Caption = 'Show Workflow';
        }
        field(27; "Wizard ID"; Integer)
        {
            Caption = 'Wizard ID';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

