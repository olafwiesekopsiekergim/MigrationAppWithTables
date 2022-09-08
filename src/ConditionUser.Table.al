table 5103613 "Condition User"
{
    // WF0051  Workflow Team Integration in Condition User.
    // 
    // WF3.01:
    // -------
    // WF0196  Fixed Lookup error in Field Security matrix for Type=Role on RTC.
    // WF0215  TableRelation to Workflow Team added in field ID. Modify Field Security Entry on rename.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Condition User';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
        }
        field(2; ID; Code[50])
        {
            Caption = 'ID';
            Description = 'WF0051,WF0215,WFNAV7';
            NotBlank = true;
            TableRelation = IF (Type = CONST (Team)) "Workflow Team".Code;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            Description = 'WF0051';
            OptionCaption = 'User,Role,Team';
            OptionMembers = User,Role,Team;
        }
        field(5; "Name/Description"; Text[80])
        {
            Caption = 'Name/Description';
            Description = 'WFNAV7';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Condition No.", Type, ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

