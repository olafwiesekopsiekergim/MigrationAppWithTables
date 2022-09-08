table 5406 "Prod. Order Line"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // #AMP7.00:A0001 07.06.13 DEMSR.SSZ
    //   Manage getting Routing and Prod. BOM No. for DM and PM
    // 
    // #AMPW17.00:T101 14.06.13 DEMSR.IST
    //   Consider different variant handling in PM & DM
    // 
    // #PXW16.00:101 28.01.09 DEMSR.IG
    //   New field 5012700 "Sequence Planning" added
    //   New field 5012701 Sequenceposition added
    //   New field 5012702 "Seq. attached to Operation No." added
    //   New field 5012703 "Sequence Work Center No." added
    //   New field 5012704 "Fixed in Sequence" added
    //   New field 5012705 "Start Date Sequence Planning" added
    //   New field 5012706 "Start Time Sequence Planning" added
    //   New field 5012707 "Start Date/Time Sequence Pl." added
    //   New field 5012708 "End Date Sequence Planning" added
    //   New field 5012709 "End Time Sequence Planning" added
    //   New field 5012710 "End Date/Time Sequence Pl." added
    //   New key <"Sequence Work Center No.", Sequenceposition>
    //   New key <"Sequence Work Center No.", "Due Date">
    //   New key <"Sequence Work Center No.", "Production BOM No.", "Due Date">
    //   New key <"Sequence Work Center No.", "Item No.", "Due Date">
    //   New key <"Sequence Work Center No.", "Start Date Sequence Planning", "End Date Sequence Planning">
    //   New key <"Sequence Work Center No.", "Start Date/Time Sequence Pl.">
    // 
    // #PXW16.00:104 28.01.09 DEMSR.IG
    //   New field 5012711 "Maintenance-/Setup Job" added
    //   New field 5012712 "Order Type Code" added
    //   New field 5012713 "Standstill Type Code" added
    //   New field 5012714 "Fixed Maintenance-/Setup Job" added
    //   New key <"Maintenance-/Setup Job", "Sequence Work Center No.", Sequenceposition> added
    // 
    // #PXW16.00:106 28.01.09 DEMSR.IG
    //   New field 5012715 "Shortcut Mfg. Dimension 1 Code" added
    //   New field 5012716 "Shortcut Mfg. Dimension 2 Code" added
    //   New function CreateMfgDimension
    //   New function ShowMfgDimensions
    //   New function ValidateShortcutMfgDimCode
    //   New function LookupShortcutMfgDimCode
    //   New function LookupShortcutMfgDimCodeNoUpd
    //   New function ShowShortcutMfgDimCode
    //   New function Date2Code
    // 
    // #PXW16.00:100 28.01.09 DEMSR.IG
    //   New field 5012717 "Method of Production Code" added
    //   New field 5012718 "Prod. Order Status Filter" added
    // 
    // #PXW16.00.01:101 16.10.09 DEMSR.IST
    //   New field 5012719 "Permanently Deferred" added
    // 
    // #PXW16.00.01:105 22.10.09 DEMSR.IST
    //   Call function "RecalculateMultiLevelStructure"
    // 
    // #PXW16.00.01.01:100 06.01.10 DEMSR.IST
    //   License Permission Check
    // 
    // #PXW16.00.03:T502 16.09.11 DEMSR.LVO
    //   Field 5012701, Name ,Enu-Caption changed to "Sequence Position"
    // 
    // #PXW16.00.03.01:T500 29.03.12 DEMSR.IST
    //   Check Whse. Activity Lines if "Fixed in Sequence" is set
    // 
    // #PXW17.00:T101 05.04.12 DEMSR.IST
    //   Form variable replaced by Page variable
    //   RECORDLEVELLOCKING condition deleted
    //   SETFILTER on "Source Subtype" changed to SETRANGE
    //   Field "Standstill Type Code" changed to "Standstill Reason Code"
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.01:T103 11.06.15 DEMSR.IST
    //   Mfg. Dimensions for Item Variants
    // 
    // :DMW13.60:1:01 #Beim Ermitteln der aktuellen Fertigungsstücklisten-Version den Inhalt des Feldes "Variant Code" berücksichtigen
    // 
    // :DMW13.71:1:01 #neue Felder: 5013405 Quelltyp; 5013410 "Quellnr."; 5013420 "Quellzeilennr."; 5013470 "separate Prod. Order"
    //                #und diese füllen
    //                #Key angelegt: Quelltyp,Quellnr.,Quellzeilennr.,separate Prod. Order
    // :DMW14.03:1:01 #new field 5013500 "Base Material"
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // :DMW15.01:21:01 #Added new field 5013510 "Separate Delivery"
    // :DMW15.01:26:01 #Get the Routing and Prod. BOM from Item Variant; reset changes from :DMW13.60:1:01
    // :DMW15.01.00.01:6:01 #Deleted unused and renamed double Variable
    // :DMW16.00.00.02:24:01 #Corrected TableRelation in field 5013500 "Base Material"
    // 
    // :DMW16.00.02:T100 07.10.10 DEMSR.SSZ
    //   #New Field: 5013520 "Structure Sort"; New Key: "Prod. Order No.","Structure Sort",Status
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // #DMW16.00.02.03:A0008 23.03.11 DEMSR.SSZ
    //   #When "Variant Code" changes, rewrite "Unit of Measure" from Item Card
    // #DMW16.00.03:A003 14.09.11 DEMSR.SSZ
    //   #Coordinate Separate Prod. Order and Separate Delivery
    //   #Deleted Field 5013510 "Separate Delivery" and replaced it with a function SeparateDelivery
    // #DMW16.00.03.02:A020 22.03.12 DEMSR.SSZ
    //   #Only make validate when changes was made manually. Because using bundle database a problem with PM bottling occures
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Delete related calculations
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW17.00.00.02:T101 14.05.13 DEMSR.KHS
    //   Control IDs corrected
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :PMW13.70:1:1
    //   New field 5012413 "Tool No." added
    //   New field 5012414 "Tool a. to Work. Operation No." added
    // 
    // :PMW13.71:1:1
    //   New field 5012415 "Posting Quantity"
    // 
    // :PMW13.71.02:1:2
    //   Set "Remaining Quantity" to "Posting Quantity"
    // 
    // :PMW14.01:2466:1
    //   New field 5012416 "Production Structure No."
    //   New function "ValidateProdStructureNo"
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:169:1
    //   New field 5012417 "Production Tolerance Code"
    //   New function "DeleteDeliveryToleranceEntry"
    //   New function "UpdateDeliveryToleranceEntry"
    //   No. - OnValidate, transfer "Production Tolerance Code" from Item
    //   OnDelete, call "DeleteDeliveryToleranceEntry"
    //   Quantity - OnValidate, call "DeleteDeliveryToleranceEntry"
    //   Quantity - OnValidate, call "UpdateDeliveryToleranceEntry"
    // 
    // :PMW14.02:154:1
    //   Starting Time - OnValidate, call "RecalculateMultiLevelStructure"
    //   Ending Time - OnValidate, call "RecalculateMultiLevelStructure"
    // 
    // :PMW14.02:55:1
    //   New field 5012420 "Max. Incorporation %"
    //   New function "GetMaxIncorporationPercent"
    //   Production BOM No. - OnValidate, call "GetMaxIncorporationPercent"
    //   Production BOM Version Code - OnValidate, call "GetMaxIncorporationPercent"
    // 
    // :PMW14.02:26:1
    //   New field 5012422 "Add. Line attached to Line No."
    //   New field 5012423 "Additional Line Type"
    // 
    // :PMW14.02.01:56:1
    //   Option of field 5012423 "Additional Line Type" changed to By-Production
    // 
    // :PMW14.02.01:103:1
    //   New field 5012425 "Insert No."
    //   New field 5012426 "Insert a. to Work. Operat. No."
    // 
    // :PMW14.02.01:83:1
    //   Transfer "Production Structure No." from Item
    //   Changed TableRelation for field "Production Structure No."
    //   New field 5012427 "Production Variant"
    // 
    // INCORPORATION:PMW15.00:230:1
    //   New key <Status,Production BOM No.,Production BOM Version Code>
    // 
    // BOTTLING:PMW15.00:204:1
    //   Relation of field "Production Structure No." changed
    // 
    // PLANTMAIN:PMW15.00:19:1
    //   New field 5012501 "External Maintenance Order"
    //   New field 5012502 "Maint. Order Document Type"
    //   New field 5012503 "Maint. Order No."
    //   New field 5012504 Coordinated
    // 
    // :PMW15.00:241:1
    //   Changes due to UI and programming standards
    // 
    // :PMW15.00:246:1
    //   Function call DeleteProdOrderFeedbackLine in OnDelete deleted
    // 
    // :PMW15.00:238:1
    //   Usage of new data access commands
    // 
    // :PMW15.00.01:45:1
    //   Check license permissions
    // 
    // :PMW15.01:79:1
    //   Field 5012417 "Production Tolerance Code" renamed to "Production Qty. Tolerance Code"
    // 
    // :PMW15.01:87:1
    //   New field 5012428 "Net Weight (Total)"
    //   New field 5012429 "Recipe Weight (Total)"
    // 
    // :PMW15.01:64:1
    //   Transfer production structure UOM if no production BOM exists
    // 
    // :PMW16.00:122:1
    //   New field 5012432 "Data Control Picture"
    // 
    // :PMW16.00:155:1
    //   Redesign of Sequence Planning --> #PXW16.00:101
    // 
    // :PMW16.00:156:1 --> #PXW16.00:104
    //   Redesign of Maintenance and Setup Orders
    // 
    // :PMW16.00:157:1
    //   Redesign of Manufacturing Dimensions --> #PXW16.00:106
    // 
    // :PMW16.00:158:1
    //   Change fields for Planning Pool --> #PXW16.00:100
    // 
    // #PMW16.00.00.01:T507 09.04.09 DEMSR.IG
    //   Wrong Unit of Measure after validation of production structure no.
    // 
    // #PMW16.00.01:111 05.11.09 DEMSR.IST
    //   New function "CheckTrdgUnitCode"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation programming rearranged --> #CAW16.00:T100
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New function CheckDefaultLocationAndBin
    // 
    // #PMW17.00:T101 19.10.12 DEMSR.KHS
    //   function ProdOrderComp corrected
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T101 02.04.2014 DEMSR.IST
    //   Ingredient redesign
    // 
    // #PMW17.10.00.02:T500 16.05.14 DEMSR.IST
    //   Handle missing recipe weight in item
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T103 11.09.14 DEMSR.IST
    //   New field "Delay Link ID" added
    //   Check Note on Prod. Order Delay
    // 
    // #PMW17.10.01:T106 18.09.14 DEMSR.IST
    //   New field 5012440 Last processed Operation No.
    //   New field 5012441 Last Operation Status
    // 
    // #TMW17.10.01:T100 09.09.14 DEMSR.SSZ
    //   new field 5060610 and changed code
    // 
    // #PMW17.10.01.01:T501 02.10.14 DEMSR.IST
    //   Correction of CurrFieldNo usage in function CheckTrdgUnitCode()
    // 
    // CC01 15.03.2022 DEMUE.NR # Added Fields 50000..50004

    Caption = 'Prod. Order Line';
    DataCaptionFields = "Prod. Order No.";
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
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(11; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item WHERE(Type = CONST(Inventory));
        }
        field(12; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."),
                                                       Code = FIELD("Variant Code"));
        }
        field(13; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(14; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(20; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(21; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(22; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(23; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = IF (Quantity = FILTER(< 0)) "Bin Content"."Bin Code" WHERE("Location Code" = FIELD("Location Code"),
                                                                                     "Item No." = FIELD("Item No."),
                                                                                     "Variant Code" = FIELD("Variant Code"))
            ELSE
            Bin.Code WHERE("Location Code" = FIELD("Location Code"));
        }
        field(40; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(41; "Finished Quantity"; Decimal)
        {
            Caption = 'Finished Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(42; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(45; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(47; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Editable = false;
        }
        field(48; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(49; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(50; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(51; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(52; "Planning Level Code"; Integer)
        {
            Caption = 'Planning Level Code';
            Editable = false;
        }
        field(53; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(60; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header"."No.";
        }
        field(61; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header"."No.";
        }
        field(62; "Inventory Posting Group"; Code[10])
        {
            Caption = 'Inventory Posting Group';
            TableRelation = "Inventory Posting Group";
        }
        field(63; "Routing Reference No."; Integer)
        {
            Caption = 'Routing Reference No.';
            Editable = false;
        }
        field(65; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(67; "Cost Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount';
            Editable = false;
        }
        field(68; "Reserved Quantity"; Decimal)
        {
            CalcFormula = Sum("Reservation Entry".Quantity WHERE("Source ID" = FIELD("Prod. Order No."),
                                                                  "Source Ref. No." = CONST(0),
                                                                  "Source Type" = CONST(5406),
                                                                  "Source Subtype" = FIELD(Status),
                                                                  "Source Batch Name" = CONST(''),
                                                                  "Source Prod. Order Line" = FIELD("Line No."),
                                                                  "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "Capacity Type Filter"; Option)
        {
            Caption = 'Capacity Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Work Center,Machine Center';
            OptionMembers = "Work Center","Machine Center";
        }
        field(71; "Capacity No. Filter"; Code[20])
        {
            Caption = 'Capacity No. Filter';
            FieldClass = FlowFilter;
            TableRelation = IF ("Capacity Type Filter" = CONST("Work Center")) "Work Center"
            ELSE
            IF ("Capacity Type Filter" = CONST("Machine Center")) "Machine Center";
        }
        field(72; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(80; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(81; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(82; "Finished Qty. (Base)"; Decimal)
        {
            Caption = 'Finished Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(83; "Remaining Qty. (Base)"; Decimal)
        {
            Caption = 'Remaining Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(84; "Reserved Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Source ID" = FIELD("Prod. Order No."),
                                                                           "Source Ref. No." = CONST(0),
                                                                           "Source Type" = CONST(5406),
                                                                           "Source Subtype" = FIELD(Status),
                                                                           "Source Batch Name" = CONST(''),
                                                                           "Source Prod. Order Line" = FIELD("Line No."),
                                                                           "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Expected Operation Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Prod. Order Routing Line"."Expected Operation Cost Amt." WHERE(Status = FIELD(Status),
                                                                                               "Prod. Order No." = FIELD("Prod. Order No."),
                                                                                               "Routing No." = FIELD("Routing No."),
                                                                                               "Routing Reference No." = FIELD("Routing Reference No.")));
            Caption = 'Expected Operation Cost Amt.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(91; "Total Exp. Oper. Output (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line".Quantity WHERE(Status = FIELD(Status),
                                                                 "Prod. Order No." = FIELD("Prod. Order No."),
                                                                 "Routing No." = FIELD("Routing No."),
                                                                 "Routing Reference No." = FIELD("Routing Reference No."),
                                                                 "Ending Date" = FIELD("Date Filter")));
            Caption = 'Total Exp. Oper. Output (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(94; "Expected Component Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Prod. Order Component"."Cost Amount" WHERE(Status = FIELD(Status),
                                                                           "Prod. Order No." = FIELD("Prod. Order No."),
                                                                           "Prod. Order Line No." = FIELD("Line No."),
                                                                           "Due Date" = FIELD("Date Filter")));
            Caption = 'Expected Component Cost Amt.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(198; "Starting Date-Time"; DateTime)
        {
            Caption = 'Starting Date-Time';
        }
        field(199; "Ending Date-Time"; DateTime)
        {
            Caption = 'Ending Date-Time';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5831; "Cost Amount (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount (ACY)';
            Editable = false;
        }
        field(5832; "Unit Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unit Cost (ACY)';
            Editable = false;
        }
        field(50000; "Sales Document Type"; Option)
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
            Description = 'CC01';
            Editable = false;
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,,,,,,Reservation';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,,,,,,Reservation;
        }
        field(50001; "Sales Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
            Description = 'CC01';
            Editable = false;
        }
        field(50002; "Sales Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
            Description = 'CC01';
            Editable = false;
        }
        field(50003; "Fix Date Delivery"; Text[20])
        {
            CalcFormula = Lookup("Sales Header"."fix-Termin Lieferung" WHERE("Document Type" = FIELD("Sales Document Type"),
                                                                              "No." = FIELD("Sales Document No.")));
            Caption = 'Fix Date Delivery';
            Description = 'CC01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50004; Position; Text[5])
        {
            CalcFormula = Lookup("Sales Line".Position WHERE("Document Type" = FIELD("Sales Document Type"),
                                                              "Document No." = FIELD("Sales Document No."),
                                                              "Line No." = FIELD("Sales Line No.")));
            Caption = 'Position';
            Description = 'CC01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012400; "Delay Link ID"; Integer)
        {
            Caption = 'Delay Link ID';
            Description = '#PMW17.10.01:T103';
            Editable = false;
        }
        field(5012413; "Tool No."; Code[20])
        {
            Caption = 'Tool No.';
            Description = ':PMW13.70:1:1';
            Editable = false;
            TableRelation = "Work Center";
        }
        field(5012414; "Tool a. to Work. Operation No."; Code[10])
        {
            Caption = 'Tool a.to Work. Operation No.';
            Description = ':PMW13.70:1:1';
            Editable = false;
        }
        field(5012415; "Posting Quantity"; Decimal)
        {
            Caption = 'Posting Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':PMW13.71:1:1';
            MinValue = 0;
        }
        field(5012416; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = ':PMW14.01:2466:1';
            TableRelation = "Production Structure Header"."No." WHERE(Status = CONST(Certified),
                                                                       "Production Structure Type" = FILTER("Manufacturing Structure" | "Bottling Structure"));
        }
        field(5012417; "Production Qty. Tolerance Code"; Code[10])
        {
            Caption = 'Production Qty. Tolerance Code';
            Description = ':PMW15.01:79:1';
            TableRelation = "Delivery Tolerance";
        }
        field(5012420; "Max. Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation %';
            DecimalPlaces = 0 : 2;
            Description = ':PMW14.02:55:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012422; "Add. Line attached to Line No."; Integer)
        {
            Caption = 'Add. Line attached to Line No.';
            Description = ':PMW14.02:26:1';
        }
        field(5012423; "Additional Line Type"; Option)
        {
            Caption = 'Additional Line Type';
            Description = ':PMW14.02:26:1';
            OptionCaption = ' ,By-Production,Regranulation';
            OptionMembers = " ","By-Production",Regranulation;
        }
        field(5012425; "Insert No."; Code[20])
        {
            Caption = 'Insert No.';
            Description = ':PMW14.02.01:103:1';
            Editable = false;
            TableRelation = "Work Center";
        }
        field(5012426; "Insert a. to Work. Operat. No."; Code[10])
        {
            Caption = 'Insert att. to Operation No.';
            Description = ':PMW14.02.01:103:1';
            Editable = false;
        }
        field(5012427; "Production Variant"; Boolean)
        {
            CalcFormula = Lookup("Production Structure Header"."Production Variant" WHERE("No." = FIELD("Production Structure No.")));
            Caption = 'Production Variant';
            Description = ':PMW14.02.01:83:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012428; "Net Weight (Total)"; Decimal)
        {
            Caption = 'Net Weight (Total)';
            DecimalPlaces = 0 : 5;
            Description = ':PMW15.01:87:1';
            Editable = false;
            MinValue = 0;
        }
        field(5012429; "Recipe Weight (Total)"; Decimal)
        {
            Caption = 'Recipe Weight (Total)';
            DecimalPlaces = 0 : 5;
            Description = ':PMW15.01:87:1';
            MinValue = 0;
        }
        field(5012432; "Data Control Picture"; BLOB)
        {
            Caption = 'Data Control Picture';
            Description = ':PMW16.00:122:1';
            SubType = Bitmap;
        }
        field(5012440; "Last Processed Operation No."; Code[10])
        {
            Caption = 'Last Processed Operation No.';
            Description = '#PMW17.10.01:T106';
            Editable = false;
        }
        field(5012441; "Last Routing Status"; Option)
        {
            Caption = 'Last Routing Status';
            Description = '#PMW17.10.01:T106';
            Editable = false;
            OptionCaption = ' ,Planned,In Progress,Finished';
            OptionMembers = " ",Planned,"In Progress",Finished;
        }
        field(5012501; "External Maintenance Order"; Boolean)
        {
            Caption = 'External Maintenance Order';
            Description = 'PLANTMAIN:PMW15.00:19:1';
        }
        field(5012502; "Maint. Order Document Type"; Option)
        {
            Caption = 'Maint. Order Document Type';
            Description = 'PLANTMAIN:PMW15.00:19:1';
            OptionCaption = 'Maint. Order Template,Maint. Order,Maint. Order Archiv';
            OptionMembers = "Maint. Order Template","Maint. Order","Maint. Order Archiv";
        }
        field(5012503; "Maint. Order No."; Code[20])
        {
            Caption = 'Maint. Order No.';
            Description = 'PLANTMAIN:PMW15.00:19:1';
        }
        field(5012504; Coordinated; Boolean)
        {
            CalcFormula = Lookup("Maintenance Order".Coordinated WHERE("Document Type" = FIELD("Maint. Order Document Type"),
                                                                        "No." = FIELD("Maint. Order No.")));
            Caption = 'Coordinated';
            Description = 'PLANTMAIN:PMW15.00:19:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012700; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = '#PXW16.00:101';
        }
        field(5012701; "Sequence Position"; Decimal)
        {
            BlankZero = true;
            Caption = 'Sequence Position';
            DecimalPlaces = 0 : 0;
            Description = '#PXW16.00:101,#PXW16.00.03:T502';
        }
        field(5012702; "Seq. attached to Operation No."; Code[10])
        {
            Caption = 'Seq. attached to Operation No.';
            Description = '#PXW16.00:101';
        }
        field(5012703; "Sequence Work Center No."; Code[20])
        {
            Caption = 'Sequence Work Center No.';
            Description = '#PXW16.00:101';
            TableRelation = "Work Center";
        }
        field(5012704; "Fixed in Sequence"; Boolean)
        {
            Caption = 'Fixed in Sequence';
            Description = '#PXW16.00:101';
        }
        field(5012705; "Start Date Sequence Planning"; Date)
        {
            Caption = 'Start Date Sequence Planning';
            Description = '#PXW16.00:101';
        }
        field(5012706; "Start Time Sequence Planning"; Time)
        {
            Caption = 'Start Time Sequence Planning';
            Description = '#PXW16.00:101';
        }
        field(5012707; "Start Date/Time Sequence Pl."; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Start Date/Time Sequence Pl.';
            Description = '#PXW16.00:101';
        }
        field(5012708; "End Date Sequence Planning"; Date)
        {
            Caption = 'End Date Sequence Planning';
            Description = '#PXW16.00:101';
        }
        field(5012709; "End Time Sequence Planning"; Time)
        {
            Caption = 'End Time Sequence Planning';
            Description = '#PXW16.00:101';
        }
        field(5012710; "End Date/Time Sequence Pl."; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'End Date/Time Sequence Pl.';
            Description = '#PXW16.00:101';
        }
        field(5012711; "Maintenance-/Setup Job"; Boolean)
        {
            Caption = 'Maintenance-/Setup Job';
            Description = '#PXW16.00:104';
        }
        field(5012712; "Order Type Code"; Code[20])
        {
            Caption = 'Order Type Code';
            Description = '#PXW16.00:104';
            TableRelation = "MS Order Type";
        }
        field(5012713; "Standstill Reason Code"; Code[20])
        {
            Caption = 'Standstill Reason Code';
            Description = '#PXW16.00:104';
            TableRelation = "MS Standstill Reason";
        }
        field(5012714; "Fixed Maintenance-/Setup Job"; Boolean)
        {
            Caption = 'Fixed Maintenance-/Setup Job';
            Description = '#PXW16.00:104';
        }
        field(5012715; "Shortcut Mfg. Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Description = '#PXW16.00:106';
            TableRelation = "Manufacturing Dimension Value".Code WHERE("Prod. Order Line Mfg. Dim. No." = CONST(1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012716; "Shortcut Mfg. Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Description = '#PXW16.00:106';
            TableRelation = "Manufacturing Dimension Value".Code WHERE("Prod. Order Line Mfg. Dim. No." = CONST(2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012717; "Method of Production Code"; Code[10])
        {
            Caption = 'Method of Production Code';
            Description = '#PXW16.00:100';
            TableRelation = "Method of Production";
        }
        field(5012718; "Prod. Order Status Filter"; Option)
        {
            Caption = 'Prod. Order Status Filter';
            Description = '#PXW16.00:100';
            FieldClass = FlowFilter;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(5012719; "Permanently Deferred"; Boolean)
        {
            Caption = 'Permanently Deferred';
            Description = '#PXW16.00.01:101';
        }
        field(5013405; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':DMW13.71:1:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Document BOM",Construction;
        }
        field(5013410; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = ':DMW13.71:1:01';
            Editable = false;
        }
        field(5013420; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = ':DMW13.71:1:01';
            Editable = false;
        }
        field(5013470; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
            Description = ':DMW13.71:1:01';
        }
        field(5013480; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013481; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013482; "Description 5"; Text[50])
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
        field(5013520; "Structure Sort"; Integer)
        {
            Caption = 'Structure Sort';
            Description = ':DMW16.00.02:T100';
            Editable = false;
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5292333; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292334; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE("Job No." = FIELD("Job No."),
                                                                       "Unique No." = FIELD("Job Line Unique No."));
        }
        field(99000750; "Production BOM Version Code"; Code[10])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE("Production BOM No." = FIELD("Production BOM No."));
        }
        field(99000751; "Routing Version Code"; Code[10])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE("Routing No." = FIELD("Routing No."));
        }
        field(99000752; "Routing Type"; Option)
        {
            Caption = 'Routing Type';
            OptionCaption = 'Serial,Parallel';
            OptionMembers = Serial,Parallel;
        }
        field(99000753; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(99000754; "MPS Order"; Boolean)
        {
            Caption = 'MPS Order';
        }
        field(99000755; "Planning Flexibility"; Option)
        {
            Caption = 'Planning Flexibility';
            OptionCaption = 'Unlimited,None';
            OptionMembers = Unlimited,"None";
        }
        field(99000764; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
        }
        field(99000765; "Overhead Rate"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Overhead Rate';
        }
    }

    keys
    {
        key(Key1; Status, "Prod. Order No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Prod. Order No.", "Line No.", Status)
        {
        }
        key(Key3; Status, "Item No.", "Variant Code", "Location Code", "Ending Date")
        {
            SumIndexFields = "Remaining Qty. (Base)", "Cost Amount";
        }
        key(Key4; Status, "Item No.", "Variant Code", "Location Code", "Starting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key5; Status, "Item No.", "Variant Code", "Location Code", "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key6; Status, "Item No.", "Variant Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Due Date")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key7; Status, "Prod. Order No.", "Item No.")
        {
        }
        key(Key8; Status, "Prod. Order No.", "Routing No.", "Routing Reference No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity, "Finished Quantity";
        }
        key(Key9; Status, "Prod. Order No.", "Planning Level Code")
        {
        }
        key(Key10; "Planning Level Code", Priority)
        {
            Enabled = false;
        }
        key(Key11; "Item No.", "Variant Code", "Location Code", Status, "Ending Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key12; "Item No.", "Variant Code", "Location Code", Status, "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Remaining Qty. (Base)";
        }
        key(Key13; "Sequence Work Center No.", "Sequence Position")
        {
        }
        key(Key14; "Maintenance-/Setup Job", "Sequence Work Center No.", "Sequence Position")
        {
        }
        key(Key15; "Sequence Work Center No.", "Due Date")
        {
        }
        key(Key16; "Sequence Work Center No.", "Production BOM No.", "Due Date")
        {
        }
        key(Key17; "Sequence Work Center No.", "Item No.", "Due Date")
        {
        }
        key(Key18; "Sequence Work Center No.", "Start Date Sequence Planning", "End Date Sequence Planning")
        {
        }
        key(Key19; "Sequence Work Center No.", "Start Date/Time Sequence Pl.")
        {
        }
        key(Key20; Status, "Production BOM No.", "Production BOM Version Code")
        {
        }

        key(Key22; "Structure Sort")
        {
            MaintainSIFTIndex = false;
        }
    }

    fieldgroups
    {
    }
}

