table 5013559 "Document BOM"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:6:01 #Resources got a wrong Unit Cost, when "Qty. per Unit of Measure" <> 1; no negative Outstanding Qty.
    // :DMW15.01:17:01 #corrected the "Quantity per" calculation
    // :DMW15.01:18:01 #Functionallity of TestStatusOpen corrected
    // PRODVIEW:DMW15.01:14:01 #New fields for Production View
    // :DMW15.01:22:01 #Added a new option in field Type, added a new link in field "No." etc.
    // :DMW15.01:21:01 #Added new field 640 "Separate Delivery"
    // :DMW15.01:25:01 #Added New FlowField 980 "Const. Inquiry exists"
    // :DMW15.01:26:01 #New PrimaryKey in table Attribute
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // 
    // :DMW15.01.00.01:20:01 #Changes to get the default Dimensions
    // :DMW15.01.00.01:64:01 #Update Attributes for Wait and Move Time
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, deleted and renamed double Variables, corrected Caption
    // 
    // :DMW15.01.00.02:6:01 #BOMCapNeed must be deleted, too
    // :DMW15.02:6:01 #Wait and Move Tiem field must be copied from cards
    // :DMW15.02.00.01:6:01 #renamed field 410 to "Bin Code" and corrected field length; corrected DecimalPlaces in some field
    // :DMW16.00:6:01 #Insert default Dimension when No. will be typed in (:DMW15.01.00.01:20:01)
    // :DMW16.00:6:02 #Changed logic of Status tests (:DMW15.01:18:01)
    // :DMW16.00:99:01 #Parameter was deleted
    // :DMW16.00.00.01:6:01 #Changed some Captions
    // :DMW16.00.00.02:24:01 #Using Work- and Machine-Centers the  "Direct Unit Cost" was copied, but the Unit Cost must be used
    // :DMW16.00.01:78:01 #new field for: Line Discount (Field ID's 627; 628)
    // :DMW16.00.01:6:01 #Update Unit Price if exp. quantity has changed
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // :DMW16.00.02:6:01 #Lines with "Information Line" = TRUE must not be reserved
    // 
    // :DMW16.00.02:T101 11.10.10 DEMSR.SSZ
    //   #Get "Main Location Code from Item Card, if it's not empty
    // #DMW16.00.02:T103 20.10.10 DEMSR.SSZ
    //   #New parameter needed in function SetLevel; deleted unneeded code; New function "ClearNumbers", "OpenNextLevel"
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted fields: "Calculation Group", "Belongs to Calc.option blank", "Belongs to CalcOption blank SH"
    //   #deleted Key "Document No.", "Calculation Group"
    // #DMW16.00.02.03:A0004 26.04.11 DEMSR.SSZ
    //   #Corrected field names and Caption (Ammount --> Amount)
    // #DMW16.00.03:A0004 26.07.11 DEMSR.SSZ
    //   #save also "Location Code" when inserting "No."
    // #DMW16.00.03:T003 01.08.11 DEMSR.SSZ
    //   #New field 5012650 "Calculation Group Code"
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 85115 "Enclosure Drop Shipment"
    // #DMW16.00.03:A002 30.08.11 DEMSR.SSZ
    //   #"Exp. Quantity" must not be changed manually when "Quantity per" and "Calculation Formula"
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5060600 "Copy BOM to Text"
    // #DMW16.00.03:T013 20.10.11 DEMSR.SSZ
    //   #New field 1000; new function PurchaseExists; not allowed to change rec, when a purchase order for g/l account was created
    // #DMW16.00.03.02:A021 06.03.11 DEMSR.SSZ
    //   #Function TestStatusOpen is not longer local because it's used in other codeunit
    // #DMW17.00:A001 02.04.12 DEMSR.SSZ
    //   #Changes because of NAV7; increased "Release of" to Code 50
    //   #Management of Dimensions
    //   #New functions for inventory profile offsetting
    //   #Description 2: Text 30 -> 50
    //   #Field Variant -> Variant Code
    //   #Grammar issue
    // #DMW17.00:A0012 30.11.12 DEMSR.SSZ
    //   #changes because of changed reservation technique
    // #DMW17.00.00.01:A0001 03.05.13 DEMSR.SSZ
    //   #Function ShowReservationText: If text to long, terminate the loop
    // #DMW17.00.00.01:A0019 21.08.13 DEMSR.SSZ
    //   #Analyze CTO Setup if lines for planing exist or not
    // #DMW17.10:T103 29.10.13 DEMSR.SSZ
    //   #Only items with Type=Inventory are allowed. Filter in TableRelation
    // #DMW17.10.00.02:T500 13.02.14 DEMSR.SSZ
    //   #Renamed "Enquiry" to "Inquiry"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T505 22.09.14 DEMSR.SSZ
    //   #Only fill in a "Belongs to Entry No." if this parent line also exists. Possible error when deleting and reinserting lines
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #Field CTOSetup."Only free Doc.-BOM-Lines" no longer exists. Always only released BOM Lines get analysed
    //   #New Option in field "Part Type": Purchase
    // #DMW18.00.01:T103 19.05.15 DEMSR.SSZ
    //   #New field: 1100 "Parallel Operation Code"
    //   #Deleted global variable DocumentBOM
    // #DMW18.00.01:T104 28.05.15 DEMSR.SSZ
    //   #Delete posting function and fields:
    //   #"Posting Quantity (Base)", "Posting Quantity", "Posted Quantity (Base)", "Posted Quantity", "Outstanding Qty. (Base)", "Outstanding Qty."
    // #DMW18.00.01:T105 01.06.15 DEMSR.SSZ
    //   #New field: 990 "Transfer to Sales Document"
    // #DMW18.00.01:T111 16.06.15 DEMSR.SSZ
    //   #Direct purchase also for Items
    //   #Corrected function ShowReservationText
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #AMPW17.00:T104 17.07.13 DEMSR.SSZ
    //   #TableRelations of Unit of Measures: Capacities: Filter "Rental Rate Code"=No; corrected Resource UoM

    Caption = 'Document BOM';
    DataCaptionFields = "Document No.";
    PasteIsValid = false;

    fields
    {
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
            NotBlank = true;
        }
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(50; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
            Editable = false;
        }
        field(60; "Level Line No."; Integer)
        {
            Caption = 'Level Line No.';
            Editable = false;
        }
        field(70; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(80; "Entry No. Representation"; Integer)
        {
            Caption = 'Entry No. Representation';
            Editable = false;
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
        field(180; "Variant Code"; Code[20])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(181; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-03';
        }
        field(182; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-03';
        }
        field(183; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-03';
        }
        field(184; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-03';
        }
        field(185; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = 'DMW14.04-03';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight;
        }
        field(186; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-03';
        }
        field(188; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.04-03';
            Editable = false;
        }
        field(190; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(200; "Exp. Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Exp. Quantity Unit of Measure';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Resource)) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            IF (Type = CONST("Work Center")) "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(false))
            ELSE
            IF (Type = CONST("Machine Center")) "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(false));
        }
        field(220; "Exp. Quantity (Base)"; Decimal)
        {
            Caption = 'Exp. Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(225; "Quantity (Base, Parent)"; Decimal)
        {
            Caption = 'Quantity (Base, Parent)';
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
        field(300; "Information Line"; Boolean)
        {
            Caption = 'Information Line';
            Editable = false;
        }
        field(310; "Sub BOM"; Boolean)
        {
            CalcFormula = Exist("Document BOM" WHERE("Document No." = FIELD("Document No."),
                                                      "Belongs to Entry No." = FIELD("Entry No.")));
            Caption = 'Sub BOM';
            Editable = false;
            FieldClass = FlowField;
        }
        field(330; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(340; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
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
        field(410; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(500; Source; Code[20])
        {
            Caption = 'Source';
            TableRelation = "BOM Type".Type;
        }
        field(510; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Open,Released,Closed;
        }
        field(520; "Released of"; Code[50])
        {
            Caption = 'Released of';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(530; "Released to"; Date)
        {
            Caption = 'Released to';
            Editable = false;
        }
        field(600; "Unit Cost (CC)"; Decimal)
        {
            Caption = 'Unit Cost (CC)';
            DecimalPlaces = 2 : 5;
        }
        field(610; "Unit Amount (CC)"; Decimal)
        {
            Caption = 'Unit Amount (CC)';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(620; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 2 : 5;
        }
        field(627; "Line Discount %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:78:01';
            MaxValue = 100;
            MinValue = 0;
        }
        field(628; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
            Description = ':DMW16.00.01:78:01';
        }
        field(630; "Order Tracking Relevance"; Boolean)
        {
            Caption = 'Order Tracking Relevance';
        }
        field(640; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(700; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
            Description = 'DMW14.00-04';
        }
        field(710; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            Description = 'DMW14.00-04';
        }
        field(720; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
            Description = 'DMW14.00-04';
        }
        field(730; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            Description = 'DMW14.00-04';
        }
        field(740; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Description = 'DMW14.00-04';
        }
        field(743; "Due Time"; Time)
        {
            Caption = 'Due Time';
            Description = 'DMW14.00-04';
        }
        field(746; "Due Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Due Date-Time';
            Description = 'DMW14.00-04';
        }
        field(750; "Starting Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Starting Date-Time';
            Description = 'DMW14.00-04';
        }
        field(760; "Ending Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Ending Date-Time';
            Description = 'DMW14.00-04';
        }
        field(770; "Schedule Manually"; Boolean)
        {
            Caption = 'Schedule Manually';
            Description = 'DMW14.00-04';
        }
        field(780; "Expected Capacity Need"; Decimal)
        {
            Caption = 'Expected Capacity Need';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.00-04';
        }
        field(800; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.00-04';
            MinValue = 0;
        }
        field(810; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            Description = 'DMW14.00-04';
            MinValue = 0;
        }
        field(820; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = 'DMW14.00-04';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(830; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = 'DMW14.00-04';
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
            Description = 'DMW14.03-04';
            TableRelation = "Standard Task";
        }
        field(890; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = 'DMW14.03-05';
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
        field(930; "Belongs to Entry No. saved"; Integer)
        {
            Caption = 'Belongs to Entry No. saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(940; "Level Line No. saved"; Integer)
        {
            Caption = 'Level Line No. saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(950; "Level saved"; Integer)
        {
            Caption = 'Level saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(960; "Entry No. Representation saved"; Integer)
        {
            Caption = 'Entry No. Representation saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(970; "Production View"; Boolean)
        {
            Caption = 'Production View';
            Description = 'PRODVIEW:DMW15.01:14:01';
        }
        field(980; "Constr. Inquiry Exists"; Boolean)
        {
            CalcFormula = Exist("Construction Header" WHERE("Document Type" = CONST("Document BOM"),
                                                             "Document No." = FIELD("Document No."),
                                                             "Line No." = FIELD("Entry No.")));
            Caption = 'Constr. Inquiry Exists';
            Description = ':DMW15.01:25:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(990; "Transfer to Sales Document"; Boolean)
        {
            Caption = 'Transfer to Sales Document';
            Description = '#DMW18.00.01:T105';
        }
        field(1000; "Purchase Status"; Option)
        {
            Caption = 'Purchase Status';
            Description = '#DMW16.00.03:T013';
            Editable = false;
            OptionCaption = ' ,Purchase Created,Purchase Posted';
            OptionMembers = " ","Purchase Created","Purchase Posted";
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
        field(5703; "Originally Ordered No."; Code[20])
        {
            Caption = 'Originally Ordered No.';
            TableRelation = IF (Type = CONST(Item)) Item;
        }
        field(5704; "Originally Ordered Var. Code"; Code[10])
        {
            Caption = 'Originally Ordered Var. Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("Originally Ordered No."));
        }
        field(85050; "Unit Amount"; Decimal)
        {
            Caption = 'Unit Amount';
            DecimalPlaces = 2 : 2;
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
        field(85250; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(85260; "Reserved Quantity"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry".Quantity WHERE("Source Type" = CONST(5013559),
                                                                   "Source ID" = FIELD("Document No."),
                                                                   "Source Ref. No." = FIELD("Entry No."),
                                                                   "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(85270; "Reserved Qty. (Base)"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Source Type" = CONST(5013559),
                                                                            "Source ID" = FIELD("Document No."),
                                                                            "Source Ref. No." = FIELD("Entry No."),
                                                                            "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(85280; Reserve; Option)
        {
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(85300; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
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
        key(Key1; "Document No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Belongs to Entry No.", "Level Line No.")
        {
        }
        key(Key3; "Document No.", "Entry No. Representation")
        {
        }
        key(Key4; "Document No.", Level, "Level Line No.")
        {
        }
        key(Key5; "Entry No. PDB")
        {
        }
        key(Key6; "Document No.", "Belongs to Entry No.", "Entry No. Representation")
        {
        }


        key(Key9; "No.", Type, "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Variant Code", "Shipment Date", Status, "Order Tracking Relevance", "Information Line")
        {
            SumIndexFields = "Exp. Quantity (Base)";
        }
        key(Key10; "Separate Prod. Order", Type, Status, Level)
        {
        }
    }

    fieldgroups
    {
    }
}

