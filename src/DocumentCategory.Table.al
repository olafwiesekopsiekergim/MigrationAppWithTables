table 5103650 "Document Category"
{
    // WF0114  Colored Document Categories.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 1 "Code" from Code[10] to Code[20].
    //         Changed Length in field 2 "Description" from Text[30] to Text[50].

    Caption = 'Document Category';

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
        field(3; "Document Storage Path"; Text[100])
        {
            Caption = 'Document Storage Path';
        }
        field(6; "Color Value"; Integer)
        {
            Caption = 'Color Value';
            Description = 'WF0114';
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

