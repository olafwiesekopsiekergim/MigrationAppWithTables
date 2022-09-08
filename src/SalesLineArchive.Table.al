table 5108 "Sales Line Archive"
{
    // P0008 24.02.16 DEBIE.ARE New field 50012 "Position"
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // :DMW13.60.01:1:01 #Neues Feld 5013020 Checklist No.
    // :DMW13.60.02:1:01 #Feld 5013020 Checklist No.: Tabelrelation auf Archivtabelle sowie LookUp umgestellt
    // 
    // :DMW13.70.01:1:01 #PK-Änderung in "Beleg Stückliste" usw., deshalb neue Felder 5013030 & 5013050
    // :DMW15.02:64:01 #new key: "Checklist No."
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // #DMW16.00.02:T114 10.11.10 DEMSR.SSZ
    //   #Deleted CTO Calculation, because of "new" Calculation Module
    // #DMW16.00.03:01:A012 21.12.11 DEMSR.SSZ
    //   #Completed Filter of FlowField 5013050 "Document BOM"
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebrand
    // #TMW17.10.01:T100 01.07.14 DEMSR.SSZ new field "Text Set ID" (5060610) and changed code
    // 
    // :PMW14.02:53:1
    //   # New field 5012400 "Returnable Container"
    // 
    // #RENW16.00:10-001  05.05.2009  DEMSR.KHS
    //   Rental fields added
    // 
    // #RENW16.00.01.02:T504 06.04.10 DEMSR.KHS
    //   Rent Archive did not show correctly
    // 
    // #RENW16.00.02:R154    18.10.10 DEMSR.KHS
    //   Sales Leasing
    //   New field: "Leasing"
    // 
    // #RENW17.00.00.03:T503 31.07.13 DEMSR.KHS
    //   Change/Correct Captions
    //     Field Name + Caption changed: "Month based" -> "Month Based"
    // 
    // #RENW18.00.00.03:T501 24.02.15 DEMSR.KHS
    //   Correct related field lengths

    Caption = 'Sales Line Archive';
    PasteIsValid = false;

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(2; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header Archive"."No." WHERE ("Document Type" = FIELD ("Document Type"),
                                                                "Version No." = FIELD ("Version No."));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST ("Fixed Asset")) "Fixed Asset"
            ELSE
            IF (Type = CONST ("Charge (Item)")) "Item Charge";
        }
        field(7; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(8; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            TableRelation = IF (Type = CONST (Item)) "Inventory Posting Group"
            ELSE
            IF (Type = CONST ("Fixed Asset")) "FA Posting Group";
        }
        field(9; "Quantity Disc. Code"; Code[20])
        {
            Caption = 'Quantity Disc. Code';
        }
        field(10; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(13; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Outstanding Quantity"; Decimal)
        {
            Caption = 'Outstanding Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(17; "Qty. to Invoice"; Decimal)
        {
            Caption = 'Qty. to Invoice';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Qty. to Ship"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Qty. to Ship';
            DecimalPlaces = 0 : 5;
        }
        field(22; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(23; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
        }
        field(25; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
        }
        field(26; "Quantity Disc. %"; Decimal)
        {
            Caption = 'Quantity Disc. %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(27; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(28; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
        }
        field(29; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(30; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Including VAT';
        }
        field(32; "Allow Invoice Disc."; Boolean)
        {
            Caption = 'Allow Invoice Disc.';
            InitValue = true;
        }
        field(34; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DecimalPlaces = 0 : 5;
        }
        field(35; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
        }
        field(36; "Units per Parcel"; Decimal)
        {
            Caption = 'Units per Parcel';
            DecimalPlaces = 0 : 5;
        }
        field(37; "Unit Volume"; Decimal)
        {
            Caption = 'Unit Volume';
            DecimalPlaces = 0 : 5;
        }
        field(38; "Appl.-to Item Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Appl.-to Item Entry';
        }
        field(40; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(41; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(42; "Price Group Code"; Code[10])
        {
            Caption = 'Price Group Code';
            TableRelation = "Customer Price Group";
        }
        field(43; "Allow Quantity Disc."; Boolean)
        {
            Caption = 'Allow Quantity Disc.';
            InitValue = true;
        }
        field(45; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(52; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(55; "Cust./Item Disc. %"; Decimal)
        {
            Caption = 'Cust./Item Disc. %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(57; "Outstanding Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Outstanding Amount';
            Editable = false;
        }
        field(58; "Qty. Shipped Not Invoiced"; Decimal)
        {
            Caption = 'Qty. Shipped Not Invoiced';
            DecimalPlaces = 0 : 5;
        }
        field(59; "Shipped Not Invoiced"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Shipped Not Invoiced';
        }
        field(60; "Quantity Shipped"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Quantity Shipped';
            DecimalPlaces = 0 : 5;
        }
        field(61; "Quantity Invoiced"; Decimal)
        {
            Caption = 'Quantity Invoiced';
            DecimalPlaces = 0 : 5;
        }
        field(63; "Shipment No."; Code[20])
        {
            Caption = 'Shipment No.';
        }
        field(64; "Shipment Line No."; Integer)
        {
            Caption = 'Shipment Line No.';
        }
        field(67; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
            DecimalPlaces = 0 : 5;
        }
        field(68; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;
        }
        field(69; "Inv. Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Discount Amount';
        }
        field(71; "Purchase Order No."; Code[20])
        {
            Caption = 'Purchase Order No.';
            TableRelation = IF ("Drop Shipment" = CONST (true)) "Purchase Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(72; "Purch. Order Line No."; Integer)
        {
            Caption = 'Purch. Order Line No.';
            TableRelation = IF ("Drop Shipment" = CONST (true)) "Purchase Line"."Line No." WHERE ("Document Type" = CONST (Order),
                                                                                               "Document No." = FIELD ("Purchase Order No."));
        }
        field(73; "Drop Shipment"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Drop Shipment';
        }
        field(74; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(77; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(78; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(79; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(80; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            TableRelation = "Sales Line Archive"."Line No." WHERE ("Document Type" = FIELD ("Document Type"),
                                                                   "Document No." = FIELD ("Document No."),
                                                                   "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(81; "Exit Point"; Code[10])
        {
            Caption = 'Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(82; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(83; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(85; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(86; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(87; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(89; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(90; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(91; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(92; "Outstanding Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Outstanding Amount (LCY)';
        }
        field(93; "Shipped Not Invoiced (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Shipped Not Invoiced (LCY)';
        }
        field(96; Reserve; Option)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(97; "Blanket Order No."; Code[20])
        {
            Caption = 'Blanket Order No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST ("Blanket Order"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(98; "Blanket Order Line No."; Integer)
        {
            Caption = 'Blanket Order Line No.';
            TableRelation = "Sales Line"."Line No." WHERE ("Document Type" = CONST ("Blanket Order"),
                                                           "Document No." = FIELD ("Blanket Order No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(99; "VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount';
        }
        field(100; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(101; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
        }
        field(103; "Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount';
        }
        field(104; "VAT Difference"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Difference';
        }
        field(105; "Inv. Disc. Amount to Invoice"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Disc. Amount to Invoice';
        }
        field(106; "VAT Identifier"; Code[10])
        {
            Caption = 'VAT Identifier';
        }
        field(107; "IC Partner Ref. Type"; Option)
        {
            Caption = 'IC Partner Ref. Type';
            OptionCaption = ' ,G/L Account,Item,,,Charge (Item),Cross Reference,Common Item No.';
            OptionMembers = " ","G/L Account",Item,,,"Charge (Item)","Cross Reference","Common Item No.";
        }
        field(108; "IC Partner Reference"; Code[20])
        {
            Caption = 'IC Partner Reference';
        }
        field(109; "Prepayment %"; Decimal)
        {
            Caption = 'Prepayment %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(110; "Prepmt. Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Line Amount';
            MinValue = 0;
        }
        field(111; "Prepmt. Amt. Inv."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amt. Inv.';
            Editable = false;
        }
        field(112; "Prepmt. Amt. Incl. VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amt. Incl. VAT';
            Editable = false;
        }
        field(113; "Prepayment Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepayment Amount';
            Editable = false;
        }
        field(114; "Prepmt. VAT Base Amt."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. VAT Base Amt.';
            Editable = false;
        }
        field(115; "Prepayment VAT %"; Decimal)
        {
            Caption = 'Prepayment VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(116; "Prepmt. VAT Calc. Type"; Option)
        {
            Caption = 'Prepmt. VAT Calc. Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(117; "Prepayment VAT Identifier"; Code[10])
        {
            Caption = 'Prepayment VAT Identifier';
            Editable = false;
        }
        field(118; "Prepayment Tax Area Code"; Code[20])
        {
            Caption = 'Prepayment Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(119; "Prepayment Tax Liable"; Boolean)
        {
            Caption = 'Prepayment Tax Liable';
        }
        field(120; "Prepayment Tax Group Code"; Code[10])
        {
            Caption = 'Prepayment Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(121; "Prepmt Amt to Deduct"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt Amt to Deduct';
            MinValue = 0;
        }
        field(122; "Prepmt Amt Deducted"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt Amt Deducted';
            Editable = false;
        }
        field(123; "Prepayment Line"; Boolean)
        {
            Caption = 'Prepayment Line';
            Editable = false;
        }
        field(124; "Prepmt. Amount Inv. Incl. VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amount Inv. Incl. VAT';
            Editable = false;
        }
        field(130; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            TableRelation = "IC Partner";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(1700; "Deferral Code"; Code[10])
        {
            Caption = 'Deferral Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(1702; "Returns Deferral Start Date"; Date)
        {
            Caption = 'Returns Deferral Start Date';
        }
        field(5047; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(5048; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(5403; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(5405; Planned; Boolean)
        {
            Caption = 'Planned';
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            "Unit of Measure";
        }
        field(5415; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5416; "Outstanding Qty. (Base)"; Decimal)
        {
            Caption = 'Outstanding Qty. (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5417; "Qty. to Invoice (Base)"; Decimal)
        {
            Caption = 'Qty. to Invoice (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5418; "Qty. to Ship (Base)"; Decimal)
        {
            Caption = 'Qty. to Ship (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5458; "Qty. Shipped Not Invd. (Base)"; Decimal)
        {
            Caption = 'Qty. Shipped Not Invd. (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5460; "Qty. Shipped (Base)"; Decimal)
        {
            Caption = 'Qty. Shipped (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5461; "Qty. Invoiced (Base)"; Decimal)
        {
            Caption = 'Qty. Invoiced (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5600; "FA Posting Date"; Date)
        {
            Caption = 'FA Posting Date';
        }
        field(5602; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            TableRelation = "Depreciation Book";
        }
        field(5605; "Depr. until FA Posting Date"; Boolean)
        {
            Caption = 'Depr. until FA Posting Date';
        }
        field(5612; "Duplicate in Depreciation Book"; Code[10])
        {
            Caption = 'Duplicate in Depreciation Book';
            TableRelation = "Depreciation Book";
        }
        field(5613; "Use Duplication List"; Boolean)
        {
            Caption = 'Use Duplication List';
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5701; "Out-of-Stock Substitution"; Boolean)
        {
            Caption = 'Out-of-Stock Substitution';
        }
        field(5702; "Substitution Available"; Boolean)
        {
            CalcFormula = Exist ("Item Substitution" WHERE (Type = CONST (Item),
                                                           "No." = FIELD ("No."),
                                                           "Substitute Type" = CONST (Item)));
            Caption = 'Substitution Available';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5703; "Originally Ordered No."; Code[20])
        {
            Caption = 'Originally Ordered No.';
            TableRelation = IF (Type = CONST (Item)) Item;
        }
        field(5704; "Originally Ordered Var. Code"; Code[10])
        {
            Caption = 'Originally Ordered Var. Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("Originally Ordered No."));
        }
        field(5705; "Cross-Reference No."; Code[20])
        {
            AccessByPermission = TableData "Item Cross Reference" = R;
            Caption = 'Cross-Reference No.';
        }
        field(5706; "Unit of Measure (Cross Ref.)"; Code[10])
        {
            Caption = 'Unit of Measure (Cross Ref.)';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(5707; "Cross-Reference Type"; Option)
        {
            Caption = 'Cross-Reference Type';
            OptionCaption = ' ,Customer,Vendor,Bar Code';
            OptionMembers = " ",Customer,Vendor,"Bar Code";
        }
        field(5708; "Cross-Reference Type No."; Code[30])
        {
            Caption = 'Cross-Reference Type No.';
        }
        field(5709; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5710; Nonstock; Boolean)
        {
            Caption = 'Nonstock';
        }
        field(5711; "Purchasing Code"; Code[10])
        {
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5712; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code" = FIELD ("Item Category Code"));
        }
        field(5713; "Special Order"; Boolean)
        {
            Caption = 'Special Order';
        }
        field(5714; "Special Order Purchase No."; Code[20])
        {
            Caption = 'Special Order Purchase No.';
            TableRelation = IF ("Special Order" = CONST (true)) "Purchase Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(5715; "Special Order Purch. Line No."; Integer)
        {
            Caption = 'Special Order Purch. Line No.';
            TableRelation = IF ("Special Order" = CONST (true)) "Purchase Line"."Line No." WHERE ("Document Type" = CONST (Order),
                                                                                               "Document No." = FIELD ("Special Order Purchase No."));
        }
        field(5752; "Completely Shipped"; Boolean)
        {
            Caption = 'Completely Shipped';
        }
        field(5790; "Requested Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Requested Delivery Date';
        }
        field(5791; "Promised Delivery Date"; Date)
        {
            Caption = 'Promised Delivery Date';
        }
        field(5792; "Shipping Time"; DateFormula)
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Time';
        }
        field(5793; "Outbound Whse. Handling Time"; DateFormula)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'Outbound Whse. Handling Time';
        }
        field(5794; "Planned Delivery Date"; Date)
        {
            Caption = 'Planned Delivery Date';
        }
        field(5795; "Planned Shipment Date"; Date)
        {
            Caption = 'Planned Shipment Date';
        }
        field(5796; "Shipping Agent Code"; Code[10])
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(5797; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE ("Shipping Agent Code" = FIELD ("Shipping Agent Code"));
        }
        field(5800; "Allow Item Charge Assignment"; Boolean)
        {
            AccessByPermission = TableData "Item Charge" = R;
            Caption = 'Allow Item Charge Assignment';
            InitValue = true;
        }
        field(5803; "Return Qty. to Receive"; Decimal)
        {
            Caption = 'Return Qty. to Receive';
            DecimalPlaces = 0 : 5;
        }
        field(5804; "Return Qty. to Receive (Base)"; Decimal)
        {
            Caption = 'Return Qty. to Receive (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5805; "Return Qty. Rcd. Not Invd."; Decimal)
        {
            Caption = 'Return Qty. Rcd. Not Invd.';
            DecimalPlaces = 0 : 5;
        }
        field(5806; "Ret. Qty. Rcd. Not Invd.(Base)"; Decimal)
        {
            Caption = 'Ret. Qty. Rcd. Not Invd.(Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5807; "Return Amt. Rcd. Not Invd."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Return Amt. Rcd. Not Invd.';
        }
        field(5808; "Ret. Amt. Rcd. Not Invd. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Ret. Amt. Rcd. Not Invd. (LCY)';
        }
        field(5809; "Return Qty. Received"; Decimal)
        {
            Caption = 'Return Qty. Received';
            DecimalPlaces = 0 : 5;
        }
        field(5810; "Return Qty. Received (Base)"; Decimal)
        {
            Caption = 'Return Qty. Received (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5811; "Appl.-from Item Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Appl.-from Item Entry';
            MinValue = 0;
        }
        field(5900; "Service Contract No."; Code[20])
        {
            Caption = 'Service Contract No.';
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract),
                                                                            "Customer No." = FIELD ("Sell-to Customer No."),
                                                                            "Bill-to Customer No." = FIELD ("Bill-to Customer No."));
        }
        field(5901; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(5902; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item"."No." WHERE ("Customer No." = FIELD ("Sell-to Customer No."));
        }
        field(5903; "Appl.-to Service Entry"; Integer)
        {
            Caption = 'Appl.-to Service Entry';
        }
        field(5904; "Service Item Line No."; Integer)
        {
            Caption = 'Service Item Line No.';
        }
        field(5907; "Serv. Price Adjmt. Gr. Code"; Code[10])
        {
            Caption = 'Serv. Price Adjmt. Gr. Code';
            TableRelation = "Service Price Adjustment Group";
        }
        field(5909; "BOM Item No."; Code[20])
        {
            Caption = 'BOM Item No.';
            TableRelation = Item;
        }
        field(6600; "Return Receipt No."; Code[20])
        {
            Caption = 'Return Receipt No.';
        }
        field(6601; "Return Receipt Line No."; Integer)
        {
            Caption = 'Return Receipt Line No.';
        }
        field(6608; "Return Reason Code"; Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
            InitValue = true;
        }
        field(7002; "Customer Disc. Group"; Code[20])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(50000; "Proportion of freight"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Proportion of freight';
            Description = 'P0003';
            MinValue = 0;
        }
        field(50001; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            Description = 'P0032';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50002; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Description = 'P0029';
        }
        field(50007; "Line Gross Weight"; Decimal)
        {
            Caption = 'Line Gross Weight';
            DecimalPlaces = 0 : 5;
            Description = 'P0040';
            Editable = false;
        }
        field(50012; Position; Text[5])
        {
            Caption = 'Position';
            Description = 'P0008';
        }
        field(50151; "PZ drucken"; Boolean)
        {
            Caption = 'PZ drucken';
            Description = 'P0008';
        }
        field(5012400; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
            Description = ':PMW14.02:53:1';
        }
        field(5013020; "Checklist No."; Code[20])
        {
            Caption = 'Checklist No.';
            Description = ':DMW13.60.01:1:01';
            TableRelation = "Checklist Header Archive"."No.";
        }
        field(5013030; "Document BOM No."; Code[20])
        {
            Caption = 'Document BOM No.';
            Description = ':DMW13.70.01:1:01';
        }
        field(5013050; "Document BOM"; Boolean)
        {
            CalcFormula = Exist ("Document BOM Archive" WHERE ("Source Document Type" = FIELD ("Document Type"),
                                                              "Source Document No." = FIELD ("Document No."),
                                                              "Source Document Line No." = FIELD ("Line No."),
                                                              "Document No." = FIELD ("Document BOM No."),
                                                              "Version No." = FIELD ("Version No."),
                                                              "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence")));
            Caption = 'Document BOM';
            Description = ':DMW13.70.01:1:01';
            Editable = false;
            FieldClass = FlowField;
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
        field(5072650; "Rental Position"; Option)
        {
            Caption = 'Rental Position';
            Description = '#RENW16.00:10-001';
            OptionCaption = 'Sales,Rental,Rate Part,One-Time Invoicing';
            OptionMembers = Sales,Rental,"Rate Part","One-Time Invoicing";
        }
        field(5072651; "Rental Rate Code"; Code[10])
        {
            Caption = 'Rental Rate Code';
            Description = '#RENW16.00:10-001';
            TableRelation = "Capacity Unit of Measure".Code WHERE ("Rental Rate Code" = CONST (true));
        }
        field(5072652; "Rental Rate"; Text[50])
        {
            Caption = 'Rental Rate';
            Description = '#RENW16.00:10-001,#RENW18.00.00.03:T501';
            Editable = false;
        }
        field(5072653; "Rate Unit Price"; Decimal)
        {
            Caption = 'Rate Unit Price';
            Description = '#RENW16.00:10-001';
        }
        field(5072655; "Outbound Shipping Time"; DateFormula)
        {
            Caption = 'Outbound Shipping Time';
            Description = '#RENW16.00:10-001';
        }
        field(5072656; "Inbound Shipping Time"; DateFormula)
        {
            Caption = 'Inbound Shipping Time';
            Description = '#RENW16.00:10-001';
        }
        field(5072657; "Rental Start Date"; Date)
        {
            Caption = 'Rental Start Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072658; "Rental End Date"; Date)
        {
            Caption = 'Rental End Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072660; "Unit Price Total Rental Time"; Decimal)
        {
            Caption = 'Unit Price Total Rental Time';
            Description = '#RENW16.00:10-001';
            Editable = false;
        }
        field(5072661; "Amount Total Rental Time"; Decimal)
        {
            Caption = 'Amount Total Rental Time';
            Description = '#RENW16.00:10-001';
            Editable = false;
        }
        field(5072662; "Customer Location Code"; Code[10])
        {
            Caption = 'Customer Location Code';
            Description = '#RENW16.00:10-001';
            TableRelation = IF ("Rental Position" = CONST (Rental)) Location WHERE ("Use As - Rented" = CONST (true));
        }
        field(5072663; "Qty. Extensions"; Integer)
        {
            CalcFormula = Count ("Rental Extension" WHERE ("Document Type" = FIELD ("Document Type"),
                                                          "Document No." = FIELD ("Document No."),
                                                          "Line No." = FIELD ("Line No.")));
            Caption = 'Qty. Extensions';
            Description = '#RENW16.00:10-001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072664; "Qty. Failures"; Integer)
        {
            CalcFormula = Count ("Rental Failure" WHERE ("Document Type" = FIELD ("Document Type"),
                                                        "Document No." = FIELD ("Document No."),
                                                        "Line No." = FIELD ("Line No.")));
            Caption = 'Qty. Failures';
            Description = '#RENW16.00:10-001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072665; "Invoice Period"; Option)
        {
            Caption = 'Invoice Period';
            Description = '#RENW16.00:10-001';
            OptionCaption = 'Month,Two Months,Quarter,Half Year,Year,None';
            OptionMembers = Month,"Two Months",Quarter,"Half Year",Year,"None";
        }
        field(5072666; "Month Based"; Boolean)
        {
            Caption = 'Month Based';
            Description = '#RENW16.00:10-001,#RENW17.00.00.03:T503';
        }
        field(5072667; Prepaid; Boolean)
        {
            Caption = 'Prepaid';
            Description = '#RENW16.00:10-001';
        }
        field(5072668; "Next Invoice Period Start"; Date)
        {
            CalcFormula = Lookup ("Service Contract Header"."Next Invoice Period Start" WHERE ("Rent Order No." = FIELD ("Document No."),
                                                                                              "Rent Order Line No." = FIELD ("Line No.")));
            Caption = 'Next Invoice Period Start';
            Description = '#RENW16.00:10-001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072669; "Next Invoice Period End"; Date)
        {
            CalcFormula = Lookup ("Service Contract Header"."Next Invoice Period End" WHERE ("Rent Order No." = FIELD ("Document No."),
                                                                                            "Rent Order Line No." = FIELD ("Line No.")));
            Caption = 'Next Invoice Period End';
            Description = '#RENW16.00:10-001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072670; "Rental Return Date"; Date)
        {
            Caption = 'Rental Return Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072671; "Invoiced to Date"; Date)
        {
            CalcFormula = Lookup ("Service Contract Header"."Last Invoice Period End" WHERE ("Rent Order No." = FIELD ("Document No."),
                                                                                            "Rent Order Line No." = FIELD ("Line No.")));
            Caption = 'Invoiced to Date';
            Description = '#RENW16.00:10-001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072672; "Rental Line Discount Amount"; Decimal)
        {
            Caption = 'Rental Line Discount Amount';
            Description = '#RENW16.00:10-001';
        }
        field(5072673; "Next Price Update Date"; Date)
        {
            Caption = 'Next Price Update Date';
            Description = '#RENW16.00.00.02:T301';
        }
        field(5072674; "Price Update Period"; DateFormula)
        {
            Caption = 'Price Update Period';
            Description = '#RENW16.00.00.02:T301';
            InitValue = '1Y';
        }
        field(5072675; "Last Price Update Date"; Date)
        {
            CalcFormula = Lookup ("Service Contract Header"."Last Price Update Date" WHERE ("Rent Order No." = FIELD ("Document No."),
                                                                                           "Rent Order Line No." = FIELD ("Line No.")));
            Caption = 'Last Price Update Date';
            Description = '#RENW16.00.00.02:T301';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072676; "Last Price Update %"; Decimal)
        {
            CalcFormula = Lookup ("Service Contract Header"."Last Price Update %" WHERE ("Rent Order No." = FIELD ("Document No."),
                                                                                        "Rent Order Line No." = FIELD ("Line No.")));
            Caption = 'Last Price Update %';
            DecimalPlaces = 0 : 5;
            Description = '#RENW16.00.00.02:T301';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072677; "Rate Component No."; Code[20])
        {
            Caption = 'Rate Component No.';
            Description = '#RENW16.00.01:R053';
            TableRelation = IF ("Rental Position" = CONST ("Rate Part")) "Rent Rate Component"."No." WHERE (Type = CONST ("Rate Part"))
            ELSE
            IF ("Rental Position" = CONST ("One-Time Invoicing")) "Rent Rate Component"."No." WHERE (Type = CONST ("One-Time Invoicing"));
        }
        field(5072678; "Attached to Item No."; Code[20])
        {
            Caption = 'Attached to Item No.';
            Description = '#RENW16.00.01:R053';
            TableRelation = Item;
        }
        field(5072679; "One-Time Due Date"; Option)
        {
            Caption = 'One-Time Due Date';
            Description = '#RENW16.00.01:R053';
            OptionCaption = ' ,Shipment,Return';
            OptionMembers = " ",Shipment,Return;
        }
        field(5072680; "Item Line Rate Code"; Code[20])
        {
            Caption = 'Item Line Rate Code';
            Description = '#RENW16.00.01:R053';
        }
        field(5072681; "Purchase Order Exists"; Boolean)
        {
            Caption = 'Purchase Order Exists';
            Description = '#RENW16.00.01:R055';
        }
        field(5072682; "Requisition Line Exists"; Boolean)
        {
            Caption = 'Requisition Line Exists';
            Description = '#RENW16.00.01:R055';
        }
        field(5072683; "Sell Item from Rent"; Boolean)
        {
            Caption = 'Sell Item from Rent';
            Description = '#RENW16.00.01:R119';
        }
        field(5072684; "Sales Allocation"; Boolean)
        {
            CalcFormula = Exist ("Rental - Sales Calculation" WHERE ("Return Source Type" = CONST (37),
                                                                    "Return Source Subtype" = FIELD ("Document Type"),
                                                                    "Return Source ID" = FIELD ("Document No."),
                                                                    "Return Source Ref. No." = FIELD ("Line No.")));
            Caption = 'Sales Allocation';
            Description = '#RENW16.00.01:R119';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072685; "Attached to Rent Order No."; Code[20])
        {
            Caption = 'Attached to Rent Order No.';
            Description = '#RENW16.00.01:R119';
            Editable = false;
        }
        field(5072686; "Attached to Rent Order Line No"; Integer)
        {
            Caption = 'Attached to Rent Order Line No';
            Description = '#RENW16.00.01:R119';
        }
        field(5072687; "Qty. Rent Changes"; Integer)
        {
            CalcFormula = Count ("Rental Change" WHERE ("Document Type" = FIELD ("Document Type"),
                                                       "Document No." = FIELD ("Document No."),
                                                       "Line No." = FIELD ("Line No.")));
            Caption = 'Qty. Rent Changes';
            Description = '#RENW16.00.01:R054';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072688; "Calendar Code"; Code[10])
        {
            Caption = 'Calendar Code';
            Description = '#RENW16.00.01:R086';
            TableRelation = "Base Calendar";
        }
        field(5072689; "Free Operation Hours"; Integer)
        {
            Caption = 'Free Operation Hours';
            Description = '#RENW16.00.01:R065';
        }
        field(5072690; "Free Operation Miles"; Integer)
        {
            Caption = 'Free Operation Miles';
            Description = '#RENW16.00.01:R065';
        }
        field(5072691; Leasing; Boolean)
        {
            CalcFormula = Exist ("Leasing Agreement Archive" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                   "Document No." = FIELD ("Document No."),
                                                                   "Line No." = FIELD ("Line No.")));
            Description = '#RENW16.00.02:R154';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292332; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292333; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292335; "Special Quantity"; Decimal)
        {
            Caption = 'Special Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292336; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,Optional,Alternative,Supplement,Modification,Increase';
            OptionCaption = ' ,Optional,Alternative,Supplement,Modification,Increase';
            OptionMembers = " ",Optional,Alternative,Supplement,Modification,Increase;
        }
        field(5292337; "Special Alternative Unique No."; Integer)
        {
            Caption = 'Special Alternative Unique No.';
            Editable = false;
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Main Job No.';
            TableRelation = Job;
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount, "Amount Including VAT", "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)";
        }
        key(Key2; "Document Type", "Document No.", "Line No.", "Doc. No. Occurrence", "Version No.")
        {
        }
        key(Key3; "Sell-to Customer No.")
        {
        }
        key(Key4; "Bill-to Customer No.")
        {
        }
        key(Key5; Type, "No.")
        {
        }
        key(Key6; "Document Type", "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(Key7; "Checklist No.")
        {
        }
    }

    fieldgroups
    {
    }
}

