table 32 "Item Ledger Entry"
{
    // CSC8.00: - New Field "Selection"
    // 
    // #NAV20100:A1018 20.08.07 DEWUE.SE
    //   Determine "No. of Units"
    //   add Field "No. of Units"
    // 
    // #:QMW16.00:05:01  15.01.09 DEMSR.KHS
    //   New Fields for Test Order Creation on Orders to Subcontr.
    // 
    // #QMW16.00.01:R001 11.11.09 DEMSR.KHS
    //   Customer / Item Specification tables
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.02.02:T502 09.12.10 DEMSR.KHS
    //   Missing Key in Item Ledger Entry table added
    //   New Key: "Item No.","Variant Code","Serial No."
    //   New Key: "Item No.","Available for Planning",Open  -  SumIndexField: "Remaining Quantity"
    // 
    // #QMW16.00.02.03:T501 03.01.11 DEMSR.KHS
    //   Blocked inventory not available
    //   Key "Item No.","Available for Planning",Open changed to
    //   "Item No.","Variant Code",Open,Positive,"Location Code","Expiration Date",
    //   "Lot No.","Availability Date","Retest Date","Quarantine Date",
    //   "Available for Planning",Status
    // 
    // #QMW16.00.03:R460 07.07.11 DEMSR.KHS
    //   SumIdxField "Quantity" added to key:
    //     Item No.,Variant Code,Open,Positive,Location Code,Expiration Date,Lot No.,
    //     Availability Date,Retest Date,Quarantine Date,Available for Planning,Status
    // 
    // #QMW17.10.00.01:T504 25.11.13 DEMSR.KHS
    //   add missing key
    //     "Subcont. Purch. Rcpt. No.","Subcont. Purch. Rcpt. Line No."
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Fields added: "Retain Sample", "Elimination Date"
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   Filter on "Inventory blocked by QC" transferred from codeunit 99000854
    // 
    // #PMW17.10.01:T102 25.08.14 DEMSR.KHS
    //   Fields added: "Production Structure No."
    //                 "Production BOM No."
    //                 "Production BOM Version Code"
    // 
    // #RENW16.00:10-001  28.04.2009  DEMSR.KHS
    //   Add Rental Fields
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // #RENW16.00.02.04:T501 04.07.11 DEMSR.KHS
    //   Key added: "Rent Order No.","Rent Order Line No.","Entry Type"
    // 
    // #RENW17.00
    //   Key added: "Item No.","Serial No."
    // 
    // #RENW17.10.00.02:T516 04.06.14 DEMSR.KHS
    //   Fix Undo Rental Return
    //     Add field: "Corrected by Ledger Entry No."
    // 
    // :DMW13.60:1:01 # Neue Felder für Stücklistenbuchungen   BOM Source Table No.
    //                # Neuer Key mit allen neuen Feldern  BOM Document Type
    //                #                                    BOM Document No.
    //                #                                    BOM Document Line No.
    //                #                                    BOM lfd. Nr.
    // :DMW13.60:1:02 # Felder für kalkulation bei Stücklistenbuchung
    //                #   KalkGruppe
    //                #   geh. zu Kalk.option leer
    //                # Neuer Schlüssel für die Nachkalkulation über Posten
    //                # BOM Document Type,BOM Document No.,Kalkulationsgruppe,geh. zu Kalk.option leer
    // 
    // :DMW14.04:12:01 #new key for calcluation: Prod. Order No.,Prod. Order Line No.,Prod. Order Comp. Line No.,Entry Type
    // :DMW15.01:59:01 #Created SQLIndex
    // #DMW16.00.03.01:A007 17.11.11 DEMSR.SSZ
    //   #Fields and Key from :DMW13.60:1:02 deleted
    // #DMW16.00.03.03:A007 27.07.12 DEMSR.SSZ
    //   #Corrected Table Relation at field 5013380 "BOM Entry No."
    // L-MOBILE 2016-08-30 LM2.00
    //   key
    //     "Location Code,Item No.,Variant Code,Serial No.,Lot No."
    //   defined

    Caption = 'Item Ledger Entry';
    Permissions = TableData "Item Ledger Entry" = rm;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output, ,Assembly Consumption,Assembly Output';
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output," ","Assembly Consumption","Assembly Output";
        }
        field(5; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST(Customer)) Customer
            ELSE
            IF ("Source Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST(Item)) Item;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(12; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(14; "Invoiced Quantity"; Decimal)
        {
            Caption = 'Invoiced Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(28; "Applies-to Entry"; Integer)
        {
            Caption = 'Applies-to Entry';
        }
        field(29; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(33; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(34; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(36; Positive; Boolean)
        {
            Caption = 'Positive';
        }
        field(41; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor,Item';
            OptionMembers = " ",Customer,Vendor,Item;
        }
        field(47; "Drop Shipment"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Drop Shipment';
        }
        field(50; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(51; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(52; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
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
        field(61; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(62; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(63; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(64; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(70; "Reserved Quantity"; Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Source ID" = CONST(''),
                                                                           "Source Ref. No." = FIELD("Entry No."),
                                                                           "Source Type" = CONST(32),
                                                                           "Source Subtype" = CONST("0"),
                                                                           "Source Batch Name" = CONST(''),
                                                                           "Source Prod. Order Line" = CONST(0),
                                                                           "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
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
            Editable = false;
        }
        field(92; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(904; "Assemble to Order"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Assemble to Order';
        }
        field(1000; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job."No.";
        }
        field(1001; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE("Job No." = FIELD("Job No."));
        }
        field(1002; "Job Purchase"; Boolean)
        {
            Caption = 'Job Purchase';
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(5408; "Derived from Blanket Order"; Boolean)
        {
            Caption = 'Derived from Blanket Order';
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
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Originally Ordered No."));
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
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5707; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE("Item Category Code" = FIELD("Item Category Code"));
        }
        field(5800; "Completely Invoiced"; Boolean)
        {
            Caption = 'Completely Invoiced';
        }
        field(5801; "Last Invoice Date"; Date)
        {
            Caption = 'Last Invoice Date';
        }
        field(5802; "Applied Entry to Adjust"; Boolean)
        {
            Caption = 'Applied Entry to Adjust';
        }
        field(5803; "Cost Amount (Expected)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Expected)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Cost Amount (Expected)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5804; "Cost Amount (Actual)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Actual)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Cost Amount (Actual)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5805; "Cost Amount (Non-Invtbl.)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Non-Invtbl.)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Cost Amount (Non-Invtbl.)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5806; "Cost Amount (Expected) (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Expected) (ACY)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Cost Amount (Expected) (ACY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5807; "Cost Amount (Actual) (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Actual) (ACY)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Cost Amount (Actual) (ACY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5808; "Cost Amount (Non-Invtbl.)(ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Non-Invtbl.)(ACY)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Cost Amount (Non-Invtbl.)(ACY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5813; "Purchase Amount (Expected)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Purchase Amount (Expected)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Purchase Amount (Expected)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5814; "Purchase Amount (Actual)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Purchase Amount (Actual)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Purchase Amount (Actual)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5815; "Sales Amount (Expected)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Sales Amount (Expected)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Sales Amount (Expected)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5816; "Sales Amount (Actual)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Sales Amount (Actual)" WHERE("Item Ledger Entry No." = FIELD("Entry No.")));
            Caption = 'Sales Amount (Actual)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5817; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(5818; "Shipped Qty. Not Returned"; Decimal)
        {
            AccessByPermission = TableData "Sales Header" = R;
            Caption = 'Shipped Qty. Not Returned';
            DecimalPlaces = 0 : 5;
        }
        field(5833; "Prod. Order Comp. Line No."; Integer)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Prod. Order Comp. Line No.';
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
        field(6510; "Item Tracking"; Option)
        {
            Caption = 'Item Tracking';
            Editable = false;
            OptionCaption = 'None,Lot No.,Lot and Serial No.,Serial No.';
            OptionMembers = "None","Lot No.","Lot and Serial No.","Serial No.";
        }
        field(6602; "Return Reason Code"; Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(5012420; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = '#PMW17.10.01:T102';
            TableRelation = "Production Structure Header";
        }
        field(5012421; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            Description = '#PMW17.10.01:T102';
        }
        field(5012422; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            Description = '#PMW17.10.01:T102';
        }
        field(5012423; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Description = '#PMW17.10.01:T102';
        }
        field(5012424; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            Description = '#PMW17.10.01:T102';
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
        field(5012600; "QC Status"; Code[10])
        {
            Caption = 'QC Status';
            Description = ':PMW14.01:4069:1';
            TableRelation = "QC Status";
        }
        field(5012601; "Inventory blocked by QC"; Boolean)
        {
            Caption = 'Inventory blocked by QC';
            Description = 'QCSTATUS:PMW15.00:224:1';
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
            TableRelation = IF ("BOM Document Type" = FILTER(< "Construction Line")) "Sales Header"."No." WHERE("Document Type" = FIELD("BOM Document Type"))
            ELSE
            IF ("BOM Document Type" = FILTER("Construction Line")) "Construction Header"."No." WHERE("No." = FIELD("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013370; "BOM Document Line No."; Integer)
        {
            Caption = 'BOM Document Line No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER(< "Construction Line")) "Sales Line"."Line No." WHERE("Document Type" = FIELD("BOM Document Type"),
                                                                                                                 "Document No." = FIELD("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013380; "BOM Entry No."; Integer)
        {
            Caption = 'BOM Entry No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER("Construction Line")) "Construction Line"."Entry No." WHERE("Document No." = FIELD("BOM Document No."));
        }
        field(5034550; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#NAV20100:A1018 20.08.07 DEWUE.SE';
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
        field(5034553; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Description = '#QMW16.00.01:R001';
            TableRelation = "Test Order";
        }
        field(5034554; "Retain Sample"; Boolean)
        {
            Caption = 'Retain Sample';
            Description = '#QMW18.00.01:T105';
        }
        field(5034555; "Elimination Date"; Date)
        {
            Caption = 'Elimination Date';
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
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034624; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.02:X001';
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
        field(5034633; "Available for Planning"; Boolean)
        {
            Caption = 'Available for Planning';
            Description = '#QMW16.00.02:X001';
        }
        field(5034634; "Lot Block/Release Posting"; Boolean)
        {
            Caption = 'Lot Block/Release Posting';
            Description = '#QMW16.00.02:X001';
        }
        field(5034635; "Test Quality"; Option)
        {
            Caption = 'Test Quality';
            Description = '#QMW16.00.03:R449';
            OptionCaption = ' ,Good,Average,Bad';
            OptionMembers = " ",Good,"Average",Bad;
        }
        field(5072651; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            Description = '#RENW16.00:10-001';
            TableRelation = "Sales Line"."Document No." WHERE("Document Type" = CONST(Order));
        }
        field(5072652; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
            Description = '#RENW16.00:10-001';
            TableRelation = "Sales Line"."Line No." WHERE("Document Type" = CONST(Order));
        }
        field(5072653; "Corrected by Ledger Entry No."; Integer)
        {
            Caption = 'Corrected by Entry No.';
            Description = '#RENW17.10.00.02:T516';
        }
        field(5171654; Selection; Boolean)
        {
            Caption = 'Selection';
            Description = 'CSC8.00';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.")
        {
            SumIndexFields = "Invoiced Quantity";
        }
        key(Key3; "Item No.", "Posting Date")
        {
        }
        key(Key4; "Item No.", "Entry Type", "Variant Code", "Drop Shipment", "Location Code", "Posting Date")
        {
            SumIndexFields = Quantity, "Invoiced Quantity";
        }
        key(Key5; "Source Type", "Source No.", "Item No.", "Variant Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(Key6; "Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date")
        {
            SumIndexFields = Quantity, "Remaining Quantity";
        }
        key(Key7; "Item No.", Open, "Variant Code", Positive, "Location Code", "Posting Date", "Expiration Date", "Lot No.", "Serial No.")
        {
            SumIndexFields = Quantity, "Remaining Quantity";
        }
        key(Key8; "Country/Region Code", "Entry Type", "Posting Date")
        {
        }
        key(Key9; "Document No.", "Document Type", "Document Line No.")
        {
        }
        key(Key10; "Item No.", "Entry Type", "Variant Code", "Drop Shipment", "Global Dimension 1 Code", "Global Dimension 2 Code", "Location Code", "Posting Date")
        {
            Enabled = false;
            SumIndexFields = Quantity, "Invoiced Quantity";
        }
        key(Key11; "Source Type", "Source No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Item No.", "Variant Code", "Posting Date")
        {
            Enabled = false;
            SumIndexFields = Quantity;
        }
        key(Key12; "Order Type", "Order No.", "Order Line No.", "Entry Type", "Prod. Order Comp. Line No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity;
        }
        key(Key13; "Item No.", "Applied Entry to Adjust")
        {
        }
        key(Key14; "Item No.", Positive, "Location Code", "Variant Code")
        {
        }
        key(Key15; "Entry Type", Nonstock, "Item No.", "Posting Date")
        {
            Enabled = false;
        }
        key(Key16; "Item No.", "Location Code", Open, "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.")
        {
            Enabled = false;
            SumIndexFields = "Remaining Quantity";
        }
        key(Key17; "Item No.", Open, "Variant Code", Positive, "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
        key(Key18; "Item No.", Open, "Variant Code", "Location Code", "Item Tracking", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Remaining Quantity";
        }
        key(Key19; "Lot No.")
        {
            Enabled = false;
        }
        key(Key20; "Serial No.")
        {
            Enabled = false;
        }
        key(Key21; "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
        }
        key(Key22; "Item No.", "Location Code", "Unit of Measure Code", "Lot No. Trading Unit", Open, Positive)
        {
        }
        key(Key23; "QC Status", Open, "Location Code")
        {
        }
        key(Key24; "Location Code", Open, "QC Status")
        {
        }
        key(Key25; "Item No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Location Code", "Drop Shipment", "Variant Code", "Lot No.", "Serial No.", "Inventory blocked by QC")
        {
            SumIndexFields = Quantity, "Remaining Quantity";
        }
        key(Key26; "Entry Type", "Source Type", "Source No.", "Item No.", "Contingent Type", "Posting Date", "Contact No.")
        {
            SumIndexFields = Quantity;
        }
        key(Key27; "Item No.", "Variant Code", "Lot No.")
        {
        }
        key(Key28; "Item No.", "Variant Code", "Lot No. Trading Unit")
        {
            SumIndexFields = Quantity;
        }
        key(Key29; "Item No.", "Variant Code", "Lot No. Trading Unit", "Trading Unit No.")
        {
            SumIndexFields = Quantity;
        }
        key(Key30; "Item No.", "Variant Code", "Serial No.")
        {
        }
        key(Key31; "Item No.", "Variant Code", Open, Positive, "Location Code", "Expiration Date", "Lot No.", "Availability Date", "Retest Date", "Quarantine Date", "Available for Planning", Status)
        {
            SumIndexFields = "Remaining Quantity", Quantity;
        }
        key(Key32; "Rent Order No.", "Rent Order Line No.", "Entry Type")
        {
        }
        key(Key33; "Item No.", "Serial No.")
        {
        }

        key(Key35; "Order Type", "Order No.", "Order Line No.", "Prod. Order Comp. Line No.", "Entry Type")
        {
        }
        key(Key36; "Subcont. Purch. Rcpt. No.", "Subcont. Purch. Rcpt. Line No.")
        {
        }
        key(Key37; "Location Code", "Item No.", "Variant Code", "Serial No.", "Lot No.")
        {
            SumIndexFields = Quantity;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, "Item No.", "Posting Date", "Entry Type", "Document No.")
        {
        }
    }
}

