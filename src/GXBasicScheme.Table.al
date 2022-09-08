table 5012803 "GX Basic Scheme"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // :1-H-1-GX:117:2 - Vers GXW16.00.00.04
    //   # new fields: 180, 190
    // 
    // GXW16.00.01
    //   # changed some DEU-captions
    // 
    // #GXW17.00:T100 04.05.12 DEMSR.IST
    //   Obsolet field 24, 25 and 108 deleted
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #GXW18.00:T102 14.01.15 DEMSR.BKR
    //   Remove all GX automations and unused code
    //   Removed Fields "Job No Load Pattern Code", "Days No Load Pattern Code"

    Caption = 'GX Basic Scheme';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(4; "Modify Tick"; Integer)
        {
            Caption = 'Modify Tick';
            Description = 'to detect changes';
        }
        field(11; "View Starting Date"; DateFormula)
        {
            Caption = 'View Starting Date';
        }
        field(12; "View Ending Date"; DateFormula)
        {
            Caption = 'View Ending Date';
        }
        field(13; "Visible Range"; Duration)
        {
            Caption = 'Visible Range';
        }
        field(14; "Job Height"; Integer)
        {
            Caption = 'Job Height';
        }
        field(15; Shadows; Boolean)
        {
            Caption = 'Shadows';
        }
        field(16; "Progress Pattern Code"; Code[20])
        {
            Caption = 'Progress Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(17; "Job Warnings Pattern Code"; Code[20])
        {
            Caption = 'Job Warnings Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(18; "Sel. Res. Details Pattern Code"; Code[20])
        {
            Caption = 'Sel. Res. Details Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(19; "Cur. Res. Details Pattern Code"; Code[20])
        {
            Caption = 'Cur. Res. Details Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(20; "Capacity Load Pattern Code"; Code[20])
        {
            Caption = 'Capacity Load Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(21; "Capacity Overload Pattern Code"; Code[20])
        {
            Caption = 'Capacity Overload Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(22; "Current Capacity Pattern Code"; Code[20])
        {
            Caption = 'Current Capacity Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(23; "Hot Track Job Pattern Code"; Code[20])
        {
            Caption = 'Hot Track Job Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(100; "Background Pattern Code"; Code[20])
        {
            Caption = 'Background Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(101; "Weekday Pattern Code"; Code[20])
        {
            Caption = 'Weekday Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(102; "Saturday Pattern Code"; Code[20])
        {
            Caption = 'Saturday Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(103; "Sunday Pattern Code"; Code[20])
        {
            Caption = 'Sunday Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(104; "Selected Jobs Pattern Code"; Code[20])
        {
            Caption = 'Selected Jobs Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(105; "Current Job Pattern Code"; Code[20])
        {
            Caption = 'Current Job Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(106; "Sel. Res. Caption Pattern Code"; Code[20])
        {
            Caption = 'Sel. Res. Caption Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(107; "Cur. Res. Caption Pattern Code"; Code[20])
        {
            Caption = 'Cur. Res. Caption Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(109; "Current Order Pattern Code"; Code[20])
        {
            Caption = 'Current Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(110; "Scroll Duration (ms)"; Integer)
        {
            Caption = 'Scroll Duration (ms)';
            InitValue = 500;
        }
        field(120; Editable; Boolean)
        {
            Caption = 'Editable';
            InitValue = true;
        }
        field(130; "Default Separator Pattern Code"; Code[20])
        {
            Caption = 'Selected Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(140; "Job Capa.Load Pattern Code"; Code[20])
        {
            Caption = 'Job Capa.Load Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(150; "Today Header Pattern Code"; Code[20])
        {
            Caption = 'Today Header Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(160; "Workdate Header Pattern Code"; Code[20])
        {
            Caption = 'Workdate Header Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(170; "Job Displacement Pixels"; Integer)
        {
            Caption = 'Job Displacement Pixels';
            InitValue = 15;
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

