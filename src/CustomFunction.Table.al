table 5103641 "Custom Function"
{
    // WF0104  Additional Type "Task Function" for Task Templates.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 2 "Code" from Code[10] to Code[20].

    Caption = 'Custom Function';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            Description = 'WF0104';
            OptionCaption = 'Condition,Team,,,,,Task Function';
            OptionMembers = Condition,Team,,,,,"Task Function";
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            Description = 'WF0253';
            NotBlank = true;
        }
        field(6; Description; Text[80])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Type, "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

