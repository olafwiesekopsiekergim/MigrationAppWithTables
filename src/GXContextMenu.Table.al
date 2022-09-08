table 5012813 "GX Context Menu"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX Context Menu';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'menuitem,separator';
            OptionMembers = menuitem,separator;
        }
        field(20; Caption; Text[250])
        {
            Caption = 'Caption';
        }
        field(30; Level; Integer)
        {
            Caption = 'Level';
        }
        field(40; ID; Integer)
        {
            Caption = 'ID';
            Description = 'Context information';
        }
        field(60; Enabled; Boolean)
        {
            Caption = 'Enabled';
        }
        field(70; Checked; Boolean)
        {
            Caption = 'Checked';
        }
        field(80; "Action"; Text[250])
        {
            Caption = 'Action';
            Description = 'Context information';
        }
        field(90; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
            Description = 'Context information';
        }
        field(100; Guid; Guid)
        {
            Caption = 'Guid';
            Description = 'Context information';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

