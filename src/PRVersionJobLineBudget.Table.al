table 5292357 "PR - Version Job Line Budget"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works

    Caption = 'Version Job Line Budget';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR';
            NotBlank = true;
            TableRelation = Job;
        }
        field(2; "Unique No."; Integer)
        {
            Caption = 'Unique No.';
        }
        field(3; Version; Code[10])
        {
            Caption = 'Version';
            Description = 'TR Job Version';
            NotBlank = true;
            TableRelation = "PR - Version".Code WHERE ("Job No." = FIELD ("Job No."));
        }
        field(10; "Outline No."; Code[75])
        {
            Caption = 'Outline No.';
            Description = 'ne';
            Editable = false;
        }
        field(11; "Outline Level"; Integer)
        {
            Caption = 'Outline Level';
            Description = 'ne';
            Editable = false;
        }
        field(12; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(15; "Node No."; Integer)
        {
            Caption = 'Node No.';
        }
        field(19; Summary; Boolean)
        {
            Caption = 'Summary';
            Description = 'ne';
            Editable = false;
        }
        field(20; "Line Type"; Option)
        {
            Caption = 'Line Type';
            Description = 'ne  ,Top,Sum';
            Editable = false;
            OptionCaption = ' ,Top,Sum';
            OptionMembers = " ",Top,"Sum";
        }
        field(21; "Summarize Position"; Boolean)
        {
            Caption = 'Summarize Position';
        }
        field(40; "Outline Code"; Code[20])
        {
            Caption = 'Outline Code';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(59; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(60; Comment; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292344),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Unique No.")));
            Caption = 'Comment';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Comment General"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292344),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Unique No."),
                                                               Type = CONST (General)));
            Caption = 'Comment General';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Comment Detailed Concept"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292344),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Unique No."),
                                                               Type = CONST ("Detailed Concept")));
            Caption = 'Comment Detailed Concept';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66; "Comment Procurement"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292344),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Unique No."),
                                                               Type = CONST (Purchase)));
            Caption = 'Comment Procurement';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Comment Sales"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292344),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Unique No."),
                                                               Type = CONST (Sale)));
            Caption = 'Comment Sales';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Recursion Control"; Integer)
        {
            Caption = 'Recursion Control';
            Description = 'ne';
            Editable = false;
        }
        field(910; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(990; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            Description = 'FF';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(991; "Form ID Filter"; Integer)
        {
            Caption = 'Form ID Filter';
            Description = 'FF';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1009; "Component Type"; Code[10])
        {
            Caption = 'Component Type';
            Description = 'TR "Component Type"';
            TableRelation = "PR - Component Type";
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,Service,Item,General,Traveling,Machine Center,Work Center';
            OptionCaption = ' ,Service,Item,General,Traveling,Machine Center,Work Center';
            OptionMembers = " ",Service,Item,General,Traveling,"Machine Center","Work Center";
        }
        field(1011; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST (Service)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Traveling)) Resource
            ELSE
            IF (Type = CONST (General)) "PR - General Component"
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(1020; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            Description = 'TR "Gen. Product Posting Group"';
            TableRelation = "Gen. Product Posting Group";
        }
        field(1021; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            Description = 'TR "VAT Product Posting Group"';
            TableRelation = "VAT Product Posting Group";
        }
        field(1100; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = 'TR "Item Variant"';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(1200; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(1900; "Calculation Group"; Code[10])
        {
            Caption = 'Calculation Group';
            Description = 'TR "Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(2001; "Manual Pricing"; Option)
        {
            Caption = 'Manual Pricing';
            Description = ' ,Cost,Price,Both';
            OptionCaption = ' ,Cost,Price,Both';
            OptionMembers = " ",Cost,Price,Both;
        }
        field(2009; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(2010; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2021; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2030; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2050; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST (" ")) "Unit of Measure"
            ELSE
            IF (Type = CONST (Service)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (General)) "Unit of Measure"
            ELSE
            IF (Type = CONST (Traveling)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            IF (Type = CONST ("Machine Center")) "Capacity Unit of Measure".Code
            ELSE
            IF (Type = CONST ("Work Center")) "Capacity Unit of Measure".Code;
        }
        field(2051; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2100; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            Description = 'TR Vendor';
            TableRelation = Vendor;
        }
        field(2110; "Purch. Currency Code"; Code[10])
        {
            Caption = 'Purch. Currency Code';
            Description = 'TR Currency';
            TableRelation = Currency;
        }
        field(2111; "Purch. Currency Date"; Date)
        {
            Caption = 'Purch. Currency Date';
        }
        field(2112; "Purch. Currency Factor"; Decimal)
        {
            Caption = 'Proc. Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = '0:15';
            Editable = false;
            MinValue = 0;
        }
        field(2120; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            Description = 'AF2';
        }
        field(2130; "Purch. Line Discount %"; Decimal)
        {
            Caption = 'Purch. Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(2131; "Purch. Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Purch. Line Discount Amount';
        }
        field(2200; "Direct Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost (LCY)';
            Description = 'AF2';
        }
        field(2220; "Total Direct Cost Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost Budget (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2250; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(2300; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
            Description = 'AF2';
        }
        field(2320; "Total Cost Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Budget (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2330; "Unit Cost Expected (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost Expected (LCY)';
            Description = 'AF2';
        }
        field(2340; "Total Cost Expected (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Expected (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2350; "Extra Charge %"; Decimal)
        {
            Caption = 'Extra Charge %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2390; "Price Base"; Option)
        {
            Caption = 'Price Base';
            Description = ' ,Cost,Price';
            OptionCaption = ' ,Cost,Price';
            OptionMembers = " ",Cost,Price;
        }
        field(2500; "Unit Price (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price (LCY)';
            Description = 'AF2';
        }
        field(2512; "Sales Line Disc. Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Disc. Amount (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2516; "Inv. Discount Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Discount Amount (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2520; "Total Price Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price Budget (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2530; "Sales Line Amount Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Amount Budget (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(2550; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
            DecimalPlaces = 0 : 5;
            Description = '0:5,ne';
            Editable = false;
            MaxValue = 99.99999;
        }
        field(2551; "Profit Amount Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Profit Amount Budget (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2610; "Sales Currency Code"; Code[10])
        {
            Caption = 'Sales Currency Code';
            Description = 'ne';
            Editable = false;
            TableRelation = Currency;
        }
        field(2611; "Sales Currency Date"; Date)
        {
            Caption = 'Sales Currency Date';
        }
        field(2612; "Sales Currency Factor"; Decimal)
        {
            Caption = 'Sales Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(2620; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(2630; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
            Description = 'ne';
            Editable = false;
        }
        field(2640; "Sales Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Amount';
        }
        field(2641; "Sales Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Discount Amount';
        }
        field(2642; "Sales Line Discount %"; Decimal)
        {
            Caption = 'Sales Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(2800; Rollup; Boolean)
        {
            Caption = 'Rollup';
        }
        field(2801; "Rollup Type"; Option)
        {
            Caption = 'Rollup Type';
            Description = ' ,Value,Quantity+Value,BOM';
            OptionCaption = ' ,Value,Quantity+Value,BOM';
            OptionMembers = " ",Value,Quantity,BOM;
        }
        field(2812; "Rollup Quantity (Base)"; Decimal)
        {
            Caption = 'Rollup Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
        }
        field(2814; "Rollup Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total Direct Cost (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(2816; "Rollup Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total Cost (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(2818; "Rollup Total Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total Line Amount (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(2850; Budget; Boolean)
        {
            Caption = 'Budget';
        }
        field(2851; "Budget Costs"; Boolean)
        {
            Caption = 'Budget Costs';
        }
        field(2862; "Rem. Budget Quantity (Base)"; Decimal)
        {
            Caption = 'Rem. Budget Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            Editable = false;
        }
        field(2864; "Rem. Budget Total DCost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rem. Budget Total Direct Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2866; "Rem. Budget Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rem. Budget Total Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2868; "Rem. Budget Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rem. Budget Total Price (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2911; "Delay GetCostPrice"; Boolean)
        {
            Caption = 'Delay GetCostPrice';
        }
        field(2912; "Delay Calculation"; Boolean)
        {
            Caption = 'Delay Calculation';
        }
        field(2913; "Delay Global Calculation"; Boolean)
        {
            Caption = 'Delay Global Calculation';
        }
        field(3000; "-- Schedule"; Integer)
        {
            Caption = '-- Expectation';
        }
        field(5292650; "Current Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Lookup ("PR - Job Line Budget".Quantity WHERE ("Job No." = FIELD ("Job No."),
                                                                        "Unique No." = FIELD ("Unique No.")));
            Caption = 'Current Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292655; "Current Total Cost Budget"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Lookup ("PR - Job Line Budget"."Total Cost Budget (LCY)" WHERE ("Job No." = FIELD ("Job No."),
                                                                                         "Unique No." = FIELD ("Unique No.")));
            Caption = 'Current Total Cost (Budget) (LCY)';
            Description = 'AF1';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Job No.", "Unique No.", Version)
        {
            Clustered = true;
        }
        key(Key2; "Job No.", Version, "Outline No.")
        {
        }
        key(Key3; "Job No.", "Line Type", "Outline No.")
        {
        }
    }

    fieldgroups
    {
    }
}

