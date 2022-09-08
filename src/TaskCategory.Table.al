table 5103616 "Task Category"
{
    // WF0083  Colored Task Categories in Workflow Portal.
    // 
    // WF3.01:
    // -------
    // WF0205  Job Queue Integration: New field "Create Due Reminder".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 1 "Code" from Code[10] to Code[20].

    Caption = 'Task Category';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            Description = 'WF0253';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(6; "Color Value"; Integer)
        {
            Caption = 'Color Value';
            Description = 'WF0083';
        }
        field(10; "Create Due Reminder"; Boolean)
        {
            Caption = 'Create Due Reminder';
            Description = 'WF0205';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

