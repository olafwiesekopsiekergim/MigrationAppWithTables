table 5407 "Prod. Order Component"
{
    // #PXW16.00:107 04.02.09 DEMSR.IG
    //   New field 5012700 "Status Filter"
    // 
    // #PXW16.00:102 05.02.09 DEMSR.IG
    //   New Key <"Item No.", "Due Date", Status, "Remaining Quantity">
    // 
    // #PXW17.00.00.04:T501 07.10.13 DEMSR.KHS
    //   Add Key Group PX to key:
    //     "Item No.","Due Date",Status,"Remaining Quantity"
    // 
    // #CAW16.00.01:T101 07.07.11 DEMSR.IST
    //   New field 5012650 "Calculation Group Code" added
    //   Transfer "Calculation Group Code" from Item
    // 
    // :DMW13.60.03:1:01 #neues Feld: Kalkulationsgruppe
    //  # neue Felder: "Konstruktionsnr."; "Konstruktionszeilennr."
    // :DMW13.60.03:1:02 #neues Feld: Beistellung; "Umlagerung erstellt"; "Umlagerung gebucht"; "Old Location Code"
    //  # Wenn eines der neuen Häkchen gesetzt ist, darf der Lagerortcode nicht mehr verändert werden
    // 
    // :DMW13.70.01:1:01 #neues Feld Quelltyp: woher kommen die Komponeten: "Beleg Stückliste" oder Konstruktion
    //  # Felder: "Konstruktionsnr." und "Konstruktionszeilennr." umbenannt in
    //  #         "Quellnr." und "Quellzeilennr."
    // 
    // :DMW13.71:1:01 #neue Felder:
    //  # 5013470 "separate Prod. Order"  und dieses füllen
    //  # 5013480 "Supplied-by Status"
    //  # 5013490 Supplied-by PO No."
    //  # Löschweitergabe angepasst
    //  # Key angelegt: Status,Quelltyp,"Quellnr.","Quellzeilennr.","separate Prod. Order"
    // :DMW13.71:1:03 #Beistellung mit Umlag.-Buchbl. und Reserv. der Beistellartikel abfangen da Reserv.-Posten nicht durchgereicht werden
    // :DMW13.71:1:04 #neues Feld 5013465 "Old Bin Code"
    // :DMW14.03:1:01 #neues Feld 5013500 "Base Material"
    // :DMW15.01:21:01 #Added new field 5013510 "Separate Delivery"
    // :DMW15.01:59:01 #Created SQLKey, filled in KeyGroups
    // :DMW15.01.00.01:6:01 #reactivated Test and ValidateTableRelation in field 5013460, corrected IF-THEN-Structure
    // :DMW16.00.01:70:01 #New function to manage Attributes
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // :DMW16.00.02:T101 11.10.10 DEMSR.SSZ
    //   #Get "Main Location Code" from Item Card, if it's not empty
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 2,3,4,5
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted field: "Calculation Group"
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 5013435 "Enclosure Drop Shipment"
    // #DMW16.00.03:A003 14.09.11 DEMSR.SSZ
    //   #New key "Supplied-by PO No.","Supplied-by Line No.","Supplied-by Status"
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5013520 "Copy BOM to Text"
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW16.00.03:02:A023 21.03.12 DEMSR.SSZ
    //   #Correct grammatical issues
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Description 2: Text 30 -> 50
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T500 03.09.14 DEMSR.SSZ
    //   #License check was missed
    // #DMW18.00.00.02:T500 04.03.15 DEMSR.SSZ
    //   #Check if Line No. is not 0 in function LookUpAttributes
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #QMW16.00.01:R001 30.11.09 DEMSR.KHS
    //   Customer / Item Specification tables
    // 
    // #QMW16.00.03:R472 09.08.11 DEMSR.KHS
    //   New field: "Test Plan No."
    //   New Functions: CopyTestPlanToSpecific
    //                  CustomizeTestPlan
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // :PMW13.70:1:1
    //   Option of field 44 "Calculation Formula" expanded with Recipe
    //   New field 5012560 "Share %"
    // 
    // :PMW13.70:1:3
    //   New key <"Item No.","Due Date",Status> for Forms 5012540 and 5012541
    // 
    // :PMW14.01:2523:1
    //   New field 5012541 "Sprue Bush %"
    //   Function ProdOrderNeeds, Erweiterung der Berechnung von "Erw. Menge" um Anguss %
    // 
    // :PMW14.01.00.01:23:1
    //   Correction OptionString "Calculation Formula"
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:55:1
    //   New field 5012542 "Incorporation"
    //   OnDelete, call Incorporation Mgt.
    // 
    // :PMW14.02:53:1
    //   New field 5012543 "Returnable Container"
    //   Item No. - OnValidate, tansfer "Returnable Container" from Item
    // 
    // :PMW14.02:88:1
    //   New field 5012400 "Lot Determining"
    //   New function "CheckLotDetermining"
    //   Item No. - OnValidate, call function "CheckLotDetermining"
    // 
    // :PMW14.02.01:24:1
    //   Wrong ENU-caption field "Incorporation"
    // 
    // :PMW14.02.01:89:1
    //   Changed cost calculation for returnable container
    // 
    // :PMW14.02.01:99:1
    //   New field 5012410 "Recipe Share"
    // 
    // :PMW15.00:241:1
    //   Changes due to UI and programming standards
    // 
    // :PMW15.00.01:45:1
    //   Check license permissions
    // 
    // :PMW16.00:122:1
    //   New field 5012411 "Data Control Picture"
    // 
    // :PMW16.00:148:1
    //   Sprue bush only for recipe prod. order components
    // 
    // :PMW16.00:160:1
    //   Changed Field for Detail Planning --> #PXW16.00:107
    // 
    // #PMW16.00.00.03:100 21.09.09 DEMSR.IG
    //   Changes due to changes in standard release 6.00 SP1
    // 
    // #PMW16.00.02:T302 25.10.10 DEMSR.IST
    //   New field 5012402 "Expiration Determining"
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New function CheckDefaultLocationAndBin
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T101 02.04.2014 DEMSR.IST
    //   Ingredient redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW18.00.00.03:T500 12.02.15 DEMSR.KHS
    //   Update / Correct dummy usage
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List
    // #AMPW17.10.01:T099 05.05.14 DEMSR.SSZ
    //   LicPermission record variable for different modules

    Caption = 'Prod. Order Component';
    DataCaptionFields = Status, "Prod. Order No.";
    PasteIsValid = false;

    fields
    {
        field(1; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE(Status = FIELD(Status));
        }
        field(3; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE(Status = FIELD(Status),
                                                                 "Prod. Order No." = FIELD("Prod. Order No."));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(11; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item WHERE(Type = CONST(Inventory));
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(15; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(16; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(17; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(18; "Lead-Time Offset"; DateFormula)
        {
            Caption = 'Lead-Time Offset';
        }
        field(19; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(20; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(21; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(25; "Expected Quantity"; Decimal)
        {
            Caption = 'Expected Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(26; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(27; "Act. Consumption (Qty)"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            CalcFormula = - Sum("Item Ledger Entry".Quantity WHERE("Entry Type" = CONST(Consumption),
                                                                   "Order Type" = CONST(Production),
                                                                   "Order No." = FIELD("Prod. Order No."),
                                                                   "Order Line No." = FIELD("Prod. Order Line No."),
                                                                   "Prod. Order Comp. Line No." = FIELD("Line No.")));
            Caption = 'Act. Consumption (Qty)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            OptionCaption = 'Manual,Forward,Backward,Pick + Forward,Pick + Backward';
            OptionMembers = Manual,Forward,Backward,"Pick + Forward","Pick + Backward";
        }
        field(30; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(31; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(32; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(33; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Location Code"));
        }
        field(35; "Supplied-by Line No."; Integer)
        {
            Caption = 'Supplied-by Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE(Status = FIELD(Status),
                                                                 "Prod. Order No." = FIELD("Prod. Order No."),
                                                                 "Line No." = FIELD("Supplied-by Line No."));
        }
        field(36; "Planning Level Code"; Integer)
        {
            Caption = 'Planning Level Code';
            Editable = false;
        }
        field(37; "Item Low-Level Code"; Integer)
        {
            Caption = 'Item Low-Level Code';
        }
        field(40; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
        }
        field(41; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
        }
        field(42; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(43; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
        }
        field(44; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = ':PMW14.01.00.01:23:1';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(45; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(50; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            DecimalPlaces = 2 : 5;
        }
        field(51; "Cost Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount';
            Editable = false;
        }
        field(52; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(53; "Due Time"; Time)
        {
            Caption = 'Due Time';
        }
        field(60; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(61; "Remaining Qty. (Base)"; Decimal)
        {
            Caption = 'Remaining Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(62; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(63; "Reserved Qty. (Base)"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Source ID" = FIELD("Prod. Order No."),
                                                                            "Source Ref. No." = FIELD("Line No."),
                                                                            "Source Type" = CONST(5407),
                                                                            "Source Subtype" = FIELD(Status),
                                                                            "Source Batch Name" = CONST(''),
                                                                            "Source Prod. Order Line" = FIELD("Prod. Order Line No."),
                                                                            "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = true;
            FieldClass = FlowField;
        }
        field(71; "Reserved Quantity"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry".Quantity WHERE("Source ID" = FIELD("Prod. Order No."),
                                                                   "Source Ref. No." = FIELD("Line No."),
                                                                   "Source Type" = CONST(5407),
                                                                   "Source Subtype" = FIELD(Status),
                                                                   "Source Batch Name" = CONST(''),
                                                                   "Source Prod. Order Line" = FIELD("Prod. Order Line No."),
                                                                   "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Expected Qty. (Base)"; Decimal)
        {
            Caption = 'Expected Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(76; "Due Date-Time"; DateTime)
        {
            Caption = 'Due Date-Time';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5702; "Substitution Available"; Boolean)
        {
            CalcFormula = Exist("Item Substitution" WHERE(Type = CONST(Item),
                                                           "Substitute Type" = CONST(Item),
                                                           "No." = FIELD("Item No."),
                                                           "Variant Code" = FIELD("Variant Code")));
            Caption = 'Substitution Available';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5703; "Original Item No."; Code[20])
        {
            Caption = 'Original Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(5704; "Original Variant Code"; Code[10])
        {
            Caption = 'Original Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Original Item No."));
        }
        field(5750; "Pick Qty."; Decimal)
        {
            CalcFormula = Sum("Warehouse Activity Line"."Qty. Outstanding" WHERE("Activity Type" = FILTER(<> "Put-away"),
                                                                                  "Source Type" = CONST(5407),
                                                                                  "Source Subtype" = FIELD(Status),
                                                                                  "Source No." = FIELD("Prod. Order No."),
                                                                                  "Source Line No." = FIELD("Prod. Order Line No."),
                                                                                  "Source Subline No." = FIELD("Line No."),
                                                                                  "Unit of Measure Code" = FIELD("Unit of Measure Code"),
                                                                                  "Action Type" = FILTER(" " | Place),
                                                                                  "Original Breakbulk" = CONST(false),
                                                                                  "Breakbulk No." = CONST(0)));
            Caption = 'Pick Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(7300; "Qty. Picked"; Decimal)
        {
            Caption = 'Qty. Picked';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(7301; "Qty. Picked (Base)"; Decimal)
        {
            Caption = 'Qty. Picked (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(7302; "Completely Picked"; Boolean)
        {
            Caption = 'Completely Picked';
            Editable = false;
        }
        field(7303; "Pick Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum("Warehouse Activity Line"."Qty. Outstanding (Base)" WHERE("Activity Type" = FILTER(<> "Put-away"),
                                                                                         "Source Type" = CONST(5407),
                                                                                         "Source Subtype" = FIELD(Status),
                                                                                         "Source No." = FIELD("Prod. Order No."),
                                                                                         "Source Line No." = FIELD("Prod. Order Line No."),
                                                                                         "Source Subline No." = FIELD("Line No."),
                                                                                         "Action Type" = FILTER(" " | Place),
                                                                                         "Original Breakbulk" = CONST(false),
                                                                                         "Breakbulk No." = CONST(0)));
            Caption = 'Pick Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50000; Level; Integer)
        {
            Caption = 'Ebene';
            Description = 'für Begin/Ende Stückliste';
        }
        field(50001; "Auftragnr."; Code[20])
        {
            CalcFormula = Lookup("Production Order"."Evtl. Auftragsnr." WHERE("No." = FIELD("Prod. Order No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50002; "Drawing No."; Text[50])
        {
            Caption = 'Zeichnungsnr.';
            Description = '#AT';
        }
        field(5012400; "Lot Determining"; Boolean)
        {
            Caption = 'Lot Determining';
            Description = ':PMW14.02:88:1';
        }
        field(5012402; "Expiration Determining"; Boolean)
        {
            Caption = 'Expiration Determining';
            Description = '#PMW16.00.02:T302';
        }
        field(5012410; "Recipe Share"; Boolean)
        {
            Caption = 'Recipe Share';
        }
        field(5012411; "Data Control Picture"; BLOB)
        {
            Caption = 'Data Control Picture';
            Description = ':PMW16.00:122:1';
            SubType = Bitmap;
        }
        field(5012541; "Sprue Bush %"; Decimal)
        {
            Caption = 'Sprue Bush %';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:2523:1';
        }
        field(5012542; Incorporation; Boolean)
        {
            Caption = 'Incorporation %';
            Description = ':PMW14.02:55:1';
            Editable = false;
        }
        field(5012543; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
            Description = ':PMW14.02:53:1';
        }
        field(5012560; "Share %"; Decimal)
        {
            Caption = 'Share %';
            DecimalPlaces = 0 : 3;
            Description = ':PMW13.70:1:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00.01:T101';
            TableRelation = "Calculation Group".Code WHERE(Type = CONST(Item));
        }
        field(5012700; "Status Filter"; Option)
        {
            Caption = 'Status Filter';
            Description = '#PXW16.00:107';
            FieldClass = FlowFilter;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(5013405; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':DMW13.70.01:1:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Document BOM",Construction;
        }
        field(5013410; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013420; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013430; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
            Description = ':DMW13.60.03:1:02';
        }
        field(5013435; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(5013440; "Transfer Created"; Boolean)
        {
            Caption = 'Transfer Created';
            Description = ':DMW13.60.03:1:02';
            Editable = false;
        }
        field(5013450; "Transfer Posted"; Boolean)
        {
            Caption = 'Transfer Posted';
            Description = ':DMW13.60.03:1:02';
            Editable = false;
        }
        field(5013460; "Old Location Code"; Code[10])
        {
            Caption = 'Old Location Code';
            Description = ':DMW13.60.03:1:02';
            Editable = false;
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013465; "Old Bin Code"; Code[20])
        {
            Caption = 'Old Bin Code';
            Description = ':DMW13.71:1:04';
            Editable = false;
        }
        field(5013470; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
            Description = ':DMW13.71:1:01';
        }
        field(5013480; "Supplied-by Status"; Option)
        {
            Caption = 'Supplied-by Status';
            Description = ':DMW13.71:1:01';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(5013490; "Supplied-by PO No."; Code[20])
        {
            Caption = 'Supplied-by PO No.';
            Description = ':DMW13.71:1:01';
        }
        field(5013491; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Description = '#DMW16.00.02:T102';
        }
        field(5013492; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013493; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013494; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = '#DMW16.00.02:T102';
        }
        field(5013500; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = ':DMW14.03:1:01';
            TableRelation = "Base Material";
        }
        field(5013510; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(5013520; "Copy BOM to Text"; Option)
        {
            Caption = 'Copy BOM to Text';
            Description = '#DMW16.00.03:T009';
            OptionCaption = ' ,Production BOM,Doc./Constr. BOM';
            OptionMembers = " ","Production BOM","Doc./Constr. BOM";
        }
        field(5034550; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#QMW16.00.03:R472';
            TableRelation = "Test Plan";
        }
        field(5034551; "Test Plan is specific"; Boolean)
        {
            Caption = 'Test Plan is specific';
            Description = '#QMW16.00.03:R472';
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(99000754; "Direct Unit Cost"; Decimal)
        {
            Caption = 'Direct Unit Cost';
            DecimalPlaces = 2 : 5;
        }
        field(99000755; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
        }
        field(99000756; "Overhead Rate"; Decimal)
        {
            Caption = 'Overhead Rate';
            DecimalPlaces = 0 : 5;
        }
        field(99000757; "Direct Cost Amount"; Decimal)
        {
            Caption = 'Direct Cost Amount';
            DecimalPlaces = 2 : 2;
        }
        field(99000758; "Overhead Amount"; Decimal)
        {
            Caption = 'Overhead Amount';
            DecimalPlaces = 2 : 2;
        }
    }

    keys
    {
        key(Key1; Status, "Prod. Order No.", "Prod. Order Line No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Prod. Order No.", "Prod. Order Line No.", "Line No.", Status)
        {
        }
        key(Key3; Status, "Prod. Order No.", "Prod. Order Line No.", "Due Date")
        {
            SumIndexFields = "Expected Quantity", "Cost Amount";
        }
        key(Key4; Status, "Prod. Order No.", "Prod. Order Line No.", "Item No.", "Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key5; Status, "Item No.", "Variant Code", "Location Code", "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Quantity", "Remaining Qty. (Base)", "Cost Amount", "Overhead Amount";
        }
        key(Key6; "Item No.", "Variant Code", "Location Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Due Date")
        {
            Enabled = false;
            SumIndexFields = "Expected Quantity", "Remaining Qty. (Base)", "Cost Amount", "Overhead Amount";
        }
        key(Key7; Status, "Prod. Order No.", "Routing Link Code", "Flushing Method")
        {
        }
        key(Key8; Status, "Prod. Order No.", "Location Code")
        {
        }
        key(Key9; "Item No.", "Variant Code", "Location Code", Status, "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Qty. (Base)", "Remaining Qty. (Base)", "Cost Amount", "Overhead Amount", "Qty. Picked (Base)";
        }
        key(Key10; Status, "Prod. Order No.", "Prod. Order Line No.", "Item Low-Level Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key11; "Item No.", "Due Date", Status, "Remaining Quantity")
        {
        }

        key(Key13; "Supplied-by PO No.", "Supplied-by Line No.", "Supplied-by Status")
        {
        }
    }

    fieldgroups
    {
    }
}

