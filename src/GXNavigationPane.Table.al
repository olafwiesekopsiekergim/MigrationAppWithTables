table 5012807 "GX Navigation Pane"
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

    Caption = 'GX Navigation Pane';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Caption; Text[50])
        {
            Caption = 'caption';
        }
        field(20; Level; Integer)
        {
            Caption = 'level';
        }
        field(30; Expanded; Boolean)
        {
            Caption = 'Expanded';
        }
        field(40; Image; Integer)
        {
            Caption = 'Image';
        }
        field(50; Guid; Guid)
        {
            Caption = 'Guid';
            Description = 'Context information';
        }
        field(60; ID; Integer)
        {
            Caption = 'ID';
            Description = 'Context information';
        }
        field(70; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
            Description = 'Context information';
        }
        field(80; "Record Table ID"; Integer)
        {
            Caption = 'Record Table ID';
            Description = 'Context information';
        }
        field(90; "Record Position"; Text[250])
        {
            Caption = 'Record Position';
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

