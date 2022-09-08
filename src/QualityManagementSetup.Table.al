table 5034555 "Quality Management Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R221 09.08.10 DEMSR.KHS
    //   Plausibility of Determined Value
    // 
    // #QMW16.00.02:R190 09.08.10 DEMSR.KHS
    //   Transfer Items if Test failed
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.02.06:T524 03.05.11 DEMSR.KHS
    //   Table caption corrected
    // 
    // #QMW16.00.03:R269 08.07.11 DEMSR.KHS
    //   New Field: Inventory Overview Display
    // 
    // #QMW16.00.03:R462 12.08.11 DEMSR.KHS
    //   New Field: Stability Test Nos.
    // 
    // #QMW16.00.03.01:T401 10.02.12 DEMSR.KHS
    //   Add Blob for Test Plan´s Document
    //   - Field "Test Plan Int. Document Path" added
    // 
    // #QMW17.00:104 20.06.12 DEMSR.KHS
    //   "Test Plan Ext. Doc. Path" renamed to "Ext. Doc. Path"
    // 
    // #QMW17.00:301 23.08.12 DEMSR.KHS
    //   Create Test Order automatically
    //     New field: "Prod. Test Order Creation"
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.01:T101 30.04.15 DEMSR.KHS
    //   Add 8D Report fields
    // 
    // #QMW18.00.01:T103 05.05.15 DEMSR.KHS
    //   add Sample Planning fields
    // 
    // #QMW18.00.01:T104 11.05.15 DEMSR.KHS
    //   add field: "Use Unspecified Status on TO"
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   add Retain Samples fields
    // 
    // #PMW18.00.01:T101 20.06.15 DEMSR.KHS
    //   Add Trading Unit field for Retain Sampling

    Caption = 'Quality Management Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            Editable = false;
        }
        field(5; "Test Property Nos."; Code[20])
        {
            Caption = 'Test Property Nos.';
            TableRelation = "No. Series";
        }
        field(10; "Test Property Set Nos."; Code[20])
        {
            Caption = 'Test Property Set Nos.';
            TableRelation = "No. Series";
        }
        field(15; "Test Device Nos."; Code[20])
        {
            Caption = 'Test Device Nos.';
            TableRelation = "No. Series";
        }
        field(20; "Test Plan Nos."; Code[20])
        {
            Caption = 'Test Plan Nos.';
            TableRelation = "No. Series";
        }
        field(25; "Test Order Nos."; Code[20])
        {
            Caption = 'Test Order Nos.';
            TableRelation = "No. Series";
        }
        field(100; "Test Order Unblocks Test Dev."; Boolean)
        {
            Caption = 'Test Order Unblocks Test Device';
        }
        field(110; "Ext. Document Path"; Text[250])
        {
            Caption = 'Ext. Document Path';
            Description = '#QMW17.00';
        }
        field(111; "Temp Document Path"; Text[250])
        {
            Caption = 'Temp Document Path';
            Description = '#QMW16.00.03.01:T401,#QMW17.00';
        }
        field(112; "Document Storage Point"; Option)
        {
            Caption = 'Document Storage Point';
            InitValue = "In Database";
            OptionCaption = 'External Document Path,In Database';
            OptionMembers = "External Document Path","In Database";
        }
        field(120; "Use Without Expected Value"; Boolean)
        {
            Caption = 'Use Without Expected Value';
            Description = '#QMW16.00.02:R221';
        }
        field(130; "Default Blocked Item Location"; Code[10])
        {
            Caption = 'Default Blocked Item Location Code';
            Description = '#QMW16.00.02:R190';
            TableRelation = Location;
        }
        field(140; "L/S-Status on T.O. Release"; Code[20])
        {
            Caption = 'Lot-/Serial No.-Status on Test Order Release';
            Description = '#QMW16.00.02:X001';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(150; "L/S-Status on T.O. Finish"; Code[20])
        {
            Caption = 'Lot-/Serial No.-Status on Test Order Finish';
            Description = '#QMW16.00.02:X001';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(160; "Inventory Overview Display"; Option)
        {
            Caption = 'Inventory Overview Display';
            Description = '#QMW16.00.03:R269';
            OptionCaption = 'Base Unit of Measure,Unit Of Measure';
            OptionMembers = "Base Unit of Measure","Unit Of Measure";
        }
        field(170; "Stability Test Nos."; Code[20])
        {
            Caption = 'Stability Test Nos.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "No. Series";
        }
        field(175; "8D Report Nos."; Code[20])
        {
            Caption = '8D Report Nos.';
            Description = '#QMW18.00.01:T101';
            TableRelation = "No. Series";
        }
        field(176; "8D Template Nos."; Code[20])
        {
            Caption = '8D Template Nos.';
            Description = '#QMW18.00.01:T101';
            TableRelation = "No. Series";
        }
        field(177; "Default 8D Template Nos."; Code[20])
        {
            Caption = 'Default 8D Template No.';
            Description = '#QMW18.00.01:T101';
            TableRelation = "8D Template Header";
        }
        field(180; "Change Status on blocked Lot"; Boolean)
        {
            Caption = 'Change Status on blocked Lot';
            Description = '#QMW16.00.03.01';
        }
        field(190; "Prod. Test Order Creation"; Option)
        {
            Caption = 'Prod. Test Order Creation';
            Description = '#QMW17.00:301';
            OptionCaption = 'Manually,Prod. Order Release,First Output';
            OptionMembers = Manually,"Prod. Order Release","First Output";
        }
        field(250; "Sample Occurrence Nos."; Code[20])
        {
            Caption = 'Sample Occurrence Nos.';
            Description = '#QMW18.00.01:T103';
            TableRelation = "No. Series";
        }
        field(270; "Test Incident Nos."; Code[20])
        {
            Caption = 'Test Incident Nos.';
            Description = '#QMW18.00.01:T103';
            TableRelation = "No. Series";
        }
        field(300; "Use Unspecified Status on TO"; Boolean)
        {
            Caption = 'Use Unspecified Status on Test Order';
            Description = '#QMW18.00.01:T104';
        }
        field(350; "Retain Sample Status Code"; Code[20])
        {
            Caption = 'Retain Sample Status Code';
            Description = '#QMW18.00.01:T105';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5012400; "Retain Sample Start Trad. Unit"; Code[20])
        {
            Caption = 'Retain Sample Start Trading Unit No.';
            Description = '#QMW18.00.01:T105,#PMW18.00.01:T101';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

