table 5012805 "GX Prod. Order Planning Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // GXW16.00.01 20.09.2011 demsr.cs
    //   # new field: 1430: Sales Simulation Pattern
    // 
    // #GXW17.00:T100 22.11.12 DEMSR.IST
    //   Fieldname of "Runtime Editable" changed
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Order Planning Setup';
    DataCaptionFields = "Scheme Code";

    fields
    {
        field(1; "Scheme Code"; Code[20])
        {
            Caption = 'Scheme Code';
            NotBlank = true;
            TableRelation = "GX Basic Scheme".Code;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
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
        field(120; Editable; Boolean)
        {
            Caption = 'Editable';
            InitValue = true;
        }
        field(1000; "Show Capacities"; Boolean)
        {
            Caption = 'Show Capacities';
            InitValue = true;
        }
        field(1010; "Show Production Orders"; Boolean)
        {
            Caption = 'Show Production Orders';
            InitValue = false;
        }
        field(1020; "Show Prod. Order Lines"; Boolean)
        {
            Caption = 'Show Prod. Order Lines';
            InitValue = false;
        }
        field(1030; "Show Routing Lines"; Boolean)
        {
            Caption = 'Show Routing Lines';
            InitValue = true;
        }
        field(1040; "Show Work Center Groups"; Boolean)
        {
            Caption = 'Show Work Center Groups';
            InitValue = false;
        }
        field(1050; "Planned Rtng Lines Pattern"; Code[20])
        {
            Caption = 'Planned Rtng Lines Pattern';
            TableRelation = "GX Pattern".Code;
        }
        field(1060; "In Progress Rtng Lines Pattern"; Code[20])
        {
            Caption = 'In Progress Rtng Lines Pattern';
            TableRelation = "GX Pattern".Code;
        }
        field(1070; "Finished Rtng Lines Pattern"; Code[20])
        {
            Caption = 'Finished Rtng Lines Pattern';
            TableRelation = "GX Pattern".Code;
        }
        field(1080; "Hard Linking Dependencies"; Boolean)
        {
            Caption = 'Hard Linking Dependencies';
            InitValue = true;
        }
        field(1090; "Show Progress"; Option)
        {
            Caption = 'Show Progress';
            OptionCaption = 'Disabled,Duration,Duration (%),Quantity (%)';
            OptionMembers = Disabled,Duration,"Duration (%)","Quantity (%)";
        }
        field(1100; "Progress Pattern Code"; Code[20])
        {
            Caption = 'Progress Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1110; "Check Item Availability"; Boolean)
        {
            Caption = 'Check Item Availability';
        }
        field(1120; "Work Center Filter"; Text[30])
        {
            Caption = 'Work Center Filter';
        }
        field(1130; "Machine Center Filter"; Text[30])
        {
            Caption = 'Machine Center Filter';
        }
        field(1140; "Work Center Group Filter"; Text[30])
        {
            Caption = 'Work Center Group Filter';
        }
        field(1150; "Sim. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Sim. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1160; "Plan. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Plan. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1170; "Firm Plan. Prod. Order P. Code"; Code[20])
        {
            Caption = 'Firm Plan. Prod. Order P. Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1180; "Rel. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Rel. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1190; "Fin. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Fin. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1200; "Work Center Group Pattern Code"; Code[20])
        {
            Caption = 'Work Center Group Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1210; "Work Center Pattern Code"; Code[20])
        {
            Caption = 'Work Center Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1220; "Machine Center Pattern Code"; Code[20])
        {
            Caption = 'Machine Center Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1230; "Visible Work Center Filter"; Text[50])
        {
            Caption = 'Visible Work Center Filter';
        }
        field(1240; "Visible Machine Center Filter"; Text[50])
        {
            Caption = 'Visible Machine Center Filter';
        }
        field(1250; "Visible WorkCenterGroup Filter"; Text[50])
        {
            Caption = 'Visible WorkCenterGroup Filter';
        }
        field(1260; "Show Simulated Prod. Orders"; Boolean)
        {
            Caption = 'Show Simulated Prod. Orders';
        }
        field(1270; "Show Planned Prod. Orders"; Boolean)
        {
            Caption = 'Show Planned Prod. Orders';
        }
        field(1280; "Show Firm Planned Prod. Orders"; Boolean)
        {
            Caption = 'Show Firm Planned Prod. Orders';
            InitValue = true;
        }
        field(1290; "Show Released Prod. Orders"; Boolean)
        {
            Caption = 'Show Released Prod. Orders';
            InitValue = true;
        }
        field(1300; "Show Finished Prod. Orders"; Boolean)
        {
            Caption = 'Show Finished Prod. Orders';
        }
        field(1310; "Enable Update Timer"; Boolean)
        {
            Caption = 'Enable Update Timer';
        }
        field(1320; "Interval (ms)"; Integer)
        {
            Caption = 'Interval (ms)';
            InitValue = 60000;
        }
        field(1325; "Height of hidden Rows"; Integer)
        {
            Caption = 'Height of hidden Rows';
            InitValue = 5;
        }
        field(1330; "Runtime Editable"; Boolean)
        {
            Caption = 'Runtime Editable';
        }
        field(1340; "Production Order View"; Option)
        {
            Caption = 'Show Production Orders';
            OptionCaption = 'Hide,Show,Group by status';
            OptionMembers = Hide,Show,"Group by status";
        }
        field(1350; "Prod. Order Line View"; Option)
        {
            Caption = 'Prod. Order Line View';
            OptionCaption = 'Hide,Show,Group by status';
            OptionMembers = Hide,Show,"Group by status";
        }
        field(1360; "Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1370; "Prod. Order Line Pattern Code"; Code[20])
        {
            Caption = 'Prod. Order Line Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1380; "Enable Order Tracking"; Boolean)
        {
            Caption = 'Enable Order Tracking';
        }
        field(1390; "Use Viewdates as Orderfilter"; Boolean)
        {
            Caption = 'Use Viewdates as Orderfilter';
        }
        field(1400; "Work Center Group Height"; Integer)
        {
            Caption = 'Work Center Group Height';
        }
        field(1405; "Work Center Height"; Integer)
        {
            Caption = 'Work Center Height';
        }
        field(1410; "Machine Center Height"; Integer)
        {
            Caption = 'Machine Center Height';
        }
        field(1415; "Capacity Render Mode"; Option)
        {
            Caption = 'Capacity Render Mode';
            OptionCaption = 'Normal,Days,Weeks,Months,Days Bars,Weeks Bars,Months Bars';
            OptionMembers = Normal,Days,Weeks,Months,"Days Bars","Weeks Bars","Months Bars";
        }
        field(1420; "Capacity Period Offset"; Integer)
        {
            Caption = 'Capacity Period Offset';
            InitValue = 1;
        }
        field(1425; "Capacity Caption Mask"; Text[50])
        {
            Caption = 'Capacity Caption Mask';
            InitValue = '%RATIO %';
        }
        field(1430; "Sales Simulation Pattern"; Code[20])
        {
            Caption = 'Sales Simulation Pattern';
            Description = 'GXW16.00.01';
            TableRelation = "GX Pattern".Code;
        }
    }

    keys
    {
        key(Key1; "Scheme Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

