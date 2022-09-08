table 210 "Job Journal Line"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - Job No.,Job Line Unique No.,Source Channel
    //                                     - Job Procurement No.,Source Channel
    //                                     - Type,No.,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Location Code,
    //                                       Variant Code,Due Date
    //                                     - Journal Template Name,Type,No.
    //                                     - Job No.,Sales Position Unique No.
    //                                     - Type,No.,Variant Code,Location Code,Due Date
    //                                     - Journal Template Name,Job No.,Journal Batch Name
    //                                     - Source Channel,Type,No.,Posting Date,Job No.,Job Line Unique No.
    //                                     - Job Process No.,Entry Type,Posting Date,Planning Resource No.
    //                                     - Source Channel,Resource Group No.,Posting Date,Job No.,Job Line Unique No.
    //                                     Update Fields:
    //                                     - Field 61: Usage,Sale,Job Shipment
    //                                     - Field 5468: Source Type: 1011 -> 210,Reverse Sign
    //                                     Code Added
    //                                     PR DrillDownFormID,LookupFormID
    // 
    // PR02 PRODUKT.01:P8011 10.03.15 DENUE.SKOL Added Filter to TableRelation of Field "No." for Type Resource
    //                                           - Type=FILTER(<>Service)
    // 
    // PR03 PRODUKT.01 23.04.15 DENUE.ALAN Unit Of Measure Lookup Fixed
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // 
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New fields (see description column)
    // 
    // cc|bde (CCFDC)
    // 
    // CCFDC01  13.04.15  DEDRS.MHAE  New fields
    // CCFDC02  13.04.15  DEDRS.RBER  PR key "Type,No.,Variant Code,Location Code,Due Date" for integration
    // #FDCW18.00.03:T520  01.02.2016  DEDRS.MHAE
    //   Added License Check for FDC SharePoint

    Caption = 'Job Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Job Journal Template";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(6; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Resource,Item,G/L Account';
            OptionMembers = Resource,Item,"G/L Account";
        }
        field(8; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Resource)) Resource WHERE (Type = FILTER (<> Service))
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
        }
        field(9; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Direct Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost (LCY)';
            MinValue = 0;
        }
        field(13; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
            Editable = false;
            MinValue = 0;
        }
        field(14; "Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost (LCY)';
            Editable = false;
        }
        field(15; "Unit Price (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price (LCY)';
            Editable = false;
        }
        field(16; "Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price (LCY)';
            Editable = false;
        }
        field(17; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            Editable = false;
            TableRelation = "Resource Group";
        }
        field(18; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Resource)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            "Unit of Measure";
        }
        field(21; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(22; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
            InitValue = true;
        }
        field(30; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            Editable = false;
            TableRelation = IF (Type = CONST (Item)) "Inventory Posting Group";
        }
        field(31; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(32; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(33; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(34; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(37; "Applies-to Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Applies-to Entry';
        }
        field(61; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Description = 'Usage,Sale,Job Shipment';
            Editable = false;
            OptionCaption = 'Usage,Sale,Job Shipment';
            OptionMembers = Usage,Sale,"Job Shipment";
        }
        field(62; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(73; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Job Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(74; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(75; "Recurring Method"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Method';
            OptionCaption = ',Fixed,Variable';
            OptionMembers = ,"Fixed",Variable;
        }
        field(76; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(77; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
        }
        field(79; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(80; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(81; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(82; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(83; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(86; "Entry/Exit Point"; Code[10])
        {
            Caption = 'Entry/Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(87; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(88; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(89; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(90; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(91; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(92; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(93; "Source Currency Code"; Code[10])
        {
            Caption = 'Source Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(94; "Source Currency Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Currency Total Cost';
            Editable = false;
        }
        field(95; "Source Currency Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Currency Total Price';
            Editable = false;
        }
        field(96; "Source Currency Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Currency Line Amount';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(950; "Time Sheet No."; Code[20])
        {
            Caption = 'Time Sheet No.';
            TableRelation = "Time Sheet Header";
        }
        field(951; "Time Sheet Line No."; Integer)
        {
            Caption = 'Time Sheet Line No.';
            TableRelation = "Time Sheet Line"."Line No." WHERE ("Time Sheet No." = FIELD ("Time Sheet No."));
        }
        field(952; "Time Sheet Date"; Date)
        {
            Caption = 'Time Sheet Date';
            TableRelation = "Time Sheet Detail".Date WHERE ("Time Sheet No." = FIELD ("Time Sheet No."),
                                                            "Time Sheet Line No." = FIELD ("Time Sheet Line No."));
        }
        field(1000; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(1001; "Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost';
            Editable = false;
        }
        field(1002; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(1003; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(1004; "Applies-from Entry"; Integer)
        {
            Caption = 'Applies-from Entry';
            MinValue = 0;
        }
        field(1005; "Job Posting Only"; Boolean)
        {
            Caption = 'Job Posting Only';
        }
        field(1006; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(1007; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
        }
        field(1008; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(1009; "Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount';
        }
        field(1010; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(1011; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(1012; "Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount (LCY)';
            Editable = false;
        }
        field(1013; "Line Discount Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount (LCY)';
            Editable = false;
        }
        field(1014; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
            Editable = false;
        }
        field(1015; "Cost Factor"; Decimal)
        {
            Caption = 'Cost Factor';
            Editable = false;
        }
        field(1016; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(1017; "Ledger Entry Type"; Option)
        {
            Caption = 'Ledger Entry Type';
            OptionCaption = ' ,Resource,Item,G/L Account';
            OptionMembers = " ",Resource,Item,"G/L Account";
        }
        field(1018; "Ledger Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Ledger Entry No.';
            TableRelation = IF ("Ledger Entry Type" = CONST (Resource)) "Res. Ledger Entry"
            ELSE
            IF ("Ledger Entry Type" = CONST (Item)) "Item Ledger Entry"
            ELSE
            IF ("Ledger Entry Type" = CONST ("G/L Account")) "G/L Entry";
        }
        field(1019; "Job Planning Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Job Planning Line No.';
        }
        field(1030; "Remaining Qty."; Decimal)
        {
            Caption = 'Remaining Qty.';
            DecimalPlaces = 0 : 5;
        }
        field(1031; "Remaining Qty. (Base)"; Decimal)
        {
            Caption = 'Remaining Qty. (Base)';
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(5403; "Bin Code"; Code[20])
        {
            AccessByPermission = TableData "Warehouse Source Filter" = R;
            Caption = 'Bin Code';
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(5410; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5468; "Reserved Qty. (Base)"; Decimal)
        {
            AccessByPermission = TableData Item = R;
            CalcFormula = - Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Source ID" = FIELD ("Journal Template Name"),
                                                                            "Source Ref. No." = FIELD ("Line No."),
                                                                            "Source Type" = CONST (210),
                                                                            "Source Subtype" = FIELD ("Entry Type"),
                                                                            "Source Batch Name" = FIELD ("Journal Batch Name"),
                                                                            "Source Prod. Order Line" = CONST (0),
                                                                            "Reservation Status" = CONST (Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Description = 'Source Type: 1011 -> 210,Reverse Sign';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5900; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(5901; "Posted Service Shipment No."; Code[20])
        {
            Caption = 'Posted Service Shipment No.';
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Editable = false;
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5292333; "Posted Inv. Request No."; Code[20])
        {
            Caption = 'Posted Inv. Request No.';
        }
        field(5292334; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5292335; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(5292336; "Extra Charge %"; Decimal)
        {
            Caption = 'Extra Charge %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292337; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292338; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292339; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292344),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Job Line Unique No."),
                                                               Type = CONST (Processing)));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292340; "Posting Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (210),
                                                               Code1 = FIELD ("Journal Template Name"),
                                                               Code2 = FIELD ("Journal Batch Name"),
                                                               Int1 = FIELD ("Line No.")));
            Caption = 'Posting Text';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292341; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,,,Supplement,,Increase,Reclamation';
            OptionCaption = ' ,,,Supplement,,Increase,Reclamation';
            OptionMembers = " ",,,Supplement,,Increase,Reclamation;
        }
        field(5292342; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(5292343; "Time From"; Time)
        {
            Caption = 'Time From';
        }
        field(5292344; "Time To"; Time)
        {
            Caption = 'Time To';
        }
        field(5292345; "Break Duration"; Decimal)
        {
            Caption = 'Break';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292346; "Time Quantity"; Time)
        {
            Caption = 'Time';
        }
        field(5292347; "Outstanding Qty. (Base)"; Decimal)
        {
            Caption = 'Outstanding Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292348; "Total Planned Qty. (Base)"; Decimal)
        {
            Caption = 'Total Planned Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292349; "Planning Resource No."; Code[20])
        {
            Caption = 'Planning Resource No.';
            Description = 'ne, TR "Planning Resource"';
            Editable = false;
            TableRelation = "PR - Planning Resource";
        }
        field(5292350; "Processing Hours"; Decimal)
        {
            Caption = 'Processing Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
        }
        field(5292351; "Job Order No."; Code[20])
        {
            Caption = 'Job Order No.';
            Description = 'TR "Job Order"';
            TableRelation = "PR - Job Order";
        }
        field(5292352; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
        field(5292353; "Total Direct Cost Proc. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost Proc. (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5292354; "Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5292355; "Procurement Finished"; Boolean)
        {
            Caption = 'Procurement Finished';
        }
        field(5292356; "Source Channel"; Option)
        {
            Caption = 'Source Channel';
            Description = ' ,Time Entry,Purchase,Inventory Request,Job Shipment,Service';
            OptionCaption = ' ,Time Entry,Purchase,Inventory Request,Job Shipment,Service';
            OptionMembers = " ","Time Entry",Purchase,"Inventory Request","Job Shipment",Service;
        }
        field(5292357; "Sales Position Unique No."; Integer)
        {
            Caption = 'Sales Position Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Sales Position Unique No."));
        }
        field(5292358; "Job Ledger Entry No."; Integer)
        {
            Caption = 'Job Ledger Entry No.';
        }
        field(5292359; "Invoicing Trigger"; Option)
        {
            Caption = 'Invoicing Trigger';
            Description = ' ,Planning Invoicing,Enter in Job Journal Line,Posting Process';
            OptionCaption = ' ,Planning Invoicing,Enter in Job Journal Line,Posting Process';
            OptionMembers = " ","Planning Invoicing","Enter in Job Journal Line","Posting Process";
        }
        field(5292360; "Sales Price Source"; Option)
        {
            Caption = 'Sales Price Source';
            Description = ' ,Job Line,Standard Prices,Cost Plus';
            OptionCaption = ' ,Job Line,Standard Prices,Cost Plus';
            OptionMembers = " ","Job Line","Standard Prices","Cost Plus";
        }
        field(5292361; "Job Shipment Plan No."; Code[20])
        {
            Caption = 'Job Shipment Plan No.';
            Description = 'TR "Job Line Shipment Plan"';
            TableRelation = "PR - Job Line Shipment Plan";
        }
        field(5292362; "Job Invoicing No."; Code[20])
        {
            Caption = 'Job Invoicing No.';
            Description = 'TR Job Line Invoicing';
            TableRelation = "PR - Job Line Invoicing";
        }
        field(5292363; "Invoicing Total Price (Proc.)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("PR - Job Line Invoicing"."Sales Line Amount (LCY)" WHERE ("Invoicing No." = FIELD ("Job Invoicing No.")));
            Caption = 'Invoicing Total Price (Proc.)';
            Description = 'CF Job Planning Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292364; "Travel Code"; Code[10])
        {
            Caption = 'Travel Code';
            Description = 'TR Job Travel Code';
            TableRelation = "PR - Job Travel Code".Code WHERE (Module = CONST (Job),
                                                               "Module No." = FIELD ("Job No."));
        }
        field(5292365; Reimbursement; Boolean)
        {
            Caption = 'Reimbursement';
        }
        field(5292366; "Realized %"; Decimal)
        {
            Caption = 'Realized %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292367; "Provided Quantity"; Boolean)
        {
            Caption = 'Provided Quantity';
        }
        field(5292368; "Reserved Quantity"; Decimal)
        {
            CalcFormula = - Sum ("Reservation Entry".Quantity WHERE ("Source ID" = FIELD ("Journal Template Name"),
                                                                   "Source Ref. No." = FIELD ("Line No."),
                                                                   "Source Type" = CONST (210),
                                                                   "Source Subtype" = FIELD ("Entry Type"),
                                                                   "Source Batch Name" = FIELD ("Journal Batch Name"),
                                                                   "Source Prod. Order Line" = CONST (0),
                                                                   "Reservation Status" = CONST (Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Description = 'Source Type: 1011 -> 210,Reverse Sign';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292369; "Outstanding Quantity"; Decimal)
        {
            Caption = 'Outstanding Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Main Job No.';
            TableRelation = Job;
        }
        field(5292372; "Direct Job Shipment"; Boolean)
        {
            Caption = 'Direct Job Shipment';
        }
        field(5292373; "Shipment Direction"; Option)
        {
            Caption = 'Shipment Direction';
            Description = ' ,Inbound,Outbound';
            OptionCaption = ' ,Inbound,Outbound';
            OptionMembers = " ",Inbound,Outbound;
        }
        field(5292650; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            Editable = false;
            OptionCaption = ' ,Wages,Material,External Service,Equipment,Other';
            OptionMembers = " ",Wages,Material,"External Service",Equipment,Other;
        }
        field(5292750; "Job Process No."; Code[20])
        {
            Caption = 'Job Process No.';
            Description = 'TR "Job Line Process"';
            TableRelation = "PRPL - Job Line Process";
        }
        field(5307940; "Mobile Dialog Processed"; Boolean)
        {
            Caption = 'Mobile Dialog Processed';
            Description = 'CCMS';
        }
        field(5307941; "Mobile Session GUID"; Guid)
        {
            Caption = 'Mobile Session GUID';
            Description = 'CCMS';
        }
        field(5308700; "FDC Time Entry"; Boolean)
        {
            Description = 'FDCW18.00.01';
        }
        field(5308701; "FDC Jnl. Entry Guid"; Guid)
        {
            Description = 'FDCW18.00.01';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", Type, "No.", "Unit of Measure Code", "Work Type Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key3; "Job No.", "Job Line Unique No.", "Source Channel", "Posting Date")
        {
            SumIndexFields = "Total Direct Cost Proc. (LCY)", "Processing Hours";
        }
        key(Key4; "Job Procurement No.", "Source Channel", "Entry Type")
        {
            SumIndexFields = "Total Direct Cost Proc. (LCY)", "Processing Hours";
        }
        key(Key5; Type, "No.", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Variant Code", "Due Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key6; "Journal Template Name", Type, "No.")
        {
        }
        key(Key7; "Job No.", "Sales Position Unique No.")
        {
        }
        key(Key8; Type, "No.", "Variant Code", "Location Code", "Due Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key9; "Journal Template Name", "Job No.", "Journal Batch Name")
        {
        }
        key(Key10; "Source Channel", Type, "No.", "Posting Date", "Job No.", "Job Line Unique No.")
        {
            SumIndexFields = "Quantity (Base)";
        }
        key(Key11; "Source Channel", "Resource Group No.", "Posting Date", "Job No.", "Job Line Unique No.")
        {
            SumIndexFields = "Quantity (Base)";
        }
        key(Key12; "Job Process No.", "Entry Type", "Posting Date", "Planning Resource No.")
        {
            SumIndexFields = "Processing Hours";
        }
        key(Key13; "Location Code", "Bin Code", Type, "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

