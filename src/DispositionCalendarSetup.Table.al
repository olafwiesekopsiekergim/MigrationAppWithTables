table 5072715 "Disposition Calendar Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.02.02:T502 05.01.11 DEMSR.KHS
    //   Missing ENU Caption in Field "View Ending Date"
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   delete single primary key field from TableRelation
    //   add missing spaces
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Disposition Calendar Setup';
    DataCaptionFields = "Scheme Code";

    fields
    {
        field(1; "Scheme Code"; Code[20])
        {
            Caption = 'Scheme Code';
            NotBlank = true;
            TableRelation = "GX Basic Scheme";
        }
        field(11; "View Starting Date"; DateFormula)
        {
            Caption = 'View Starting Date';
        }
        field(12; "View Ending Date"; DateFormula)
        {
            Caption = 'View Ending Date';
            Description = '#RENW16.00.02.02:T502';
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
        field(5072650; "Rent Item Pattern Code"; Code[20])
        {
            Caption = 'Rent Item Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072651; "Machine Pattern Code"; Code[20])
        {
            Caption = 'Machine Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072652; "Service Order Pattern Code"; Code[20])
        {
            Caption = 'Service Order Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072653; "Rental Contract Pattern Code"; Code[20])
        {
            Caption = 'Rental Contract Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072654; "Rent. Reservation Pattern Code"; Code[20])
        {
            Caption = 'Rent. Reservation Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072655; "Invoiced Pattern Code"; Code[20])
        {
            Caption = 'Invoiced Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072656; "Shipped Pattern Code"; Code[20])
        {
            Caption = 'Shipped Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072657; "Returned Pattern Code"; Code[20])
        {
            Caption = 'Returned Pattern Code';
            TableRelation = "GX Pattern";
        }
        field(5072658; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
            InitValue = 060000T;
        }
        field(5072659; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
            InitValue = 180000T;
        }
        field(5072660; "Released Rental Contract"; Code[20])
        {
            Caption = 'Released Rental Contract';
            TableRelation = "GX Pattern";
        }
        field(5072661; "Default Rent Rate Code"; Code[10])
        {
            Caption = 'Default Rent Rate Code';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (true));
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

