table 5103639 "Message Exception"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Message Exception';

    fields
    {
        field(1; "Event No."; Code[20])
        {
            Caption = 'Event No.';
            NotBlank = true;
            TableRelation = "ccWorkflow Event";
        }
        field(3; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
            NotBlank = true;
            TableRelation = Condition;
        }
        field(4; "Team Code"; Code[50])
        {
            Caption = 'Team Code';
            Description = 'WFNAV7';
            NotBlank = true;
            TableRelation = "Workflow Team";
        }
        field(5; "Team Name"; Text[80])
        {
            CalcFormula = Lookup ("Workflow Team".Name WHERE (Code = FIELD ("Team Code")));
            Caption = 'Team Name';
            Description = 'WFNAV7';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Event No.", "Condition No.", "Team Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

