table 83 "Item Journal Line"
{
    // P0042 06.05.16 DEBIE.ARE New function CreateOffsetLine
    // P0003 26.02.16 DEBIE.ARE New field 50000 "Proportion of freight"
    // 
    // #PXW16.00:104 28.01.09 DEMSR.IG
    //   New field 5012700 "Order Type Code"
    //   New field 5012701 "Standstill Type Code"
    //   Transfer new field in OnValidate of "Item No."
    // 
    // #PXW17.00:T101 02.01.13 DEMSR.IST
    //   Field "Standstill Type Code" changed to "Standstill Reason Code"
    // 
    // #NAV20100:A1000   20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #:QMW16.00:05:01  15.01.09 DEMSR.KHS
    //   New Fields for Test Order Creation on Orders to Subcontr.
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.03:T509 26.08.11 DEMSR.KHS
    //   Fields added: "New Status"
    //                 "New Warranty Date"
    //                 "New External Lot No."
    //                 "New Quarantine Date"
    //                 "New Retest Date"
    //                 "New Entry Date"
    // 
    // #QMW17.00.00.01:T511 03.04.13 DEMSR.KHS
    //   Enable Undo of Output posting after Status change
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.02:T501 09.03.15 DEMSR.KHS
    //   Fix Move items to Blocked function:
    //     New Field: "Test Order No."
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Fields added: "Retain Sample", "Elimination Date"
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T112 14.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    // 
    // :PMW14.01:2457:1
    //   New field 5012500 "Lot No. Trading Unit"
    //   New field 5012501 "Trading Unit No."
    //   New field 5012502 "New Lot No. Trading Unit"
    //   New field 5012503 "New Trading Unit No."
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:28:1
    //   New field 5012402 "Routing TAN"
    // 
    // :PMW14.02:169:1
    //   New function "HandleDeliveryTolerance"
    //   New function "CheckDeliveryTolerance"
    //   "Output Quantity" - OnValidate, call "HandleDeliveryTolerance"
    // 
    // :PMW14.02:53:1
    //   New field 5012403 "Returnable Container"
    // 
    // :PMW14.02.01:81:1
    //   New function "CheckTrdgUnitCode"
    //   Unit of Measure Code - OnValidate, call "CheckTrdgUnitCode"
    // 
    // TRDGUNITITEM:PMW15.00:205:1
    //   Restore Base Trading Unit
    // 
    // TRDGUNITITEM:PMW15.01.01:105:1
    //   Correction for physical inventory of items with "Trading Unit per Item UOM" = Variant
    //   New function UpdateTradingUnitPerItemUOM
    //   New function SetTradingUnitPerItemUOM
    // 
    // :PMW16.00:156:1 --> #PXW16.00:104
    //   Redesign of "Maintenance and Setup Orders"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02:T250 13.10.10 DEMSR.KHS
    //   Item Contingents:
    //     New Field 5012583 Contingent Type
    //     New Field 5012584 Contact No.
    // 
    // #PMW16.00.03.01:T514 30.07.12 DEMSR.IST
    //   Check delivery tolerance only for posting of last routing line
    // 
    // #PMW17.00:T101 11.10.12 DEMSR.IST
    //   Usage of changed standard fields
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW18.00.00.02:T502 02.02.15 DEMSR.KHS
    //   Existing Item Tracking was not found on Output posting
    // 
    // #RENW16.00:10-001  03.04.2009  DEMSR.KHS
    //   New Field "Undo Rental Shipment"
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // :DMW13.60:1:01 #New fields to post from Construction Order
    //  # BOM Document Type
    //  # BOM Document No.
    //  # BOM Document Line No.
    //  # BOM lfd. Nr.
    // :DMW13.60.03:1:01 #new field for Enclosure: 5013400;5013410;5013420;5013430
    //  # Enclosure: update of "Prod. Order Component"
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted "calculation" fields
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW16.00.03.03:A007 27.07.12 DEMSR.SSZ
    //   #Corrected Table Relation at field 5013380 "BOM Entry No."
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New fields (see description column)
    //     New key "Item No.,Variant Code,Bin Code,New Bin Code,Unit of Measure Code,Lot No.,New Lot No.,Serial No.,New Serial No."
    // 
    // #MSW19.00:T101 02.10.15 DEMSR.KHS
    //   Set Function "BlockDynamicTracking" to Local = No

    Caption = 'Item Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Item Journal Template";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output, ,Assembly Consumption,Assembly Output';
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output," ","Assembly Consumption","Assembly Output";
        }
        field(6; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST (Item)) Item;
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(10; "Inventory Posting Group"; Code[10])
        {
            Caption = 'Inventory Posting Group';
            Editable = false;
            TableRelation = "Inventory Posting Group";
        }
        field(11; "Source Posting Group"; Code[10])
        {
            Caption = 'Source Posting Group';
            Editable = false;
            TableRelation = IF ("Source Type" = CONST (Customer)) "Customer Posting Group"
            ELSE
            IF ("Source Type" = CONST (Vendor)) "Vendor Posting Group"
            ELSE
            IF ("Source Type" = CONST (Item)) "Inventory Posting Group";
        }
        field(13; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(15; "Invoiced Quantity"; Decimal)
        {
            Caption = 'Invoiced Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(16; "Unit Amount"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Amount';
        }
        field(17; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(18; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(22; "Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Discount Amount';
            Editable = false;
        }
        field(23; "Salespers./Purch. Code"; Code[10])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(26; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(29; "Applies-to Entry"; Integer)
        {
            Caption = 'Applies-to Entry';
        }
        field(32; "Item Shpt. Entry No."; Integer)
        {
            Caption = 'Item Shpt. Entry No.';
            Editable = false;
        }
        field(34; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(35; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(37; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(39; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Item';
            OptionMembers = " ",Customer,Vendor,Item;
        }
        field(41; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(42; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(43; "Recurring Method"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Method';
            OptionCaption = ',Fixed,Variable';
            OptionMembers = ,"Fixed",Variable;
        }
        field(44; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(45; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
        }
        field(46; "Drop Shipment"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Drop Shipment';
            Editable = false;
        }
        field(47; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(48; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(49; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(50; "New Location Code"; Code[10])
        {
            Caption = 'New Location Code';
            TableRelation = Location;
        }
        field(51; "New Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'New Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(52; "New Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'New Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(53; "Qty. (Calculated)"; Decimal)
        {
            Caption = 'Qty. (Calculated)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(54; "Qty. (Phys. Inventory)"; Decimal)
        {
            Caption = 'Qty. (Phys. Inventory)';
            DecimalPlaces = 0 : 5;
        }
        field(55; "Last Item Ledger Entry No."; Integer)
        {
            Caption = 'Last Item Ledger Entry No.';
            Editable = false;
            TableRelation = "Item Ledger Entry";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(56; "Phys. Inventory"; Boolean)
        {
            Caption = 'Phys. Inventory';
            Editable = false;
        }
        field(57; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(58; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(59; "Entry/Exit Point"; Code[10])
        {
            Caption = 'Entry/Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(60; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(62; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(63; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(64; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(65; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(68; "Reserved Quantity"; Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            CalcFormula = Sum ("Reservation Entry".Quantity WHERE ("Source ID" = FIELD ("Journal Template Name"),
                                                                  "Source Ref. No." = FIELD ("Line No."),
                                                                  "Source Type" = CONST (83),
                                                                  "Source Subtype" = FIELD ("Entry Type"),
                                                                  "Source Batch Name" = FIELD ("Journal Batch Name"),
                                                                  "Source Prod. Order Line" = CONST (0),
                                                                  "Reservation Status" = CONST (Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Unit Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unit Cost (ACY)';
            Editable = false;
        }
        field(73; "Source Currency Code"; Code[10])
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Source Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(79; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Sales Shipment,Sales Invoice,Sales Return Receipt,Sales Credit Memo,Purchase Receipt,Purchase Invoice,Purchase Return Shipment,Purchase Credit Memo,Transfer Shipment,Transfer Receipt,Service Shipment,Service Invoice,Service Credit Memo,Posted Assembly';
            OptionMembers = " ","Sales Shipment","Sales Invoice","Sales Return Receipt","Sales Credit Memo","Purchase Receipt","Purchase Invoice","Purchase Return Shipment","Purchase Credit Memo","Transfer Shipment","Transfer Receipt","Service Shipment","Service Invoice","Service Credit Memo","Posted Assembly";
        }
        field(80; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(90; "Order Type"; Option)
        {
            Caption = 'Order Type';
            Editable = false;
            OptionCaption = ' ,Production,Transfer,Service,Assembly';
            OptionMembers = " ",Production,Transfer,Service,Assembly;
        }
        field(91; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            TableRelation = IF ("Order Type" = CONST (Production)) "Production Order"."No." WHERE (Status = CONST (Released));
        }
        field(92; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
            TableRelation = IF ("Order Type" = CONST (Production)) "Prod. Order Line"."Line No." WHERE (Status = CONST (Released),
                                                                                                     "Prod. Order No." = FIELD ("Order No."));
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(481; "New Dimension Set ID"; Integer)
        {
            Caption = 'New Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(904; "Assemble to Order"; Boolean)
        {
            Caption = 'Assemble to Order';
            Editable = false;
        }
        field(1000; "Job No."; Code[20])
        {
            Caption = 'Job No.';
        }
        field(1001; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
        }
        field(1002; "Job Purchase"; Boolean)
        {
            Caption = 'Job Purchase';
        }
        field(1030; "Job Contract Entry No."; Integer)
        {
            Caption = 'Job Contract Entry No.';
            Editable = false;
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5403; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = IF ("Entry Type" = FILTER (Purchase | "Positive Adjmt." | Output),
                                Quantity = FILTER (>= 0)) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                      "Item Filter" = FIELD ("Item No."),
                                                                      "Variant Filter" = FIELD ("Variant Code"))
            ELSE
            IF ("Entry Type" = FILTER (Purchase | "Positive Adjmt." | Output),
                                                                               Quantity = FILTER (< 0)) "Bin Content"."Bin Code" WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                                                    "Item No." = FIELD ("Item No."),
                                                                                                                                    "Variant Code" = FIELD ("Variant Code"))
            ELSE
            IF ("Entry Type" = FILTER (Sale | "Negative Adjmt." | Transfer | Consumption),
                                                                                                                                             Quantity = FILTER (> 0)) "Bin Content"."Bin Code" WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                                                                                                                  "Item No." = FIELD ("Item No."),
                                                                                                                                                                                                  "Variant Code" = FIELD ("Variant Code"))
            ELSE
            IF ("Entry Type" = FILTER (Sale | "Negative Adjmt." | Transfer | Consumption),
                                                                                                                                                                                                           Quantity = FILTER (<= 0)) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                                                                                                                                                                 "Item Filter" = FIELD ("Item No."),
                                                                                                                                                                                                                                                 "Variant Filter" = FIELD ("Variant Code"));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(5406; "New Bin Code"; Code[20])
        {
            Caption = 'New Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("New Location Code"),
                                            "Item Filter" = FIELD ("Item No."),
                                            "Variant Filter" = FIELD ("Variant Code"));
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5408; "Derived from Blanket Order"; Boolean)
        {
            Caption = 'Derived from Blanket Order';
            Editable = false;
        }
        field(5413; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5415; "Invoiced Qty. (Base)"; Decimal)
        {
            Caption = 'Invoiced Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5468; "Reserved Qty. (Base)"; Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            CalcFormula = Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Source ID" = FIELD ("Journal Template Name"),
                                                                           "Source Ref. No." = FIELD ("Line No."),
                                                                           "Source Type" = CONST (83),
                                                                           "Source Subtype" = FIELD ("Entry Type"),
                                                                           "Source Batch Name" = FIELD ("Journal Batch Name"),
                                                                           "Source Prod. Order Line" = CONST (0),
                                                                           "Reservation Status" = CONST (Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5560; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(5561; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            Editable = false;
            OptionCaption = 'Manual,Forward,Backward,Pick + Forward,Pick + Backward';
            OptionMembers = Manual,Forward,Backward,"Pick + Forward","Pick + Backward";
        }
        field(5562; "Changed by User"; Boolean)
        {
            Caption = 'Changed by User';
            Editable = false;
        }
        field(5700; "Cross-Reference No."; Code[20])
        {
            Caption = 'Cross-Reference No.';
        }
        field(5701; "Originally Ordered No."; Code[20])
        {
            AccessByPermission = TableData "Item Substitution" = R;
            Caption = 'Originally Ordered No.';
            TableRelation = Item;
        }
        field(5702; "Originally Ordered Var. Code"; Code[10])
        {
            AccessByPermission = TableData "Item Substitution" = R;
            Caption = 'Originally Ordered Var. Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Originally Ordered No."));
        }
        field(5703; "Out-of-Stock Substitution"; Boolean)
        {
            Caption = 'Out-of-Stock Substitution';
        }
        field(5704; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5705; Nonstock; Boolean)
        {
            Caption = 'Nonstock';
        }
        field(5706; "Purchasing Code"; Code[10])
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5707; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code" = FIELD ("Item Category Code"));
        }
        field(5791; "Planned Delivery Date"; Date)
        {
            Caption = 'Planned Delivery Date';
        }
        field(5793; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(5800; "Value Entry Type"; Option)
        {
            Caption = 'Value Entry Type';
            OptionCaption = 'Direct Cost,Revaluation,Rounding,Indirect Cost,Variance';
            OptionMembers = "Direct Cost",Revaluation,Rounding,"Indirect Cost",Variance;
        }
        field(5801; "Item Charge No."; Code[20])
        {
            Caption = 'Item Charge No.';
            TableRelation = "Item Charge";
        }
        field(5802; "Inventory Value (Calculated)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inventory Value (Calculated)';
            Editable = false;
        }
        field(5803; "Inventory Value (Revalued)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inventory Value (Revalued)';
            MinValue = 0;
        }
        field(5804; "Variance Type"; Option)
        {
            Caption = 'Variance Type';
            OptionCaption = ' ,Purchase,Material,Capacity,Capacity Overhead,Manufacturing Overhead';
            OptionMembers = " ",Purchase,Material,Capacity,"Capacity Overhead","Manufacturing Overhead";
        }
        field(5805; "Inventory Value Per"; Option)
        {
            Caption = 'Inventory Value Per';
            Editable = false;
            OptionCaption = ' ,Item,Location,Variant,Location and Variant';
            OptionMembers = " ",Item,Location,Variant,"Location and Variant";
        }
        field(5806; "Partial Revaluation"; Boolean)
        {
            Caption = 'Partial Revaluation';
            Editable = false;
        }
        field(5807; "Applies-from Entry"; Integer)
        {
            Caption = 'Applies-from Entry';
            MinValue = 0;
        }
        field(5808; "Invoice No."; Code[20])
        {
            Caption = 'Invoice No.';
        }
        field(5809; "Unit Cost (Calculated)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (Calculated)';
            Editable = false;
        }
        field(5810; "Unit Cost (Revalued)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (Revalued)';
            MinValue = 0;
        }
        field(5811; "Applied Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Applied Amount';
            Editable = false;
        }
        field(5812; "Update Standard Cost"; Boolean)
        {
            Caption = 'Update Standard Cost';
        }
        field(5813; "Amount (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (ACY)';
        }
        field(5817; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(5818; Adjustment; Boolean)
        {
            Caption = 'Adjustment';
        }
        field(5819; "Applies-to Value Entry"; Integer)
        {
            Caption = 'Applies-to Value Entry';
        }
        field(5820; "Invoice-to Source No."; Code[20])
        {
            Caption = 'Invoice-to Source No.';
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor;
        }
        field(5830; Type; Option)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Type';
            OptionCaption = 'Work Center,Machine Center, ,Resource';
            OptionMembers = "Work Center","Machine Center"," ",Resource;
        }
        field(5831; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Machine Center")) "Machine Center"
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST (Resource)) Resource;
        }
        field(5838; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            TableRelation = IF ("Order Type" = CONST (Production)) "Prod. Order Routing Line"."Operation No." WHERE (Status = CONST (Released),
                                                                                                                  "Prod. Order No." = FIELD ("Order No."),
                                                                                                                  "Routing No." = FIELD ("Routing No."),
                                                                                                                  "Routing Reference No." = FIELD ("Routing Reference No."));
        }
        field(5839; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            Editable = false;
            TableRelation = "Work Center";
        }
        field(5841; "Setup Time"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
        }
        field(5842; "Run Time"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
        }
        field(5843; "Stop Time"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Stop Time';
            DecimalPlaces = 0 : 5;
        }
        field(5846; "Output Quantity"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Output Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(5847; "Scrap Quantity"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Scrap Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(5849; "Concurrent Capacity"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Concurrent Capacity';
            DecimalPlaces = 0 : 5;
        }
        field(5851; "Setup Time (Base)"; Decimal)
        {
            Caption = 'Setup Time (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5852; "Run Time (Base)"; Decimal)
        {
            Caption = 'Run Time (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5853; "Stop Time (Base)"; Decimal)
        {
            Caption = 'Stop Time (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5856; "Output Quantity (Base)"; Decimal)
        {
            Caption = 'Output Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5857; "Scrap Quantity (Base)"; Decimal)
        {
            Caption = 'Scrap Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5858; "Cap. Unit of Measure Code"; Code[10])
        {
            Caption = 'Cap. Unit of Measure Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = IF (Type = CONST (Resource)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(5859; "Qty. per Cap. Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Cap. Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(5873; "Starting Time"; Time)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Starting Time';
        }
        field(5874; "Ending Time"; Time)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Ending Time';
        }
        field(5882; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Editable = false;
            TableRelation = "Routing Header";
        }
        field(5883; "Routing Reference No."; Integer)
        {
            Caption = 'Routing Reference No.';
        }
        field(5884; "Prod. Order Comp. Line No."; Integer)
        {
            Caption = 'Prod. Order Comp. Line No.';
            TableRelation = IF ("Order Type" = CONST (Production)) "Prod. Order Component"."Line No." WHERE (Status = CONST (Released),
                                                                                                          "Prod. Order No." = FIELD ("Order No."),
                                                                                                          "Prod. Order Line No." = FIELD ("Order Line No."));
        }
        field(5885; Finished; Boolean)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Finished';
        }
        field(5887; "Unit Cost Calculation"; Option)
        {
            Caption = 'Unit Cost Calculation';
            OptionCaption = 'Time,Units';
            OptionMembers = Time,Units;
        }
        field(5888; Subcontracting; Boolean)
        {
            Caption = 'Subcontracting';
        }
        field(5895; "Stop Code"; Code[10])
        {
            Caption = 'Stop Code';
            TableRelation = Stop;
        }
        field(5896; "Scrap Code"; Code[10])
        {
            Caption = 'Scrap Code';
            TableRelation = Scrap;
        }
        field(5898; "Work Center Group Code"; Code[10])
        {
            Caption = 'Work Center Group Code';
            Editable = false;
            TableRelation = "Work Center Group";
        }
        field(5899; "Work Shift Code"; Code[10])
        {
            Caption = 'Work Shift Code';
            TableRelation = "Work Shift";
        }
        field(6500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            Editable = false;
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Editable = false;
        }
        field(6502; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(6503; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
            Editable = false;
        }
        field(6504; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
            Editable = false;
        }
        field(6505; "New Item Expiration Date"; Date)
        {
            Caption = 'New Item Expiration Date';
        }
        field(6506; "Item Expiration Date"; Date)
        {
            Caption = 'Item Expiration Date';
            Editable = false;
        }
        field(6600; "Return Reason Code"; Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(7315; "Warehouse Adjustment"; Boolean)
        {
            Caption = 'Warehouse Adjustment';
        }
        field(7380; "Phys Invt Counting Period Code"; Code[10])
        {
            Caption = 'Phys Invt Counting Period Code';
            Editable = false;
            TableRelation = "Phys. Invt. Counting Period";
        }
        field(7381; "Phys Invt Counting Period Type"; Option)
        {
            Caption = 'Phys Invt Counting Period Type';
            Editable = false;
            OptionCaption = ' ,Item,SKU';
            OptionMembers = " ",Item,SKU;
        }
        field(50000; "Proportion of freight"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Proportion of freight';
            Description = 'P0003';
            MinValue = 0;
        }
        field(5012402; "Routing TAN"; Code[20])
        {
            Caption = 'Routing TAN';
            Description = ':PMW14.02:28:1';
        }
        field(5012403; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
            Description = ':PMW14.02:53:1';
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
        field(5012502; "New Lot No. Trading Unit"; Code[20])
        {
            Caption = 'New Lot No. Trading Unit';
            Description = ':PMW14.01:2457:1';
        }
        field(5012503; "New Trading Unit No."; Code[20])
        {
            Caption = 'New Trading Unit No.';
            Description = ':PMW14.01:2457:1';
        }
        field(5012583; "Contingent Type"; Code[20])
        {
            Caption = 'Contingent Type';
            Description = '#PMW16.00.02:T250';
            TableRelation = "Contingent Type";
        }
        field(5012584; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = '#PMW16.00.02:T250';
            TableRelation = Contact;
        }
        field(5012700; "Order Type Code"; Code[20])
        {
            Caption = 'Order Type Code';
            Description = '#PXW16.00:104';
            TableRelation = "MS Order Type";
        }
        field(5012701; "Standstill Reason Code"; Code[20])
        {
            Caption = 'Standstill Reason Code';
            Description = '#PXW16.00:104';
            TableRelation = "MS Standstill Reason";
        }
        field(5013350; "BOM Document Type"; Option)
        {
            Caption = 'BOM Document Type';
            Description = ':DMW13.60:1:01';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,Document BOM Line,Construction Line';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,"Document BOM Line","Construction Line";
        }
        field(5013360; "BOM Document No."; Code[20])
        {
            Caption = 'BOM Document No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER (< "Construction Line")) "Sales Header"."No." WHERE ("Document Type" = FIELD ("BOM Document Type"))
            ELSE
            IF ("BOM Document Type" = FILTER ("Construction Line")) "Construction Header"."No." WHERE ("No." = FIELD ("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013370; "BOM Document Line No."; Integer)
        {
            Caption = 'BOM Document Line No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER (< "Document BOM Line")) "Sales Line"."Line No." WHERE ("Document Type" = FIELD ("BOM Document Type"),
                                                                                                                 "Document No." = FIELD ("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013380; "BOM lfd. Nr."; Integer)
        {
            Caption = 'BOM Entry No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER ("Construction Line")) "Construction Line"."Entry No." WHERE ("Document No." = FIELD ("BOM Document No."));
        }
        field(5013400; "E. Prod. Order Status"; Option)
        {
            Caption = 'E. Prod. Order Status';
            Description = ':DMW13.60.03:1:01';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(5013410; "E. Prod. Order No."; Code[20])
        {
            Caption = 'E. Prod. Order No.';
            Description = ':DMW13.60.03:1:01';
            TableRelation = "Production Order"."No." WHERE (Status = FIELD ("E. Prod. Order Status"));
        }
        field(5013420; "E. Prod. Order Line No."; Integer)
        {
            Caption = 'E. Prod. Order Line No.';
            Description = ':DMW13.60.03:1:01';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status = FIELD ("E. Prod. Order Status"),
                                                                 "Prod. Order No." = FIELD ("E. Prod. Order No."));
        }
        field(5013430; "E. Prod. Order Comp Line No."; Integer)
        {
            Caption = 'E. Prod. Order Comp Line No.';
            Description = ':DMW13.60.03:1:01';
        }
        field(5034550; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#NAV20100:A1000 20.04.07 DEWUE.SE';
        }
        field(5034551; "Subcont. Purch. Rcpt. No."; Code[20])
        {
            Caption = 'Subcontracting Purch. Rcpt. No.';
            Description = 'QMW16.00';
            TableRelation = "Purch. Rcpt. Header";
        }
        field(5034552; "Subcont. Purch. Rcpt. Line No."; Integer)
        {
            Caption = 'Subcontracting Purch. Rcpt. Line No.';
            Description = 'QMW16.00';
        }
        field(5034554; "Retain Sample"; Boolean)
        {
            Caption = 'Retain Sample';
            Description = '#QMW18.00.01:T105';
        }
        field(5034555; "Elimination Date"; Date)
        {
            Description = '#QMW18.00.01:T105';
        }
        field(5034620; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.02:X001';
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034623; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034624; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034625; "New Status"; Code[20])
        {
            Caption = 'New Status';
            Description = '#QMW16.00.03:T509';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034630; "Inventory Status"; Code[20])
        {
            Caption = 'Inventory Status';
            Description = '#QMW16.00.02:X001';
        }
        field(5034632; "Availability Date"; Date)
        {
            Caption = 'Availability Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034634; "Lot Block/Release Posting"; Boolean)
        {
            Caption = 'Lot Block/Release Posting';
            Description = '#QMW16.00.02:X001';
        }
        field(5034635; "New Warranty Date"; Date)
        {
            Caption = 'New Warranty Date';
            Description = '#QMW16.00.03:T509';
            Editable = false;
        }
        field(5034636; "New External Lot No."; Text[30])
        {
            Caption = 'New External Lot No.';
            Description = '#QMW16.00.03:T509';
        }
        field(5034637; "New Quarantine Date"; Date)
        {
            Caption = 'New Quarantine Date';
            Description = '#QMW16.00.03:T509';
        }
        field(5034638; "New Retest Date"; Date)
        {
            Caption = 'New Retest Date';
            Description = '#QMW16.00.03:T509';
        }
        field(5034639; "New Entry Date"; Date)
        {
            Caption = 'New Entry Date';
            Description = '#QMW16.00.03:T509';
        }
        field(5034640; "Test Order No."; Code[20])
        {
            Description = '#QMW18.00.00.02:T501';
        }
        field(5072650; "Undo Rental Shipment"; Boolean)
        {
            Caption = 'Undo Rental Shipment';
            Description = '#RENW16.00:10-001';
        }
        field(5072651; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            Description = '#RENW16.00:10-001';
            TableRelation = "Sales Line"."Document No." WHERE ("Document Type" = CONST (Order));
        }
        field(5072652; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
            Description = '#RENW16.00:10-001';
            TableRelation = "Sales Line"."Line No." WHERE ("Document Type" = CONST (Order));
        }
        field(5307940; "Mobile Dialog Processed"; Boolean)
        {
            Caption = 'Mobile Dialog Processed';
            Description = 'CCMS';
            Editable = false;
        }
        field(5307941; "Mobile Session GUID"; Guid)
        {
            Caption = 'Mobile Session GUID';
            Description = 'CCMS';
        }
        field(5307942; "Mobile Posted"; Boolean)
        {
            Caption = 'Mobile Posted';
            Description = 'CCMS';
        }
        field(5307943; "Mobile Printed"; Boolean)
        {
            Caption = 'Mobile Printed';
            Description = 'CCMS';
        }
        field(5307945; "MD User ID"; Code[50])
        {
            Caption = 'MD User ID';
            Description = 'CCMS';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5307950; Confirmed; Boolean)
        {
            Caption = 'Confirmed';
            Description = 'CCMS';
        }
        field(5307960; "Suspend Sum-up"; Boolean)
        {
            Caption = 'Suspend Sum-up';
            Description = 'CCMS';
        }
        field(5307961; "Suspend Put-away Qty. Req."; Boolean)
        {
            Caption = 'Suspend Put-away Qty. Req.';
            Description = 'CCMS';
        }
        field(5307970; "Create Test Order"; Boolean)
        {
            Caption = 'Create Test Order';
            Description = 'CCMS';
        }
        field(5308000; "MD Buffer 1 Code 010"; Code[10])
        {
            Caption = 'MD Buffer 1 Code 010';
            Description = 'CCMS';
        }
        field(5308001; "MD Buffer 2 Code 010"; Code[10])
        {
            Caption = 'MD Buffer 2 Code 010';
            Description = 'CCMS';
        }
        field(5308002; "MD Buffer 3 Code 010"; Code[10])
        {
            Caption = 'MD Buffer 3 Code 010';
            Description = 'CCMS';
        }
        field(5308003; "MD Buffer 1 Code 020"; Code[20])
        {
            Caption = 'MD Buffer 1 Code 020';
            Description = 'CCMS';
        }
        field(5308004; "MD Buffer 2 Code 020"; Code[20])
        {
            Caption = 'MD Buffer 2 Code 020';
            Description = 'CCMS';
        }
        field(5308005; "MD Buffer 3 Code 020"; Code[20])
        {
            Caption = 'MD Buffer 3 Code 020';
            Description = 'CCMS';
        }
        field(5308006; "MD Buffer 1 Integer"; Integer)
        {
            Caption = 'MD Buffer 1 Integer';
            Description = 'CCMS';
        }
        field(5308007; "MD Buffer 2 Integer"; Integer)
        {
            Caption = 'MD Buffer 2 Integer';
            Description = 'CCMS';
        }
        field(5308008; "MD Buffer 3 Integer"; Integer)
        {
            Caption = 'MD Buffer 3 Integer';
            Description = 'CCMS';
        }
        field(5308009; "MD Buffer 1 Decimal"; Decimal)
        {
            Caption = 'MD Buffer 1 Decimal';
            Description = 'CCMS';
        }
        field(5308010; "MD Buffer 2 Decimal"; Decimal)
        {
            Caption = 'MD Buffer 2 Decimal';
            Description = 'CCMS';
        }
        field(5308011; "MD Buffer 3 Decimal"; Decimal)
        {
            Caption = 'MD Buffer 3 Decimal';
            Description = 'CCMS';
        }
        field(5308012; "MD Buffer 1 Boolean"; Boolean)
        {
            Caption = 'MD Buffer 1 Boolean';
            Description = 'CCMS';
        }
        field(5308013; "MD Buffer 2 Boolean"; Boolean)
        {
            Caption = 'MD Buffer 2 Boolean';
            Description = 'CCMS';
        }
        field(5308020; "MD Sugg. Location Code"; Code[10])
        {
            Caption = 'MD Sugg. Location Code';
            Description = 'CCMS';
            TableRelation = Location;
        }
        field(5308021; "MD Sugg. Bin Code"; Code[20])
        {
            Caption = 'MD Sugg. Bin Code';
            Description = 'CCMS';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("MD Sugg. Location Code"));
        }
        field(5308022; "MD Sugg. Serial No."; Code[20])
        {
            Caption = 'MD Sugg. Serial No.';
            Description = 'CCMS';
        }
        field(5308023; "MD Sugg. Lot No."; Code[20])
        {
            Caption = 'MD Sugg. Lot No.';
            Description = 'CCMS';
        }
        field(5308024; "MD Sugg. Quantity"; Decimal)
        {
            Caption = 'MD Sugg. Quantity';
            Description = 'CCMS';
        }
        field(5308025; "MD Sugg. New Location Code"; Code[10])
        {
            Caption = 'MD Sugg. New Location Code';
            Description = 'CCMS';
            TableRelation = Location;
        }
        field(5308026; "MD Sugg. New Bin Code"; Code[20])
        {
            Caption = 'MD Sugg. New Bin Code';
            Description = 'CCMS';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("MD Sugg. Location Code"));
        }
        field(5308027; "MD Sugg. New Serial No."; Code[20])
        {
            Caption = 'MD Sugg. New Serial No.';
            Description = 'CCMS';
        }
        field(5308028; "MD Sugg. New Lot No."; Code[20])
        {
            Caption = 'MD Sugg. New Lot No.';
            Description = 'CCMS';
        }
        field(99000755; "Overhead Rate"; Decimal)
        {
            Caption = 'Overhead Rate';
            DecimalPlaces = 0 : 5;
        }
        field(99000756; "Single-Level Material Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Single-Level Material Cost';
        }
        field(99000757; "Single-Level Capacity Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Single-Level Capacity Cost';
        }
        field(99000758; "Single-Level Subcontrd. Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Single-Level Subcontrd. Cost';
        }
        field(99000759; "Single-Level Cap. Ovhd Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Single-Level Cap. Ovhd Cost';
        }
        field(99000760; "Single-Level Mfg. Ovhd Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Single-Level Mfg. Ovhd Cost';
        }
        field(99000761; "Rolled-up Material Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rolled-up Material Cost';
        }
        field(99000762; "Rolled-up Capacity Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rolled-up Capacity Cost';
        }
        field(99000763; "Rolled-up Subcontracted Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rolled-up Subcontracted Cost';
        }
        field(99000764; "Rolled-up Mfg. Ovhd Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rolled-up Mfg. Ovhd Cost';
        }
        field(99000765; "Rolled-up Cap. Overhead Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rolled-up Cap. Overhead Cost';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
        }
        key(Key2; "Entry Type", "Item No.", "Variant Code", "Location Code", "Bin Code", "Posting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key3; "Entry Type", "Item No.", "Variant Code", "New Location Code", "New Bin Code", "Posting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key4; "Item No.", "Posting Date")
        {
        }
        key(Key5; "Item No.", "Variant Code", "Bin Code", "New Bin Code", "Unit of Measure Code", "Lot No.", "New Lot No.", "Serial No.", "New Serial No.")
        {
            SumIndexFields = Quantity, "Quantity (Base)";
        }
    }

    fieldgroups
    {
    }
}

