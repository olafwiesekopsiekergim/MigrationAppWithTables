table 5103632 "Workflow Standard Text"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 1 "No.", 3 "Workflow Category" from Code[10] to Code[20].
    //         Changed Length in field 2 "Description" from Text[30] to Text[50].

    Caption = 'Workflow Standard Text';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0253';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            Description = 'WF0253';
        }
        field(3; "Workflow Category"; Code[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
            TableRelation = "ccWorkflow Category";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

