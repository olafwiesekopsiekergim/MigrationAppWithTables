table 5995 "Service Cr.Memo Line"
{
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 01.07.14 DEMSR.SSZ new field "Text Set ID" (5060610) and changed code
    // 
    // #RENW16.00:10:01 22.04.09 DEMSR.KHS
    //   Rental Fields added
    // 
    // #RENW16.00.00.01:T517 13.07.09 DEMSR.KHS
    //   Add Serial No. View to Rental Invoice / Credit Memo
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //  Change Captions
    // 
    // #RENW16.00.01:R170    15.10.09 DEMSR.KHS
    //   Internal Service Order
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Service Cr.Memo Line';
    PasteIsValid = false;

    fields
    {
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Service Cr.Memo Header"."No.";
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Resource,Cost,G/L Account';
            OptionMembers = " ",Item,Resource,Cost,"G/L Account";
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST (Cost)) "Service Cost"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
        }
        field(7; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(8; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            TableRelation = IF (Type = CONST (Item)) "Inventory Posting Group";
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
        field(22; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            Editable = true;
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
            Editable = false;
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
            Editable = false;
        }
        field(29; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(30; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Including VAT';
            Editable = false;
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
        field(42; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            Editable = false;
            TableRelation = "Customer Price Group";
        }
        field(52; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(63; "Shipment No."; Code[20])
        {
            Caption = 'Shipment No.';
            Editable = false;
        }
        field(68; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(69; "Inv. Discount Amount"; Decimal)
        {
            Caption = 'Inv. Discount Amount';
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
            Editable = false;
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
            Editable = false;
            TableRelation = "Service Cr.Memo Line"."Line No." WHERE ("Document No." = FIELD ("Document No."));
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
        field(88; "VAT Clause Code"; Code[10])
        {
            Caption = 'VAT Clause Code';
            TableRelation = "VAT Clause";
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
            Editable = false;
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
            Editable = false;
        }
        field(106; "VAT Identifier"; Code[10])
        {
            Caption = 'VAT Identifier';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
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
            Editable = false;
            InitValue = 1;
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
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(5709; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category".Code;
        }
        field(5710; Nonstock; Boolean)
        {
            Caption = 'Nonstock';
            Editable = false;
        }
        field(5712; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code" = FIELD ("Item Category Code"));
        }
        field(5811; "Appl.-from Item Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Appl.-from Item Entry';
        }
        field(5902; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item"."No.";
        }
        field(5903; "Appl.-to Service Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Appl.-to Service Entry';
            Editable = false;
        }
        field(5905; "Service Item Serial No."; Code[20])
        {
            Caption = 'Service Item Serial No.';
        }
        field(5906; "Service Item Line Description"; Text[50])
        {
            Caption = 'Service Item Line Description';
            Editable = false;
        }
        field(5908; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5910; "Needed by Date"; Date)
        {
            Caption = 'Needed by Date';
        }
        field(5916; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            Editable = false;
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(5928; "Service Price Group Code"; Code[10])
        {
            Caption = 'Service Price Group Code';
            TableRelation = "Service Price Group";
        }
        field(5929; "Fault Area Code"; Code[10])
        {
            Caption = 'Fault Area Code';
            TableRelation = "Fault Area";
        }
        field(5930; "Symptom Code"; Code[10])
        {
            Caption = 'Symptom Code';
            TableRelation = "Symptom Code";
        }
        field(5931; "Fault Code"; Code[10])
        {
            Caption = 'Fault Code';
            TableRelation = "Fault Code".Code WHERE ("Fault Area Code" = FIELD ("Fault Area Code"),
                                                     "Symptom Code" = FIELD ("Symptom Code"));
        }
        field(5932; "Resolution Code"; Code[10])
        {
            Caption = 'Resolution Code';
            TableRelation = "Resolution Code";
        }
        field(5933; "Exclude Warranty"; Boolean)
        {
            Caption = 'Exclude Warranty';
            Editable = true;
        }
        field(5934; Warranty; Boolean)
        {
            Caption = 'Warranty';
            Editable = false;
        }
        field(5936; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
            Editable = false;
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract));
        }
        field(5938; "Contract Disc. %"; Decimal)
        {
            Caption = 'Contract Disc. %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5939; "Warranty Disc. %"; Decimal)
        {
            Caption = 'Warranty Disc. %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5965; "Component Line No."; Integer)
        {
            Caption = 'Component Line No.';
        }
        field(5966; "Spare Part Action"; Option)
        {
            Caption = 'Spare Part Action';
            OptionCaption = ' ,Permanent,Temporary,Component Replaced,Component Installed';
            OptionMembers = " ",Permanent,"Temporary","Component Replaced","Component Installed";
        }
        field(5967; "Fault Reason Code"; Code[10])
        {
            Caption = 'Fault Reason Code';
            TableRelation = "Fault Reason Code";
        }
        field(5968; "Replaced Item No."; Code[20])
        {
            Caption = 'Replaced Item No.';
            TableRelation = Item;
        }
        field(5969; "Exclude Contract Discount"; Boolean)
        {
            Caption = 'Exclude Contract Discount';
            Editable = true;
        }
        field(5994; "Price Adjmt. Status"; Option)
        {
            Caption = 'Price Adjmt. Status';
            Editable = false;
            OptionCaption = ' ,Adjusted,Modified';
            OptionMembers = " ",Adjusted,Modified;
        }
        field(5997; "Line Discount Type"; Option)
        {
            Caption = 'Line Discount Type';
            Editable = false;
            OptionCaption = ' ,Warranty Disc.,Contract Disc.,Line Disc.,Manual';
            OptionMembers = " ","Warranty Disc.","Contract Disc.","Line Disc.",Manual;
        }
        field(5999; "Copy Components From"; Option)
        {
            Caption = 'Copy Components From';
            OptionCaption = 'None,Item BOM,Old Service Item,Old Serv.Item w/o Serial No.';
            OptionMembers = "None","Item BOM","Old Service Item","Old Serv.Item w/o Serial No.";
        }
        field(6608; "Return Reason Code"; Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
        }
        field(7002; "Customer Disc. Group"; Code[20])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5072450; "Gen. Prod. Pst. Gr. (Serviced)"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group (Serviced)';
            Description = '#RENW16.00.01:R170';
            TableRelation = "Gen. Product Posting Group";
        }
        field(5072650; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            Description = 'RENW16.00:10:01';
        }
        field(5072651; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
            Description = 'RENW16.00:10:01';
        }
        field(5072652; "Rental Position"; Boolean)
        {
            Caption = 'Rental Position';
            Description = 'RENW16.00:10:01';
        }
        field(5072653; "Rental Posting Stack No."; Integer)
        {
            Caption = 'Rental Posting Stack No.';
            Description = 'RENW16.00:10:01';
        }
        field(5072654; "Failure No."; Integer)
        {
            Caption = 'Failure No.';
            Description = 'RENW16.00:10:01';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; Type, "No.")
        {
        }
        key(Key3; "Service Item No.", Type, "Posting Date")
        {
        }
        key(Key4; "Document No.", "Service Item No.")
        {
        }
        key(Key5; "Document No.")
        {
            Enabled = false;
            SumIndexFields = Amount;
        }
        key(Key6; "Document No.", Type, "No.")
        {
        }
        key(Key7; Type, "No.", "Variant Code", "Location Code", "Posting Date", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code")
        {
            SumIndexFields = "Quantity (Base)";
        }
        key(Key8; "Appl.-to Service Entry")
        {
        }
        key(Key9; "Document No.", "Component Line No.")
        {
        }
        key(Key10; "Fault Reason Code")
        {
        }
        key(Key11; "Customer No.")
        {
        }
    }

    fieldgroups
    {
    }
}

