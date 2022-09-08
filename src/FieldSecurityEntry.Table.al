table 5103629 "Field Security Entry"
{
    // WF0026  Workflow Team Integration in Field Security.
    // WF0157  TableRelation deleted in field 2 (ID).
    // 
    // WF3.01:
    // -------
    // WF0215  TableRelation to Workflow Team added in Feld ID.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Field Security Entry';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            Description = 'WF0026';
            OptionCaption = 'User,Role,Team';
            OptionMembers = User,Role,Team;
        }
        field(2; ID; Code[50])
        {
            Caption = 'ID';
            Description = 'WF0026,WF0215,WFNAV7';
            NotBlank = true;
            TableRelation = IF (Type = CONST (Team)) "Workflow Team".Code;
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
    }

    keys
    {
        key(Key1; Type, ID, "Table No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

