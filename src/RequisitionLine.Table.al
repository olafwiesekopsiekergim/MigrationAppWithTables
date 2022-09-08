table 246 "Requisition Line"
{
    // P0027 16.03.16 DEBIE.ARE New field 50000 "Run Card Pinted Date"
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - Job No.,Job Line Unique No.
    //                                     - Job Procurement No.
    //                                     - Worksheet Template Name,Journal Batch Name,Job No.,Job Line Unique No.
    // #PRW18.00.06:T501 11.09.15 DENUE.ALAN Bugfix Dimensions from Job
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        New Key:
    //                                        - Worksheet Template Name,Journal Batch Name,Vendor No.,Sell-to Customer No.,Ship-to Code,Order Address Code,
    //                                            Currency Code,Ref. Order Type,Ref. Order Status,Ref. Order No.,Location Code,Transfer-from Code,Main Job No.
    // #PRW19.00:T102 Change CalcFormula in Req.-Line
    //   Changed Calculation Formula of field 7100 "Blanket Purch. Order exists" from
    //     Exist("Purchase Line" WHERE (Document Type=CONST(Blanket Order),Type=CONST(Item),No.=FIELD(No.),Outstanding Quantity=FILTER(<>0)))
    //   to
    //     Exist("Purchase Line" WHERE (Document Type=CONST(Blanket Order),Type=FIELD(Type),No.=FIELD(No.),Outstanding Quantity=FILTER(<>0)))
    // 
    // #CAW16.00.01.01:T500 22.05.12 DEMSR.IST
    //   New function "SetSuspendDeleteRelations"
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :DMW14.00:1:01 #Extended Order Planning with Document BOM and Construction Line
    // :DMW14.04:1:01 #new function to show the reservation
    // :DMW14.04:1:02 #new fields to show the Primary Demand
    // KANBAN:DMW15.02:28:01 #New field 5013470 "Created by KANBAN"
    // :DMW16.00.00.01:6:01 #Use Routing and Prod. BOM No. from Item Variant
    // :DMW16.00.01:24:01 #New functions to set and reset filters
    // :DMW16.00.02:T101 11.10.10 DEMSR.SSZ
    //   #Get "Main Location Code" from Item Card, if it's not empty
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // #DMW16.00.03:T013 20.10.11 DEMSR.SSZ
    //   #unset flag when deleting line
    // #DMW17.00.00.01:A0013 05.04.13 DEMSR.SSZ
    //   #Integrated trigger for Text Module
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00:T500 16.01.15 DEMSR.SSZ
    //   #Check License Permissions
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // :PMW14.01:2466:1
    //   # New field 5012400 "Production Structure No."
    //   # New function "ValidateProdStructureNo"
    // 
    // :PMW14.01.00.01:23:1
    //   # Missing ENU-Caption for field "Production Structure No."
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   # Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:171:1
    //   # Missing captions for Text Constants inserted.
    //   # Correction of DEU-Caption for field "Needed Quantity"
    //   # Correction of DEU-Caption for field "Needed Quantity (Base)"
    // 
    // :PMW14.02.01:83:1
    //   # Using "Production Structure No."
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New function CheckDefaultBin
    //   Call new function before WMSManagement.GetDefaultBin
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   Production Structure handling reorganized
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RENW16.00.01:R055 12.10.09 DEMSR.KHS
    //   3rd Party Rental
    // 
    // #RENW17.00.00.01:T506 29.04.13 DEMSR.KHS
    //   Fix Option String in "Replenishment System"
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.01:T506 10.12.13 DEMSR.KHS
    //   Add Source Code Rental Management
    // 
    // #RENW17.10.00.02:T519 10.04.14 DEMSR.KHS
    //   Change field name and ENU caption from "Rental Document LineNo" to "Rental Document Line No."
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List

    Caption = 'Requisition Line';
    DataCaptionFields = "Journal Batch Name", "Line No.";

    fields
    {
        field(1; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            TableRelation = "Req. Wksh. Template";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Requisition Wksh. Name".Name WHERE("Worksheet Template Name" = FIELD("Worksheet Template Name"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item';
            OptionMembers = " ","G/L Account",Item;
        }
        field(5; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(7; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(8; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(9; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
        }
        field(12; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(13; "Requester ID"; Code[50])
        {
            Caption = 'Requester ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(14; Confirmed; Boolean)
        {
            Caption = 'Confirmed';
        }
        field(15; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(16; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(17; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(18; "Recurring Method"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Method';
            OptionCaption = ',Fixed,Variable';
            OptionMembers = ,"Fixed",Variable;
        }
        field(19; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(20; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
        }
        field(21; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(22; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(23; "Sales Order No."; Code[20])
        {
            Caption = 'Sales Order No.';
            Editable = false;
            TableRelation = "Sales Header"."No." WHERE("Document Type" = CONST(Order));
        }
        field(24; "Sales Order Line No."; Integer)
        {
            Caption = 'Sales Order Line No.';
            Editable = false;
        }
        field(25; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(26; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            Editable = false;
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("Sell-to Customer No."));
        }
        field(28; "Order Address Code"; Code[10])
        {
            Caption = 'Order Address Code';
            TableRelation = "Order Address".Code WHERE("Vendor No." = FIELD("Vendor No."));
        }
        field(29; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(30; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(31; "Reserved Quantity"; Decimal)
        {
            CalcFormula = Sum("Reservation Entry".Quantity WHERE("Source ID" = FIELD("Worksheet Template Name"),
                                                                  "Source Ref. No." = FIELD("Line No."),
                                                                  "Source Type" = CONST(246),
                                                                  "Source Subtype" = CONST("0"),
                                                                  "Source Batch Name" = FIELD("Journal Batch Name"),
                                                                  "Source Prod. Order Line" = CONST(0),
                                                                  "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5401; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Editable = false;
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(5403; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Location Code"),
                                            "Item Filter" = FIELD("No."),
                                            "Variant Filter" = FIELD("Variant Code"));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(5408; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5431; "Reserved Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Source ID" = FIELD("Worksheet Template Name"),
                                                                           "Source Ref. No." = FIELD("Line No."),
                                                                           "Source Type" = CONST(246),
                                                                           "Source Subtype" = CONST("0"),
                                                                           "Source Batch Name" = FIELD("Journal Batch Name"),
                                                                           "Source Prod. Order Line" = CONST(0),
                                                                           "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5520; "Demand Type"; Integer)
        {
            Caption = 'Demand Type';
            Editable = false;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table));
        }
        field(5521; "Demand Subtype"; Option)
        {
            Caption = 'Demand Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9";
        }
        field(5522; "Demand Order No."; Code[20])
        {
            Caption = 'Demand Order No.';
            Editable = false;
        }
        field(5525; "Demand Line No."; Integer)
        {
            Caption = 'Demand Line No.';
            Editable = false;
        }
        field(5526; "Demand Ref. No."; Integer)
        {
            Caption = 'Demand Ref. No.';
            Editable = false;
        }
        field(5527; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(5530; "Demand Date"; Date)
        {
            Caption = 'Demand Date';
            Editable = false;
        }
        field(5532; "Demand Quantity"; Decimal)
        {
            Caption = 'Demand Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5533; "Demand Quantity (Base)"; Decimal)
        {
            Caption = 'Demand Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5538; "Needed Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Needed Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5539; "Needed Quantity (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Needed Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5540; Reserve; Boolean)
        {
            Caption = 'Reserve';
        }
        field(5541; "Qty. per UOM (Demand)"; Decimal)
        {
            Caption = 'Qty. per UOM (Demand)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5542; "Unit Of Measure Code (Demand)"; Code[10])
        {
            Caption = 'Unit Of Measure Code (Demand)';
            Editable = false;
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."));
        }
        field(5552; "Supply From"; Code[20])
        {
            Caption = 'Supply From';
            TableRelation = IF ("Replenishment System" = CONST(Purchase)) Vendor
            ELSE
            IF ("Replenishment System" = CONST(Transfer)) Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(5553; "Original Item No."; Code[20])
        {
            Caption = 'Original Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(5554; "Original Variant Code"; Code[10])
        {
            Caption = 'Original Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Original Item No."));
        }
        field(5560; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(5563; "Demand Qty. Available"; Decimal)
        {
            Caption = 'Demand Qty. Available';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5590; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5701; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = IF (Type = CONST(Item)) "Item Category";
        }
        field(5702; Nonstock; Boolean)
        {
            Caption = 'Nonstock';
        }
        field(5703; "Purchasing Code"; Code[10])
        {
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5705; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE("Item Category Code" = FIELD("Item Category Code"));
        }
        field(5706; "Transfer-from Code"; Code[10])
        {
            Caption = 'Transfer-from Code';
            Editable = false;
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(5707; "Transfer Shipment Date"; Date)
        {
            AccessByPermission = TableData "Transfer Header" = R;
            Caption = 'Transfer Shipment Date';
            Editable = false;
        }
        field(7002; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(7100; "Blanket Purch. Order Exists"; Boolean)
        {
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = CONST("Blanket Order"),
                                                       Type = FIELD(Type),
                                                       "No." = FIELD("No."),
                                                       "Outstanding Quantity" = FILTER(<> 0)));
            Caption = 'Blanket Purch. Order Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50000; "Run Card Pinted Date"; Date)
        {
            CalcFormula = Lookup("Production Order"."Run Card Pinted Date" WHERE(Status = FILTER(Released),
                                                                                  "No." = FIELD("Ref. Order No.")));
            Caption = 'Run card pinted date';
            Description = 'P0027';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012400; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = ':PMW14.01.00.01:23:1';
            TableRelation = IF (Type = CONST(Item)) "Production Structure Header"."No." WHERE(Status = CONST(Certified),
                                                                                             "Production Structure Type" = CONST("Manufacturing Structure"));
        }
        field(5013400; "Primary Demand Type"; Integer)
        {
            Caption = 'Primary Demand Type';
            Description = ':DMW14.04:1:02';
            Editable = false;
        }
        field(5013410; "Primary Demand Subtype"; Option)
        {
            Caption = 'Primary Demand Subtype';
            Description = ':DMW14.04:1:02';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(5013420; "Primary Demand ID"; Code[20])
        {
            Caption = 'Primary Demand ID';
            Description = ':DMW14.04:1:02';
            Editable = false;
        }
        field(5013430; "Primary Demand Batch Name"; Code[10])
        {
            Caption = 'Prim. Dem. Batch Name';
            Description = ':DMW14.04:1:02';
            Editable = false;
        }
        field(5013440; "Prim. Demand Prod. Order Line"; Integer)
        {
            Caption = 'Prim. Demand Prod. Order Line';
            Description = ':DMW14.04:1:02';
            Editable = false;
        }
        field(5013450; "Primary Demand Ref. No."; Integer)
        {
            Caption = 'Primary Demand Ref. No.';
            Description = ':DMW14.04:1:02';
            Editable = false;
        }
        field(5013460; "Primary Demand Customer No."; Code[20])
        {
            CalcFormula = Lookup("Sales Header"."Sell-to Customer No." WHERE("Document Type" = FIELD("Primary Demand Subtype"),
                                                                              "No." = FIELD("Primary Demand ID")));
            Caption = 'Primary Demand Customer No.';
            Description = ':DMW14.04:1:02';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = IF ("Primary Demand Type" = FILTER(36 .. 37)) Customer WHERE("No." = FIELD("Primary Demand ID"));
        }
        field(5013470; "Created by KANBAN"; Boolean)
        {
            Caption = 'Created by KANBAN';
            Description = 'KANBAN:DMW15.02:28:01';
            Editable = false;
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
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5072654; "Rate Code"; Code[10])
        {
            Caption = 'Rate Code';
            Description = '#RENW16.00.01:R055';
        }
        field(5072700; "Rental Document Type"; Option)
        {
            Caption = 'Rental Document Type';
            Description = '#RENW16.00.01:R055';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Contract,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo",Contract,"Return Order";
        }
        field(5072701; "Rental Document No."; Code[20])
        {
            Caption = 'Rental Document No.';
            Description = '#RENW16.00.01:R055';
        }
        field(5072702; "Rental Mgt. Document"; Boolean)
        {
            Caption = 'Rental Mgt. Document';
            Description = '#RENW16.00.01:R055';
        }
        field(5072703; "Rental Document Line No."; Integer)
        {
            Caption = 'Rental Document Line No.';
            Description = '#RENW16.00.01:R055,#RENW17.10.00.02:T519';
        }
        field(5072704; "Rent Cost per Day"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Rent Cost per Day';
            Description = '#RENW16.00.01:R055';
        }
        field(5072705; "No. of Rent Days"; Decimal)
        {
            Caption = 'No. of Rent Days';
            DecimalPlaces = 0 : 6;
            Description = '#RENW16.00.01:R055';
        }
        field(5072714; "Rental Start Date"; Date)
        {
            Caption = 'Rental Start Date';
            Description = '#RENW16.00.01:R055';
        }
        field(5072715; "Rental End Date"; Date)
        {
            Caption = 'Rental End Date';
            Description = '#RENW16.00.01:R055';
        }
        field(5072718; "Alternative Location Code"; Code[10])
        {
            Caption = 'Alternative Location Code';
            Description = '#RENW16.00.01:R055';
            TableRelation = Location.Code WHERE("Use As Rental Location" = CONST(true));
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE("Job No." = FIELD("Job No."),
                                                                       "Unique No." = FIELD("Job Line Unique No."));
        }
        field(5292334; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292335; "Job Comment"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Job Line Unique No."),
                                                               Type = CONST(Purchase)));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292336; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,,,Supplement,,Increase';
            OptionCaption = ' ,,,Supplement,,Increase';
            OptionMembers = " ",,,Supplement,,Increase;
        }
        field(5292337; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
        field(5292351; "Blanket Purch. Order No."; Code[20])
        {
            Caption = 'Blanket Purch. Order No.';
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = FILTER("Blanket Order"));
        }
        field(5292352; "Blanket Purch. Order Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Blanket Purch. Order Line No.';
            TableRelation = "Purchase Line"."Line No." WHERE("Document Type" = FILTER("Blanket Order"),
                                                              "Document No." = FIELD("Blanket Purch. Order No."),
                                                              Type = FIELD(Type),
                                                              "No." = FIELD("No."));
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Main Job No.';
            TableRelation = Job;
        }
        field(5292371; "Direct Job Shipment"; Boolean)
        {
            Caption = 'Direct Job Shipment';
        }
        field(99000750; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header";
        }
        field(99000751; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            TableRelation = "Prod. Order Routing Line"."Operation No." WHERE(Status = CONST(Released),
                                                                              "Prod. Order No." = FIELD("Prod. Order No."),
                                                                              "Routing No." = FIELD("Routing No."));
        }
        field(99000752; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center";
        }
        field(99000754; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
            Editable = false;
            TableRelation = "Prod. Order Line"."Line No." WHERE(Status = CONST(Finished),
                                                                 "Prod. Order No." = FIELD("Prod. Order No."));
        }
        field(99000755; "MPS Order"; Boolean)
        {
            Caption = 'MPS Order';
        }
        field(99000756; "Planning Flexibility"; Option)
        {
            Caption = 'Planning Flexibility';
            OptionCaption = 'Unlimited,None';
            OptionMembers = Unlimited,"None";
        }
        field(99000757; "Routing Reference No."; Integer)
        {
            Caption = 'Routing Reference No.';
        }
        field(99000882; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(99000883; "Gen. Business Posting Group"; Code[10])
        {
            Caption = 'Gen. Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(99000884; "Low-Level Code"; Integer)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Low-Level Code';
            Editable = false;
        }
        field(99000885; "Production BOM Version Code"; Code[10])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE("Production BOM No." = FIELD("Production BOM No."));
        }
        field(99000886; "Routing Version Code"; Code[10])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE("Routing No." = FIELD("Routing No."));
        }
        field(99000887; "Routing Type"; Option)
        {
            Caption = 'Routing Type';
            OptionCaption = 'Serial,Parallel';
            OptionMembers = Serial,Parallel;
        }
        field(99000888; "Original Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Original Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(99000889; "Finished Quantity"; Decimal)
        {
            Caption = 'Finished Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(99000890; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(99000891; "Original Due Date"; Date)
        {
            Caption = 'Original Due Date';
            Editable = false;
        }
        field(99000892; "Scrap %"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
        }
        field(99000894; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(99000895; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(99000896; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(99000897; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(99000898; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header"."No.";
        }
        field(99000899; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
        }
        field(99000900; "Overhead Rate"; Decimal)
        {
            Caption = 'Overhead Rate';
            DecimalPlaces = 0 : 5;
        }
        field(99000901; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            MinValue = 0;
        }
        field(99000902; "Cost Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount';
            Editable = false;
            MinValue = 0;
        }
        field(99000903; "Replenishment System"; Option)
        {
            Caption = 'Replenishment System';
            OptionCaption = 'Purchase,Prod. Order,Transfer,Assembly, ,,,,,Rent,Alternative Location';
            OptionMembers = Purchase,"Prod. Order",Transfer,Assembly," ",,,,,Rent,"Alternative Location";
        }
        field(99000904; "Ref. Order No."; Code[20])
        {
            Caption = 'Ref. Order No.';
            Editable = false;
            TableRelation = IF ("Ref. Order Type" = CONST("Prod. Order")) "Production Order"."No." WHERE(Status = FIELD("Ref. Order Status"))
            ELSE
            IF ("Ref. Order Type" = CONST(Purchase)) "Purchase Header"."No." WHERE("Document Type" = CONST(Order))
            ELSE
            IF ("Ref. Order Type" = CONST(Transfer)) "Transfer Header"."No." WHERE("No." = FIELD("Ref. Order No."))
            ELSE
            IF ("Ref. Order Type" = CONST(Assembly)) "Assembly Header"."No." WHERE("Document Type" = CONST(Order));
            ValidateTableRelation = false;
        }
        field(99000905; "Ref. Order Type"; Option)
        {
            Caption = 'Ref. Order Type';
            Editable = false;
            OptionCaption = ' ,Purchase,Prod. Order,Transfer,Assembly';
            OptionMembers = " ",Purchase,"Prod. Order",Transfer,Assembly;
        }
        field(99000906; "Ref. Order Status"; Option)
        {
            BlankZero = true;
            Caption = 'Ref. Order Status';
            Editable = false;
            OptionCaption = ',Planned,Firm Planned,Released';
            OptionMembers = ,Planned,"Firm Planned",Released;
        }
        field(99000907; "Ref. Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Ref. Line No.';
            Editable = false;
        }
        field(99000908; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(99000909; "Expected Operation Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Planning Routing Line"."Expected Operation Cost Amt." WHERE("Worksheet Template Name" = FIELD("Worksheet Template Name"),
                                                                                            "Worksheet Batch Name" = FIELD("Journal Batch Name"),
                                                                                            "Worksheet Line No." = FIELD("Line No.")));
            Caption = 'Expected Operation Cost Amt.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000910; "Expected Component Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Planning Component"."Cost Amount" WHERE("Worksheet Template Name" = FIELD("Worksheet Template Name"),
                                                                        "Worksheet Batch Name" = FIELD("Journal Batch Name"),
                                                                        "Worksheet Line No." = FIELD("Line No.")));
            Caption = 'Expected Component Cost Amt.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000911; "Finished Qty. (Base)"; Decimal)
        {
            Caption = 'Finished Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(99000912; "Remaining Qty. (Base)"; Decimal)
        {
            Caption = 'Remaining Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(99000913; "Related to Planning Line"; Integer)
        {
            Caption = 'Related to Planning Line';
            Editable = false;
        }
        field(99000914; "Planning Level"; Integer)
        {
            Caption = 'Planning Level';
            Editable = false;
        }
        field(99000915; "Planning Line Origin"; Option)
        {
            Caption = 'Planning Line Origin';
            Editable = false;
            OptionCaption = ' ,Action Message,Planning,Order Planning';
            OptionMembers = " ","Action Message",Planning,"Order Planning";
        }
        field(99000916; "Action Message"; Option)
        {
            Caption = 'Action Message';
            OptionCaption = ' ,New,Change Qty.,Reschedule,Resched. & Chg. Qty.,Cancel';
            OptionMembers = " ",New,"Change Qty.",Reschedule,"Resched. & Chg. Qty.",Cancel;
        }
        field(99000917; "Accept Action Message"; Boolean)
        {
            Caption = 'Accept Action Message';
        }
        field(99000918; "Net Quantity (Base)"; Decimal)
        {
            Caption = 'Net Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(99000919; "Starting Date-Time"; DateTime)
        {
            Caption = 'Starting Date-Time';
        }
        field(99000920; "Ending Date-Time"; DateTime)
        {
            Caption = 'Ending Date-Time';
        }
        field(99000921; "Order Promising ID"; Code[20])
        {
            Caption = 'Order Promising ID';
        }
        field(99000922; "Order Promising Line No."; Integer)
        {
            Caption = 'Order Promising Line No.';
        }
        field(99000923; "Order Promising Line ID"; Integer)
        {
            Caption = 'Order Promising Line ID';
        }
    }

    keys
    {
        key(Key1; "Worksheet Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Worksheet Template Name", "Journal Batch Name", "Vendor No.", "Sell-to Customer No.", "Ship-to Code", "Order Address Code", "Currency Code", "Ref. Order Type", "Ref. Order Status", "Ref. Order No.", "Location Code", "Transfer-from Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key3; Type, "No.", "Variant Code", "Location Code", "Sales Order No.", "Planning Line Origin", "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key4; Type, "No.", "Variant Code", "Location Code", "Sales Order No.", "Order Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key5; Type, "No.", "Variant Code", "Location Code", "Starting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key6; "Worksheet Template Name", "Journal Batch Name", Type, "No.", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(Key7; "Ref. Order Type", "Ref. Order Status", "Ref. Order No.", "Ref. Line No.")
        {
        }
        key(Key8; "Replenishment System", Type, "No.", "Variant Code", "Transfer-from Code", "Transfer Shipment Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key9; "Order Promising ID", "Order Promising Line ID", "Order Promising Line No.")
        {
        }
        key(Key10; "User ID", "Demand Type", "Worksheet Template Name", "Journal Batch Name", "Line No.")
        {
        }
        key(Key11; "User ID", "Demand Type", "Demand Subtype", "Demand Order No.", "Demand Line No.", "Demand Ref. No.")
        {
        }
        key(Key12; "User ID", "Worksheet Template Name", "Journal Batch Name", "Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key13; "Job No.", "Job Line Unique No.")
        {
        }
        key(Key14; "Job Procurement No.")
        {
        }
        key(Key15; "Worksheet Template Name", "Journal Batch Name", "Job No.", "Job Line Unique No.")
        {
        }
        key(Key16; "Worksheet Template Name", "Journal Batch Name", "Vendor No.", "Sell-to Customer No.", "Ship-to Code", "Order Address Code", "Currency Code", "Ref. Order Type", "Ref. Order Status", "Ref. Order No.", "Location Code", "Transfer-from Code", "Main Job No.")
        {
        }
    }

    fieldgroups
    {
    }
}

