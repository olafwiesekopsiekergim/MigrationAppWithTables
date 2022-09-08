table 5103633 "Workflow Standard Text Line"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 1 "No." from Code[10] to Code[20].

    Caption = 'Workflow Standard Text Line';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0253';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Text; Text[80])
        {
            Caption = 'Text';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

