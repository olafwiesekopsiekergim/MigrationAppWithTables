table 5103627 "System Condition"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 1 "Code" from Code[10] to Code[20].
    //         Changed Length in field 2 "Description" from Text[30] to Text[50].

    Caption = 'System Condition';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            Description = 'WF0253';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            Description = 'WF0253';
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

