table 5103636 "User Event"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 1 "Code" from Code[10] to Code[20].
    //         Changed Length in field 2 "Description" from Text[30] to Text[50].

    Caption = 'User Event';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            Description = 'WF0253';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            Description = 'WF0253';
        }
        field(3; Comment; Text[80])
        {
            Caption = 'Comment';
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

