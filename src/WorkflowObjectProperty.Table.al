table 5103637 "Workflow Object Property"
{
    // WF0075 New Field and new key: Select as Document
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Workflow Object Property';

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            Description = 'WFNAV7';
            InitValue = "Page";
            OptionCaption = ',,,Report,,,,,Page';
            OptionMembers = ,,Form,"Report",,,,,"Page";
        }
        field(2; "Object No."; Integer)
        {
            Caption = 'Object No.';
            NotBlank = true;
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(4; "Object Caption"; Text[100])
        {
            Caption = 'Object Description';
        }
        field(5; "Table Caption"; Text[250])
        {
            Caption = 'Table Caption';
        }
        field(6; "Select as Document"; Boolean)
        {
            Caption = 'Select as Document';
            Description = 'WF0075';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Caption")
        {
        }
        key(Key3; "Select as Document")
        {
        }
    }

    fieldgroups
    {
    }
}

