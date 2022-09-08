table 5012611 "QC Status"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.01:4069:1
    //   # Object created.
    // 
    // :PMW14.01.00.01:23:1
    //   # Missing ENU-Caption added
    // 
    // :PMW14.02:88:1
    //   # New function "CheckQCStatusSettings"
    // 
    // :PMW14.02.01:24:1
    //   # Missing Table Captions added
    // 
    // QCSTATUS:PMW15.00:208:1
    //   # New field 9 "Standard Location Code"
    // 
    // QCSTATUS:PMW15.00:224:1
    //   # New function HandleAvailabilityChange
    // 
    // :PMW15.00:241:1
    //   # Field 1 Code, Property NotBlank = Yes
    // 
    // #PMW16.00.01:100 04.11.09 DEMSR.IST
    //   New field 10 "QC Test All Right" added
    //   New field 11 "QC Test Restriction" added
    //   New field 12 "QC Test Blocked" added
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Status';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            Description = ':PMW14.01.00.01:23:1';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Inventory Available"; Boolean)
        {
            Caption = 'Inventory Available';
            Description = ':PMW14.01.00.01:23:1';
        }
        field(4; Transfer; Boolean)
        {
            Caption = 'Transfer';
            Description = ':PMW14.01.00.01:23:1';
        }
        field(5; Sales; Boolean)
        {
            Caption = 'Sales';
            Description = ':PMW14.01.00.01:23:1';
        }
        field(6; Consumption; Boolean)
        {
            Caption = 'Consumption';
            Description = ':PMW14.01.00.01:23:1';
        }
        field(7; "Colour ID"; Integer)
        {
            Caption = 'Colour ID';
        }
        field(8; Bold; Boolean)
        {
            Caption = 'Bold';
            Description = ':PMW14.01.00.01:23:1';
        }
        field(9; "Standard Location Code"; Code[10])
        {
            Caption = 'Standard Location Code';
            Description = 'QCSTATUS:PMW15.00:208:1';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(10; "QC Test All Right"; Boolean)
        {
            Caption = 'QC Test All Right';
            Description = '#PMW16.00.01:100';
        }
        field(11; "QC Test Restriction"; Boolean)
        {
            Caption = 'QC Test Restriction';
            Description = '#PMW16.00.01:100';
        }
        field(12; "QC Test Blocked"; Boolean)
        {
            Caption = 'QC Test Blocked';
            Description = '#PMW16.00.01:100';
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

