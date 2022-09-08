table 5012720 "GX Sequence Planning Scheme"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00.01:106 24.11.09 DEMSR.IST
    //   Object created
    // 
    // #PXW17.00.00.02:T501 07.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX Sequence Planning Scheme';

    fields
    {
        field(1; "Scheme Code"; Code[10])
        {
            Caption = 'Scheme Code';
            TableRelation = "GX Basic Scheme".Code;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
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
        field(1000; "Rev. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Rev. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1010; "Fixed Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Fixed Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1020; "Maint.-/Setup Job Pattern Code"; Code[20])
        {
            Caption = 'Maint.-/Setup Job Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1030; "Sim. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Sim. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1040; "Plan. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Plan. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1050; "Firm Plan. Prod. Order P. Code"; Code[20])
        {
            Caption = 'Firm Plan. Prod. Order P. Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1060; "Rel. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Rel. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1070; "Fin. Prod. Order Pattern Code"; Code[20])
        {
            Caption = 'Fin. Prod. Order Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1080; "Work Center Group Pattern Code"; Code[20])
        {
            Caption = 'Work Center Group Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1090; "Work Center Pattern Code"; Code[20])
        {
            Caption = 'Work Center Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1100; "Machine Center Pattern Code"; Code[20])
        {
            Caption = 'Machine Center Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(1110; "Show Work Center Capacities"; Boolean)
        {
            Caption = 'Show Work Center Capacities';
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

