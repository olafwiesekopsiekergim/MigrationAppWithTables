table 5103620 "Workflow Team User"
{
    // WF0044  Check existing User Setup.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0252  Mail functionality corrected. Changed CalcFormula in field 6 "E-Mail" and Length from Text[80] to Text[100].
    // 
    // WF3.02.02:
    // ----------
    // WF0294  Error message in CheckSingleUserTeam corrected.

    Caption = 'Workflow Team User';

    fields
    {
        field(1; "Workflow Team Code"; Code[50])
        {
            Caption = 'Team Code';
            Description = 'WFNAV7';
            NotBlank = true;
            TableRelation = "Workflow Team";
        }
        field(2; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
            NotBlank = true;
        }
        field(3; "User Name"; Text[80])
        {
            CalcFormula = Lookup (User."Full Name" WHERE ("User Name" = FIELD ("User ID")));
            Caption = 'User Name';
            Description = 'WFNAV7';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(5; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(6; "E-Mail"; Text[100])
        {
            CalcFormula = Lookup ("User Setup"."E-Mail" WHERE ("User ID" = FIELD ("User ID")));
            Caption = 'E-Mail';
            Description = 'WF0252';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Delegation allowed"; Boolean)
        {
            Caption = 'Delegation allowed';
        }
        field(8; "Is not Member"; Boolean)
        {
            Caption = 'Is not Member';
        }
        field(9; "Single User"; Boolean)
        {
            CalcFormula = Lookup ("Workflow Team"."Single User" WHERE (Code = FIELD ("Workflow Team Code")));
            Caption = 'Single User';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Workflow Team Code", "User ID")
        {
            Clustered = true;
        }
        key(Key2; "User ID")
        {
        }
    }

    fieldgroups
    {
    }
}

