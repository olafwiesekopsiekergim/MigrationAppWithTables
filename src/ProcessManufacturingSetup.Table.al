table 5012400 "Process Manufacturing Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.01:2465:1
    //   # New field 270 "R&D Item No."
    // 
    // :PMW14.01:19:1
    //   # New field 280 "Net Weight Unit of Measure"
    // 
    // :PMW14.02:28:1
    //   # New field 290 "Routing TAN Series No."
    // 
    // :PMW14.02:149:1
    //   # New field 300 "Fixed Maint.-Job Type No."
    //   # New field 310 "Min. Duration fixed Maint.-Job"
    //   # New field 320 "Min. Duration UOM Code"
    // 
    // :PMW14.02:154:1
    //   # New field 330 "Update Multilevel Prod. Orders"
    // 
    // :PMW14.02:94:1
    //   # New field 285 "Volume Unit of Measure"
    //   # Field 280 "Net Weight Unit of Measure" changed to "Weight Unit of Measure"
    // 
    // :PMW14.02:173:1
    //   # New field 340 "Condition Nos."
    // 
    // :PMW14.02.01:56:1
    //   # Field 50 renamed to "By-Production Series No."
    // 
    // :PMW14.02.01:13:1
    //   # New field 350 "Use Prod. Order No. as Lot No."
    // 
    // :PMW15.00:207:1
    //   # New field 360 "Edit QC Test in Lot No. Info."
    // 
    // BOTTLING:PMW15.00:204:1
    //   # New field 370 "Bottling Method of Prod. Code"
    // 
    // CALC:PMW15.00:199:1
    //   # New field 380 "Calculation Schedule Nos."
    //   # New field 390 "Calculation Nos."
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:246:1
    //   # Field 220 "Feedback Journal Template Name" deleted
    //   # Field 230 "Feedback Journal Batch Name" deleted
    // 
    // CALC:PMW15.01:75:1
    //   # New field 395 "Concurrent Calculation Nos."
    //   # New field 405 "Standard Calc. Schedule No."
    // 
    // :PMW15.01:83:1
    //   # New field 410 "Price Source in Calculation" added
    // 
    // :PMW15.01:93:1
    //   # New field 450 "No Plan. Flex. on Seq. Plan."
    // 
    // :PMW16.00:156:1
    //   Field 10 "Maintenance-/Setup Job No." relocated to Planning Extension Setup
    //   Field 11 "Item f.Maintenance-/Setup Job" relocated to Planning Extension Setup
    //   Field 12 "Maint.-/Setup Job-Prod.Sched." relocated to Planning Extension Setup
    //   Field 120 "Maint.-/Setup Job in DelayList" relocated to Planning Extension Setup
    //   Field 300 "Fixed Maint.-Job Type No." relocated to Planning Extension Setup
    //   Field 310 "Min. Duration fixed Maint.-Job" relocated to Planning Extension Setup
    //   Field 320 "Min. Duration UOM Code" relocated to Planning Extension Setup
    // 
    // :PMW16.00:160:1
    //   Field 100 "Start.Per.Utilization Display" relocated to Planning Extension Setup
    //   Field 110 "Starting Period Plan Table" relocated to Planning Extension Setup
    //   Field 111 "Delimiter Plan Table" relocated to Planning Extension Setup
    //   Field 250 "Setup Hours per Day" relocated to Planning Extension Setup
    // 
    // :PMW16.00:155:1
    //   Field 450 "No Plan. Flex. on Seq. Plan." relocated to Planning Extension Setup
    // 
    // #PMW16.00.01.01:T500 02.02.10 DEMSR.IST
    //   Field 330 "Update Multilevel Prod. Orders" deleted
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation fields deleted --> #CAW16.00:T100:1
    // 
    // #PMW16.00.02:T260 27.09.10 DEMSR.BKR Enhancement of item tracking lines creation
    //   Field "Create Item Trkg. at Reserv." added
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR
    //   Management of Active Ingredients
    //   New field 390 "Ingredient Nos."
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New field 400 "Use Location and Bin Defaults"
    // 
    // #PMW16.00.03:T103 20.07.11 DEMSR.IST
    //   New field 401 "Allow Product Design change"
    // 
    // #PMW16.00.03:T510 15.09.11 DEMSR.IST
    //   Field 210, Name and ENU-Caption changed to "Work Center for Tool Planning"
    //   Field 240, Name and ENU-Caption changed to "Template Toolkits"
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   Field 401 "Allow Product Design Change", Name and ENU-Caption changed
    //   Field 31 "Recipe Series No.", Name and Captions changed (Recipe Nos.)
    //   Field 41 "Production Plan Series No.", Name and Captions changed (Production Structure Nos.)
    //   Field 45 "Prod.BOM Vers. Series No.", Name and Captions changed (Prod. BOM Vers. Nos.)
    //   Field 46 "Recipe Vers. Series No.", Name and Captions changed (Recipe Vers. Nos.)
    //   Field 47 "Routing Vers. Series No.", Name and Captions changed (Routing Vers. Nos.)
    //   Field 50 "By-Production Series No.", Name and Captions changed (By-Production Nos.)
    //   Field 290 "Routing TAN Series No.", Name and Captions changed (Routing TAN Nos.)
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01.01:T503 05.12.14 DEMSR.KHS
    //   Field added: "Work Center for Parall.Routing"

    Caption = 'Process Manufacturing Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(31; "Recipe Nos."; Code[20])
        {
            Caption = 'Recipe Nos.';
            TableRelation = "No. Series";
        }
        field(41; "Production Structure Nos."; Code[20])
        {
            Caption = 'Production Structure Nos.';
            TableRelation = "No. Series";
        }
        field(42; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
        }
        field(45; "Prod. BOM Vers. Nos."; Code[20])
        {
            Caption = 'Prod. BOM Vers. Nos.';
            TableRelation = "No. Series";
        }
        field(46; "Recipe Vers. Nos."; Code[20])
        {
            Caption = 'Recipe Vers. Nos.';
            TableRelation = "No. Series";
        }
        field(47; "Routing Vers. Nos."; Code[20])
        {
            Caption = 'Routing Vers. Nos.';
            TableRelation = "No. Series";
        }
        field(50; "By-Production Nos."; Code[20])
        {
            Caption = 'By-Production Nos.';
            TableRelation = "No. Series";
        }
        field(210; "Work Center for Tool Planning"; Code[20])
        {
            Caption = 'Work Center for Tool Planning';
            Description = '#PMW16.00.03:T510';
            TableRelation = "Work Center";
        }
        field(220; "Work Center for Parall.Routing"; Code[20])
        {
            Caption = 'Work Center for Parallel Routing';
            Description = '#PMW17.10.01.01:T503';
            TableRelation = "Work Center";
        }
        field(240; "Template Toolkits"; Code[20])
        {
            Caption = 'Template Toolkits';
            Description = '#PMW16.00.03:T510';
            TableRelation = "QC Template Header".Code;
        }
        field(260; "Reclaimed Base Unit of Meas."; Code[20])
        {
            Caption = 'Reclaimed Base Unit of Meas.';
            TableRelation = "Unit of Measure".Code;
        }
        field(270; "R&D Item No."; Code[20])
        {
            Caption = 'R&&D Item No.';
            Description = ':PMW14.01:2465:1';
            TableRelation = Item;
        }
        field(280; "Weight Unit of Measure"; Code[10])
        {
            Caption = 'Weight Unit of Measure';
            Description = ':PMW14.01:19:1';
            TableRelation = "Unit of Measure";
        }
        field(285; "Volume Unit of Measure"; Code[10])
        {
            Caption = 'Volume Unit of Measure';
            TableRelation = "Unit of Measure";
        }
        field(290; "Routing TAN Nos."; Code[10])
        {
            Caption = 'Routing TAN Nos.';
            Description = ':PMW14.02:28:1';
            TableRelation = "No. Series";
        }
        field(340; "Condition Nos."; Code[10])
        {
            Caption = 'Condition Nos.';
            TableRelation = "No. Series";
        }
        field(350; "Use Prod. Order No. as Lot No."; Boolean)
        {
            Caption = 'Use Prod. Order No. as Lot No.';
            Description = ':PMW14.02.01:13:1';
        }
        field(360; "Edit QC Test in Lot No. Info."; Boolean)
        {
            Caption = 'Edit QC Test in Lot No. Info.';
            Description = ':PMW15.00:207:1';
        }
        field(370; "Bottling Method of Prod. Code"; Code[10])
        {
            Caption = 'Method of Production Code';
            Description = 'BOTTLING:PMW15.00:204:1';
            TableRelation = "Method of Production";
        }
        field(380; "Create Item Trkg. at Reserv."; Boolean)
        {
            Caption = 'Create Item Tracking at Reservation';
            Description = '#PMW16.00.02:T260';
        }
        field(390; "Ingredient Nos."; Code[10])
        {
            Caption = 'Ingredient Nos.';
            Description = '#PMW16.00.02:T230';
            TableRelation = "No. Series";
        }
        field(400; "Use Location and Bin Defaults"; Boolean)
        {
            Caption = 'Use Location and Bin Defaults';
            Description = '#PMW16.00.03:T102';
        }
        field(401; "Allow Product Design Change"; Boolean)
        {
            Caption = 'Allow Product Design Change in Prod. Order Line';
            Description = '#PMW16.00.03:T103';
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

