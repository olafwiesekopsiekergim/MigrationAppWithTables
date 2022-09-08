table 5013551 "Master BOM Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PRODVIEW:DMW15.01:14:01 #New fields for Production View
    // :DMW15.01:22:01 #Added a new option in field Type, added a new link in field "No." etc.
    // :DMW15.01:21:01 #Added new field 640 "Separate Delivery"
    // :DMW15.01:26:01 #Table Attribute has got a new PrimaryKey
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // 
    // :DMW15.01.00.01:64:01 #New fields: "Wait Time", "Wait Time Unit of Meas. Code", "Move Time", "Move Time Unit of Meas. Code"
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, deleted double Variable
    // :DMW15.02:6:01 #Calculation Group; Move and Wait Tiem field must be copied from "Machine Center"
    // :DMW15.02.00.01:6:01 #corrected DecimalPlaces in some field
    // :DMW16.00:99:01 #Parameter was deleted
    // :DMW16.00.01:78:01 #new field: "Line Discount %" Field ID 627
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // :DMW16.00.02:T101 11.10.10 DEMSR.SSZ
    //   #Get "Main Location Code" from Item Card, if it's not empty
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted calculation fields
    // #DMW16.00.03:T003 01.08.11 DEMSR.SSZ
    //   #New field 5012650 "Calculation Group Code"
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 85115 "Enclosure Drop Shipment"
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5060600 "Copy BOM to Text"
    // #DMW16.00.03.02:A021 06.03.11 DEMSR.SSZ
    //   #Function TestStatusOpen: Also Status must not be "Closed"
    // #DMW16.00.03:02:A023 21.03.12 DEMSR.SSZ
    //   #Correct grammatical issues
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Correct grammatical issues
    //   #Description 2: Text 30 -> 50
    // #DMW17.00.00.01:A0001 15.05.13 DEMSR.SSZ
    //   #Codereview; Set "Lot Size" always to 1
    // #DMW17.10:T103 29.10.13 DEMSR.SSZ
    //   #Only items with Type=Inventory are allowed. Filter in TableRelation
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #New Option in field "Part Type": Purchase
    // #DMW18.00.01:T103 19.05.15 DEMSR.SSZ
    //   #New fields: 1100, 1110, 1120, 1130, 1140, 1150
    // #DMW18.00.01:T105 01.06.15 DEMSR.SSZ
    //   #New field: 990 "Transfer to Sales Document"
    // #DMW18.00.01:T505 24.07.15 DEMSR.SSZ
    //   #Improved check of Routing Link Code within Phantom BOM's
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #AMPW17.00:T104 17.07.13 DEMSR.SSZ
    //   #TableRelations of Unit of Measures: Capacities: Filter "Rental Rate Code"=No; corrected Resource UoM

    Caption = 'Master BOM Line';
    DataCaptionFields = "Code", "Version Code";

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Master BOM Header";
        }
        field(20; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            Description = 'DMW17.71.01-01';
        }
        field(30; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center,Master BOM';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center","Master BOM";
        }
        field(105; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST("Account(G/L)")) "G/L Account"
            ELSE
            IF (Type = CONST(Item)) Item WHERE(Type = CONST(Inventory))
            ELSE
            IF (Type = CONST(Resource)) Resource
            ELSE
            IF (Type = CONST("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST("Machine Center")) "Machine Center"
            ELSE
            IF (Type = CONST("Master BOM")) "Master BOM Header";
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(120; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(130; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
        }
        field(140; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
        }
        field(150; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
        }
        field(180; Variant; Code[20])
        {
            Caption = 'Variant';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(181; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-01';
        }
        field(182; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-01';
        }
        field(183; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-01';
        }
        field(184; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-01';
        }
        field(185; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = 'DMW14.04-01';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight;
        }
        field(186; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-01';
        }
        field(187; "Formula Quantity per"; Text[250])
        {
            Caption = 'Formula Quantity per';
            Description = 'DMW14.04-01';
        }
        field(190; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(200; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Resource)) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            IF (Type = CONST("Work Center")) "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(false))
            ELSE
            IF (Type = CONST("Machine Center")) "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(false));
        }
        field(210; "Qty. per Base Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Base Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(220; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(230; "Part Type"; Option)
        {
            Caption = 'Part Type';
            OptionCaption = 'Standard,Production,Purchase';
            OptionMembers = Standard,Production,Purchase;
        }
        field(240; "Spare Part"; Boolean)
        {
            Caption = 'Spare Part';
        }
        field(250; "Wear Part"; Boolean)
        {
            Caption = 'Wear Part';
        }
        field(260; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
        }
        field(270; "Formula Quantity"; Text[250])
        {
            Caption = 'Formula Quantity';
        }
        field(280; BOM; Boolean)
        {
            CalcFormula = Exist("Item - Master BOM" WHERE(Item = FIELD("No.")));
            Caption = 'BOM';
            Editable = false;
            FieldClass = FlowField;
        }
        field(290; "Formula Setup Time"; Text[250])
        {
            Caption = 'Formula Setup Time';
        }
        field(291; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
        }
        field(292; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(293; "Formula Run Time"; Text[250])
        {
            Caption = 'Formula Run Time';
        }
        field(294; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
        }
        field(295; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(296; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
        }
        field(390; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(400; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(540; Recalculate; Boolean)
        {
            Caption = 'Recalculate';
            Description = 'DMW13.71-04';
        }
        field(627; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:78:01';
            MaxValue = 100;
            MinValue = 0;
        }
        field(640; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(800; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:64:01';
            MinValue = 0;
        }
        field(810; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:64:01';
            MinValue = 0;
        }
        field(820; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = ':DMW15.01.00.01:64:01';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(830; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = ':DMW15.01.00.01:64:01';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(840; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(850; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(860; "Production Lead Time"; DateFormula)
        {
            Caption = 'Production Lead Time';
        }
        field(870; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(880; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            Description = 'DMW14.03-03';
            TableRelation = "Standard Task";
        }
        field(890; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = 'DMW14.03-04';
            TableRelation = IF (Type = CONST(Item)) "Base Material";
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(920; "Belongs to Prod. View Link"; Code[10])
        {
            Caption = 'Belongs to Prod. View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(990; "Transfer to Sales Document"; Boolean)
        {
            Caption = 'Transfer to Sales Document';
            Description = '#DMW18.00.01:T105';
        }
        field(1100; "Parallel Operation Code"; Code[10])
        {
            Caption = 'Parallel Operation Code';
            Description = '#DMW18.00.01:T103';
        }
        field(1110; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            Description = '#DMW18.00.01:T103';
        }
        field(1120; "Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
            Description = '#DMW18.00.01:T103';
        }
        field(1130; "Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
            Description = '#DMW18.00.01:T103';
        }
        field(1140; "Sequence No. (Forward)"; Integer)
        {
            Caption = 'Sequence No. (Forward)';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(1150; "Sequence No. (Backward)"; Integer)
        {
            Caption = 'Sequence No. (Backward)';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(85100; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(85110; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
        }
        field(85115; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(85160; "Formula Valid"; Text[250])
        {
            Caption = 'Formula Valid';
        }
        field(85600; "Entry No. PDB"; Integer)
        {
            Caption = 'Entry No. PDB';
        }
        field(85630; "Delete Status"; Boolean)
        {
            Caption = 'Delete Status';
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#DMW16.00.03:T003';
            TableRelation = IF (Type = CONST(Item)) "Calculation Group".Code WHERE(Type = CONST(Item))
            ELSE
            IF (Type = FILTER("Work Center" | "Machine Center" | Resource)) "Calculation Group".Code WHERE(Type = CONST(Capacity));
        }
        field(5060600; "Copy BOM to Text"; Option)
        {
            Caption = 'Copy BOM to Text';
            Description = '#DMW16.00.03:T009';
            OptionCaption = ' ,Production BOM,Doc./Constr. BOM';
            OptionMembers = " ","Production BOM","Doc./Constr. BOM";
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Code", "Version Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No. PDB")
        {
        }

    }

    fieldgroups
    {
    }
}

