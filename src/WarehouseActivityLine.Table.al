table 5767 "Warehouse Activity Line"
{
    // P0001 24.02.16 DEBIE.ARE Code in OnDelete added
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    //   Key Added: Item No.,Variant Code,Lot No.,Serial No.
    //   New Fields
    // 
    // #QMW16.00.02.01:T506 03.12.10 DEMSR.KHS
    //   Check License Permission
    // 
    // #QMW16.00.03:T511 01.09.11 DEMSR.KHS
    //   Do not show blocked Lots
    // 
    // #QMW17.00:409 10.01.13 DEMSR.KHS
    //   Fix Parameter error in Whse. Activity Line
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T112 24.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    // 
    // #RAW17.00:T114 07.01.13 DEMSR.BKR
    //   Standard NAV Integration
    // 
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # New function "CheckLotChange"
    //   # Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnLookup, call "LookUpTrackingSummary"
    //   # Trading Unit No. - OnValidate, call "CheckLotChange"
    //   # Function LookUpTrackingSummary, transfer trading unit
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   # Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // TrdngUnit:PMW15.00:219:1
    //   # New parameter for function call CreatePick.CalcTotalAvailQtyToPick
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // TRDNGUNIT:PMW16.00:147:1
    //   # Function UpdateReservation, transfer trading unit
    // 
    // #PMW16.00.03:T106 22.09.11 DEMSR.IST
    //   New function CheckDeliveryTolerance
    //   New function CheckDeliveryToleranceOnDelete
    //   New function SetSuspendDeliveryTolCheck
    // 
    // #PMW16.00.03:T114 29.09.11 DEMSR.IST
    //   Excess pick for consumption
    //   New field 5012400 "Original Quantity" added
    //   New field 5012401 "Original Quantity (Base)" added
    // 
    // #PMW16.00.03.01:T519 09.05.12 DEMSR.IST
    //   New function SetSuspendLotCheck
    //   New function SetSuspendCheckResItemTrkg
    // 
    // #PMW17.00:T109 08.01.13 DEMSR.KHS
    //   Add Lot No. Trading Unit and Trading Unit No.
    //     in function InitTrackingSpecFromWhseActivLine
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New fields (see description column)
    //     New key "Location Code,Bin Code,Action Type,Unit of Measure Code,Lot No.,Serial No."
    //     Modified function "SplitLine"
    // L-MOBILE 2016-10-26 LM2.00.06
    //   function
    //     UpdateBreakbulkQtytoHandle
    //   set to Local No

    Caption = 'Warehouse Activity Line';
    PasteIsValid = false;
    Permissions = TableData "Whse. Item Tracking Line" = rmd;

    fields
    {
        field(1; "Activity Type"; Option)
        {
            Caption = 'Activity Type';
            Editable = false;
            OptionCaption = ' ,Put-away,Pick,Movement,Invt. Put-away,Invt. Pick,Invt. Movement';
            OptionMembers = " ","Put-away",Pick,Movement,"Invt. Put-away","Invt. Pick","Invt. Movement";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(4; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Editable = false;
        }
        field(5; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(6; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
        }
        field(7; "Source Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Line No.';
            Editable = false;
        }
        field(8; "Source Subline No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Subline No.';
            Editable = false;
        }
        field(9; "Source Document"; Option)
        {
            BlankZero = true;
            Caption = 'Source Document';
            Editable = false;
            OptionCaption = ' ,Sales Order,,,Sales Return Order,Purchase Order,,,Purchase Return Order,Inbound Transfer,Outbound Transfer,Prod. Consumption,Prod. Output,,,,,,Service Order,,Assembly Consumption,Assembly Order';
            OptionMembers = " ","Sales Order",,,"Sales Return Order","Purchase Order",,,"Purchase Return Order","Inbound Transfer","Outbound Transfer","Prod. Consumption","Prod. Output",,,,,,"Service Order",,"Assembly Consumption","Assembly Order";
        }
        field(11; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Editable = false;
            TableRelation = Location;
        }
        field(12; "Shelf No."; Code[10])
        {
            Caption = 'Shelf No.';
        }
        field(13; "Sorting Sequence No."; Integer)
        {
            Caption = 'Sorting Sequence No.';
            Editable = false;
        }
        field(14; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(15; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(16; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(17; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(18; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(19; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(20; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(21; "Qty. (Base)"; Decimal)
        {
            Caption = 'Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(24; "Qty. Outstanding"; Decimal)
        {
            Caption = 'Qty. Outstanding';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(25; "Qty. Outstanding (Base)"; Decimal)
        {
            Caption = 'Qty. Outstanding (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(26; "Qty. to Handle"; Decimal)
        {
            Caption = 'Qty. to Handle';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(27; "Qty. to Handle (Base)"; Decimal)
        {
            Caption = 'Qty. to Handle (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(28; "Qty. Handled"; Decimal)
        {
            Caption = 'Qty. Handled';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(29; "Qty. Handled (Base)"; Decimal)
        {
            Caption = 'Qty. Handled (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(31; "Shipping Advice"; Option)
        {
            Caption = 'Shipping Advice';
            Editable = false;
            FieldClass = Normal;
            OptionCaption = 'Partial,Complete';
            OptionMembers = Partial,Complete;
        }
        field(34; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(39; "Destination Type"; Option)
        {
            Caption = 'Destination Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Location,Item,Family,Sales Order';
            OptionMembers = " ",Customer,Vendor,Location,Item,Family,"Sales Order";
        }
        field(40; "Destination No."; Code[20])
        {
            Caption = 'Destination No.';
            Editable = false;
            TableRelation = IF ("Destination Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Destination Type" = CONST (Customer)) Customer
            ELSE
            IF ("Destination Type" = CONST (Location)) Location
            ELSE
            IF ("Destination Type" = CONST (Item)) Item
            ELSE
            IF ("Destination Type" = CONST (Family)) Family
            ELSE
            IF ("Destination Type" = CONST ("Sales Order")) "Sales Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(42; "Shipping Agent Code"; Code[10])
        {
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(43; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE ("Shipping Agent Code" = FIELD ("Shipping Agent Code"));
        }
        field(44; "Shipment Method Code"; Code[10])
        {
            Caption = 'Shipment Method Code';
            TableRelation = "Shipment Method";
        }
        field(47; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(900; "Assemble to Order"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Assemble to Order';
            Editable = false;
        }
        field(901; "ATO Component"; Boolean)
        {
            Caption = 'ATO Component';
            Editable = false;
        }
        field(6500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(6502; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(6503; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(6504; "Serial No. Blocked"; Boolean)
        {
            CalcFormula = Lookup ("Serial No. Information".Blocked WHERE ("Item No." = FIELD ("Item No."),
                                                                         "Variant Code" = FIELD ("Variant Code"),
                                                                         "Serial No." = FIELD ("Serial No.")));
            Caption = 'Serial No. Blocked';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6505; "Lot No. Blocked"; Boolean)
        {
            CalcFormula = Lookup ("Lot No. Information".Blocked WHERE ("Item No." = FIELD ("Item No."),
                                                                      "Variant Code" = FIELD ("Variant Code"),
                                                                      "Lot No." = FIELD ("Lot No.")));
            Caption = 'Lot No. Blocked';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7300; "Bin Code"; Code[20])
        {
            AccessByPermission = TableData "Warehouse Source Filter" = R;
            Caption = 'Bin Code';
            TableRelation = IF ("Zone Code" = FILTER ('')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"))
            ELSE
            IF ("Zone Code" = FILTER (<> '')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                               "Zone Code" = FIELD ("Zone Code"));
        }
        field(7301; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
            TableRelation = Zone.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(7305; "Action Type"; Option)
        {
            Caption = 'Action Type';
            Editable = false;
            OptionCaption = ' ,Take,Place';
            OptionMembers = " ",Take,Place;
        }
        field(7306; "Whse. Document Type"; Option)
        {
            Caption = 'Whse. Document Type';
            Editable = false;
            OptionCaption = ' ,Receipt,Shipment,Internal Put-away,Internal Pick,Production,Movement Worksheet,,Assembly';
            OptionMembers = " ",Receipt,Shipment,"Internal Put-away","Internal Pick",Production,"Movement Worksheet",,Assembly;
        }
        field(7307; "Whse. Document No."; Code[20])
        {
            Caption = 'Whse. Document No.';
            Editable = false;
            TableRelation = IF ("Whse. Document Type" = CONST (Receipt)) "Posted Whse. Receipt Header"."No." WHERE ("No." = FIELD ("Whse. Document No."))
            ELSE
            IF ("Whse. Document Type" = CONST (Shipment)) "Warehouse Shipment Header"."No." WHERE ("No." = FIELD ("Whse. Document No."))
            ELSE
            IF ("Whse. Document Type" = CONST ("Internal Put-away")) "Whse. Internal Put-away Header"."No." WHERE ("No." = FIELD ("Whse. Document No."))
            ELSE
            IF ("Whse. Document Type" = CONST ("Internal Pick")) "Whse. Internal Pick Header"."No." WHERE ("No." = FIELD ("Whse. Document No."))
            ELSE
            IF ("Whse. Document Type" = CONST (Production)) "Production Order"."No." WHERE ("No." = FIELD ("Whse. Document No."))
            ELSE
            IF ("Whse. Document Type" = CONST (Assembly)) "Assembly Header"."No." WHERE ("Document Type" = CONST (Order),
                                                                                                           "No." = FIELD ("Whse. Document No."));
        }
        field(7308; "Whse. Document Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Whse. Document Line No.';
            Editable = false;
            TableRelation = IF ("Whse. Document Type" = CONST (Receipt)) "Posted Whse. Receipt Line"."Line No." WHERE ("No." = FIELD ("Whse. Document No."),
                                                                                                                    "Line No." = FIELD ("Whse. Document Line No."))
            ELSE
            IF ("Whse. Document Type" = CONST (Shipment)) "Warehouse Shipment Line"."Line No." WHERE ("No." = FIELD ("Whse. Document No."),
                                                                                                                                                                                                                "Line No." = FIELD ("Whse. Document Line No."))
            ELSE
            IF ("Whse. Document Type" = CONST ("Internal Put-away")) "Whse. Internal Put-away Line"."Line No." WHERE ("No." = FIELD ("Whse. Document No."),
                                                                                                                                                                                                                                                                                                                            "Line No." = FIELD ("Whse. Document Line No."))
            ELSE
            IF ("Whse. Document Type" = CONST ("Internal Pick")) "Whse. Internal Pick Line"."Line No." WHERE ("No." = FIELD ("Whse. Document No."),
                                                                                                                                                                                                                                                                                                                                                                                                                                "Line No." = FIELD ("Whse. Document Line No."))
            ELSE
            IF ("Whse. Document Type" = CONST (Production)) "Prod. Order Line"."Line No." WHERE ("Prod. Order No." = FIELD ("No."),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       "Line No." = FIELD ("Line No."))
            ELSE
            IF ("Whse. Document Type" = CONST (Assembly)) "Assembly Line"."Line No." WHERE ("Document Type" = CONST (Order),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         "Document No." = FIELD ("Whse. Document No."),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         "Line No." = FIELD ("Whse. Document Line No."));
        }
        field(7309; "Bin Ranking"; Integer)
        {
            Caption = 'Bin Ranking';
            Editable = false;
        }
        field(7310; Cubage; Decimal)
        {
            Caption = 'Cubage';
            DecimalPlaces = 0 : 5;
        }
        field(7311; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(7312; "Special Equipment Code"; Code[10])
        {
            Caption = 'Special Equipment Code';
            TableRelation = "Special Equipment";
        }
        field(7313; "Bin Type Code"; Code[10])
        {
            Caption = 'Bin Type Code';
            TableRelation = "Bin Type";
        }
        field(7314; "Breakbulk No."; Integer)
        {
            BlankZero = true;
            Caption = 'Breakbulk No.';
        }
        field(7315; "Original Breakbulk"; Boolean)
        {
            Caption = 'Original Breakbulk';
        }
        field(7316; Breakbulk; Boolean)
        {
            Caption = 'Breakbulk';
        }
        field(7317; "Cross-Dock Information"; Option)
        {
            Caption = 'Cross-Dock Information';
            OptionCaption = ' ,Cross-Dock Items,Some Items Cross-Docked';
            OptionMembers = " ","Cross-Dock Items","Some Items Cross-Docked";
        }
        field(7318; Dedicated; Boolean)
        {
            Caption = 'Dedicated';
            Editable = false;
        }
        field(5012400; "Original Quantity"; Decimal)
        {
            Caption = 'Original Quantity';
            Description = '#PMW16.00.03:T114';
        }
        field(5012401; "Original Quantity (Base)"; Decimal)
        {
            Caption = 'Original Quantity (Base)';
            Description = '#PMW16.00.03:T114';
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = ':PMW14.01:2457:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = ':PMW14.01:2457:1';
        }
        field(5034630; "Avail. Status"; Code[20])
        {
            Caption = 'Avail. Status';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034631; "Avail. Expiration Date"; Date)
        {
            Caption = 'Avail. Expiration Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034632; "Avail. Availability Date"; Date)
        {
            Caption = 'Avail. Availability Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5307940; "Mobile Dialog Processed"; Boolean)
        {
            Caption = 'Mobile Dialog Processed';
            Description = 'CCMS';
        }
        field(5308001; "Mobile Original Sugg. Bin Code"; Code[20])
        {
            Caption = 'Mobile Original Suggested Bin Code';
            Description = 'CCMS';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
    }

    keys
    {
        key(Key1; "Activity Type", "No.", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. to Handle (Base)";
        }
        key(Key2; "No.", "Line No.", "Activity Type")
        {
        }
        key(Key3; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.", "Unit of Measure Code", "Action Type", "Breakbulk No.", "Original Breakbulk", "Activity Type", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding", "Qty. Outstanding (Base)";
        }
        key(Key4; "Activity Type", "No.", "Sorting Sequence No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key5; "Activity Type", "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key6; "Activity Type", "No.", "Location Code", "Source Document", "Source No.", "Action Type", "Zone Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key7; "Activity Type", "No.", "Due Date", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key8; "Activity Type", "No.", "Bin Code", "Breakbulk No.", "Action Type")
        {
            MaintainSQLIndex = false;
        }
        key(Key9; "Activity Type", "No.", "Bin Ranking", "Breakbulk No.", "Action Type")
        {
            MaintainSQLIndex = false;
        }
        key(Key10; "Activity Type", "No.", "Destination Type", "Destination No.", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key11; "Activity Type", "No.", "Whse. Document Type", "Whse. Document No.", "Whse. Document Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key12; "Activity Type", "No.", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key13; "Activity Type", "No.", "Item No.", "Variant Code", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key14; "Whse. Document No.", "Whse. Document Type", "Activity Type", "Whse. Document Line No.", "Action Type", "Unit of Measure Code", "Original Breakbulk", "Breakbulk No.", "Lot No.", "Serial No.", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)", "Qty. Outstanding";
        }
        key(Key15; "Item No.", "Bin Code", "Location Code", "Action Type", "Variant Code", "Unit of Measure Code", "Breakbulk No.", "Activity Type", "Lot No.", "Serial No.", "Original Breakbulk", "Assemble to Order", "ATO Component")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity, "Qty. (Base)", "Qty. Outstanding", "Qty. Outstanding (Base)", Cubage, Weight;
        }
        key(Key16; "Item No.", "Location Code", "Activity Type", "Bin Type Code", "Unit of Measure Code", "Variant Code", "Breakbulk No.", "Action Type", "Lot No.", "Serial No.", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)";
        }
        key(Key17; "Bin Code", "Location Code", "Action Type", "Breakbulk No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = Cubage, Weight;
        }
        key(Key18; "Location Code", "Activity Type")
        {
        }
        key(Key19; "Source No.", "Source Line No.", "Source Subline No.", "Serial No.", "Lot No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key20; "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
        }
        key(Key21; "Location Code", "Bin Code", "Action Type", "Unit of Measure Code", "Lot No.", "Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

