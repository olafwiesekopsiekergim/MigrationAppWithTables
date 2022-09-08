table 5012811 "GX Data Item"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // :1-H-1-GX:117:2 Vers.: 6.00.02.01
    //   # Correction: size of progress bar can be set by the pattern-settings
    // 
    // GXW16.00.01 20.09.2011 demsr.cs
    //   # some additional fields for application-specific information
    //   # new fields: 220, 230
    // 
    // GXW17.00.00.01:T501 12.04.13 DEMSR.LVO
    //   # convert strings for XML-export
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #1-PRODMGT-09:200:01 DEMSR.CS
    //   # new field: 5012700 "Serial No."
    // 
    // #GXW17.10.00.01:T501 07.11.13 DEMSR.BKR
    //   Refresh View
    //   Added new Parameter to ExportToBigText
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW17.00.00.04:T503 02.10.13 DEMSR.KHS
    //   Documentation (#1-PRODMGT-09:200:01) corrected for field Serial No.
    // 
    // #GXW18.00:T102 14.01.15 DEMSR.BKR
    //   Remove all GX automations and unused code
    //   Removed Function "Export"

    Caption = 'GX Data Item';

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Job';
            OptionMembers = Job;
        }
        field(20; Caption; Text[250])
        {
            Caption = 'Caption';
        }
        field(30; "Group TAG"; Text[250])
        {
            Caption = 'Group TAG';
        }
        field(40; Pattern; Code[20])
        {
            Caption = 'Pattern';
            TableRelation = "GX Pattern";
        }
        field(50; "Row ID"; Integer)
        {
            Caption = 'Row ID';
            TableRelation = "GX Row Item".ID;
        }
        field(60; Start; DateTime)
        {
            Caption = 'Start';
        }
        field(65; Ending; DateTime)
        {
            Caption = 'Ending';
        }
        field(70; Duration; Duration)
        {
            Caption = 'Duration';
        }
        field(80; "Latest End"; DateTime)
        {
            Caption = 'Latest End';
        }
        field(90; "Horizontal Locked"; Boolean)
        {
            Caption = 'Horizontal Locked';
        }
        field(100; "Vertical Locked"; Boolean)
        {
            Caption = 'Vertical Locked';
        }
        field(110; GUID; Guid)
        {
            Caption = 'GUID';
            Description = 'Context information';
        }
        field(120; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
            Description = 'Context information';
        }
        field(130; "Resize Duration Allowed"; Boolean)
        {
            Caption = 'Resize Duration Allowed';
        }
        field(140; "Show Progress Bar"; Boolean)
        {
            Caption = 'Show Progress Bar';
            Description = 'Simple Progress Bar';
        }
        field(150; "Progress Percent"; Decimal)
        {
            Caption = 'Progress Percent';
            Description = 'Simple Progress Bar';
        }
        field(160; "Progress Bar Pattern Code"; Code[20])
        {
            Caption = 'Progress Bar Pattern Code';
            Description = 'Simple Progress Bar';
            TableRelation = "GX Pattern";
        }
        field(170; "Record Table ID"; Integer)
        {
            Caption = 'Record Table ID';
            Description = 'Context information';
        }
        field(180; "Record Position"; Text[250])
        {
            Caption = 'Record Position';
            Description = 'Context information';
        }
        field(190; "Ignore Capacities"; Boolean)
        {
            Caption = 'Ignore Capacities';
        }
        field(200; "Concurrent Capacities"; Decimal)
        {
            Caption = 'Concurrent Capacities';
        }
        field(210; "Hide Capacity Load"; Boolean)
        {
            Caption = 'Hide Capacity Load';
        }
        field(220; "App Info"; Integer)
        {
            Description = 'GXW16.00.01';
        }
        field(230; "App Info Text"; Text[250])
        {
            Description = 'GXW16.00.01';
        }
        field(5072650; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            Description = '#RENW17.00.00.04:T503';
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

