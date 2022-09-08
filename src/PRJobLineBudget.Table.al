table 5292344 "PR - Job Line Budget"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        New Keys:
    //                                        - "Job No.","Node No.","Cost Type"
    //                                        - "Job No.", "Calculation Group"
    //                                        SumIndexField changed in Key "Job No.,Node No.,Cost Type"
    //                                        - New SumIndexFields "Sales Line Amount Budget (LCY)"
    //                                            added to Key "Job No.,Outline No.,Cost Type,Summary"
    //                                            New SumIndexFields "Total Price Budget (LCY)"
    //                                            added to Key "Job No.,Outline No.,Summarize Position,BoQ Position Type"
    // PRCS02 PRODUKT.01:P804 28.01.15 DENUE.SKOL Increased Field 5292701 from 20 to 55
    // PRCS03 PRODUKT.01 19.07.15 DENUE.SKOL Bugfix: General Position on first level
    // 
    // AM01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|alloy management
    // --- AM8.00.01 ---
    // AM02 PRODUKT.01:P0154 29.01.15 DENUE.SKOL Bugfix when changing No.
    // #AMW18.00.07:507 15.12.2015 DENUE.SKOL T2859: Permission Check for AM missing
    // 
    // PRBQ01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|boq manager
    //                                       Keys changed:
    //                                       - Job No.,Outline Level,Outline No.,Summarize Position,BoQ Position Type
    //                                       - Job No.,Outline Level,Outline No.,Line Type,Summarize Position,BoQ Position Type
    //                                       - Job No.,Sales View,Outline No.
    //                                       New Key:
    //                                       - Job No.,Outline No.,Summarize Position,BoQ Position Type
    // PRBQ02 PRODUKT.03:AMP0025 19.07.15 DENUE.SKOL Code changed
    // 
    // PR01 PRODUKT.01:P8022 16.04.15 DENUE.SKOL BoM for General Components
    //                                           Code added
    // PR02 PRODUKT.01 22.04.15 DENUE.SKOL Update Rule "Unit Cost"
    // PR03 PRODUKT.01:AMP0020 19.07.15 DENUE.SKOL Integration DM Checklist in project
    //                                             New Fields
    //                                             - 5013020 "Checklist No"
    //                                             - 5013030 "Document BOM No."
    //                                             - 5013040 "PO from Document BOM"
    //                                             - 5013050 "Document BOM"

    Caption = 'Job Line Budget';

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
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No.")));
            Caption = 'Comment';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Comment General"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST(General)));
            Caption = 'Comment General';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Comment Detailed Concept"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST("Detailed Concept")));
            Caption = 'Comment Detailed Concept';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64; "Comment Processing"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST(Processing)));
            Caption = 'Comment Processing';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65; "Comment Support"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST(Support)));
            Caption = 'Comment Support';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66; "Comment Procurement"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST(Purchase)));
            Caption = 'Comment Procurement';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Comment Sales"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST(Sale)));
            Caption = 'Comment Sales';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(68; "Comment Long Text"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Unique No."),
                                                               Type = CONST("Long Text")));
            Caption = 'Comment Long Text';
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
        field(100; "-- Dimensions"; Integer)
        {
            Caption = '-- Dimensions';
            Description = 'PR17';
            Enabled = false;
        }
        field(101; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            Description = 'PR17';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(102; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            Description = 'PR17';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(900; "-- Filters"; Integer)
        {
            Caption = '-- Filters';
            Description = 'PR17';
            Enabled = false;
        }
        field(910; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(920; "Special Position Filter"; Option)
        {
            Caption = 'Special Position Filter';
            Description = ' ,,,Supplement,,Increase,,Reclamation';
            FieldClass = FlowFilter;
            OptionCaption = ' ,,,Supplement,,Increase,Reclamation';
            OptionMembers = " ",,,Supplement,,Increase,Reclamation;
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
            TableRelation = IF (Type = CONST(Service)) Resource
            ELSE
            IF (Type = CONST(Item)) Item
            ELSE
            IF (Type = CONST(Traveling)) Resource
            ELSE
            IF (Type = CONST(General)) "PR - General Component"
            ELSE
            IF (Type = CONST("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST("Machine Center")) "Machine Center";
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
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(1200; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(1300; "Travel Code"; Code[10])
        {
            Caption = 'Travel Code';
            Description = 'TR Job Travel Code';
            TableRelation = "PR - Job Travel Code".Code WHERE(Module = CONST(Job),
                                                               "Module No." = FIELD("Job No."));
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
            Description = ' ,Direct Unit Cost,Unit Price,Both';
            OptionCaption = ' ,Direct Unit Cost,Unit Price,Both';
            OptionMembers = " ","Direct Unit Cost","Unit Price",Both;
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
            TableRelation = IF (Type = CONST(" ")) "Unit of Measure"
            ELSE
            IF (Type = CONST(Service)) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(General)) "Unit of Measure"
            ELSE
            IF (Type = CONST(Traveling)) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            IF (Type = CONST("Machine Center")) "Capacity Unit of Measure".Code
            ELSE
            IF (Type = CONST("Work Center")) "Capacity Unit of Measure".Code;
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
            Description = 'ROLLUP FIELD';
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
            Description = 'ROLLUP FIELD';
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
        field(2390; "Unit Price Base"; Option)
        {
            Caption = 'Unit Price Base';
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
            Description = 'ROLLUP FIELD';
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
        field(2880; "Calculation Schedule"; Boolean)
        {
            BlankZero = true;
            CalcFormula = Exist("PR - Job Calc. Schedule" WHERE(Type = CONST("Job Line"),
                                                                 "Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Calculation Schedule';
            Description = 'LU Job Calc. Schedule';
            Editable = false;
            FieldClass = FlowField;
        }
        field(2881; "Calculation Schedule Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Calculation Schedule Value';
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
            Enabled = false;
        }
        field(3040; "Estimated Finish Date"; Date)
        {
            Caption = 'Estimated Finish Date';
        }
        field(3210; "Estimated Quantity"; Decimal)
        {
            Caption = 'Estimated Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(3220; "Estimated Total Dir.Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Estimated Total Dir.Cost (LCY)';
            Description = 'AF1';
        }
        field(3230; "Estimated Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Estimated Total Cost (LCY)';
            Description = 'AF1';
        }
        field(3250; "Estimated Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Estimated Total Price (LCY)';
            Description = 'AF1';
        }
        field(3420; "Scheduled Hours"; Decimal)
        {
            CalcFormula = Sum("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE("Job No." = FIELD("Job No."),
                                                                                   "Job Line Unique No." = FIELD("Unique No."),
                                                                                   Start = FIELD("Date Filter")));
            Caption = 'Scheduled Hours';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3450; "Scheduled Resources"; Text[100])
        {
            Caption = 'Scheduled Resources';
            Description = 'ne';
            Editable = false;
        }
        field(3830; "Expected Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Expected Total Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                           "Job Line Unique No." = FIELD("Unique No."),
                                                                                           "WIP Date" = FIELD("Date Filter")));
            Caption = 'Expected Total Cost (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3850; "Expected Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Expected Total Price (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                            "Job Line Unique No." = FIELD("Unique No."),
                                                                                            "WIP Date" = FIELD("Date Filter")));
            Caption = 'Expected Total Price (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4010; "Process Channel"; Option)
        {
            Caption = 'Process Channel';
            Description = ' ,Work,Lead time,Structure';
            OptionCaption = ' ,Work,Lead time,Structure';
            OptionMembers = " ",Work,"Lead time",Structure;
        }
        field(4020; Responsible; Code[20])
        {
            CalcFormula = Min("PR - Job Line Person"."Planning Resource No." WHERE("Job No." = FIELD("Job No."),
                                                                                    "Job Line Unique No." = FIELD("Unique No."),
                                                                                    Responsible = CONST(true)));
            Caption = 'Responsible';
            Description = 'FF Job Line Person';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4030; "Process Start Date"; Date)
        {
            Caption = 'Process Start Date';
            Description = 'ne';
            Editable = false;
        }
        field(4040; "Process Finish Date"; Date)
        {
            Caption = 'Process Finish Date';
            Description = 'ne';
            Editable = false;
        }
        field(4210; Milestone; Boolean)
        {
            Caption = 'Milestone';
        }
        field(4303; "Process Planning"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PRPL - Job Line Process" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Planning Status" = CONST(Planning)));
            Caption = 'Process Planning';
            Description = 'CF Job Line Process';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4304; "Process Release"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PRPL - Job Line Process" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Planning Status" = CONST(Release)));
            Caption = 'Process Release';
            Description = 'CF Job Line Process';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4305; "Process Finished"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PRPL - Job Line Process" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Planning Status" = CONST(Finished)));
            Caption = 'Process Finished';
            Description = 'CF Job Line Process';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4331; "Work Planned Hours"; Decimal)
        {
            CalcFormula = Sum("PRPL - Assigned Resource"."Planned Work Hours" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Work Planned Hours';
            DecimalPlaces = 0 : 5;
            Description = 'CF Assigned Resources';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5000; "-- Procurement"; Integer)
        {
            Caption = '-- Procurement';
            Enabled = false;
        }
        field(5010; "Procurement Channel"; Option)
        {
            Caption = 'Procurement Channel';
            Description = ' ,...,Time Entry,Quote,Requisition,Order,Inventory Request,Production Order,Service Order';
            OptionCaption = ' ,...,Time Entry,Quote,Requisition,Order,Inventory Request,Production Order,Service Order';
            OptionMembers = " ","...","Time Entry",Quote,Requisition,"Order","Inventory Request","Production Order","Service Order";
        }
        field(5012; "Procurement by Job Order"; Boolean)
        {
            Caption = 'Procurement by Job Order';
        }
        field(5018; "Procurement Lead Time Calc."; DateFormula)
        {
            Caption = 'Procurement Lead Time Calc.';
        }
        field(5019; "Procurement Start Date"; Date)
        {
            Caption = 'Procurement Start Date';
        }
        field(5020; "Procurement Finish Date"; Date)
        {
            Caption = 'Procurement Finish Date';
        }
        field(5030; "Procurement Vendor No."; Code[20])
        {
            Caption = 'Procurement Vendor No.';
            Description = 'TR Vendor';
            TableRelation = Vendor;
        }
        field(5050; "Procurement Location Code"; Code[10])
        {
            Caption = 'Procurement Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(5051; "Procurement Bin Code"; Code[20])
        {
            Caption = 'Procurement Bin Code';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Procurement Location Code"));
        }
        field(5060; "Procurement Cost Source"; Option)
        {
            Caption = 'Procurement Cost Source';
            Description = ' ,Standard Costs,Job Line,Procurement Line';
            OptionCaption = ' ,Standard Costs,Job Line,Procurement Line';
            OptionMembers = " ","Standard Costs","Job Line","Procurement Line";
        }
        field(5061; "Direct Shipping"; Boolean)
        {
            Caption = 'Direct Shipping';
        }
        field(5062; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code;
        }
        field(5090; "Job Order"; Boolean)
        {
            CalcFormula = Exist("PR - Job Line Procurement" WHERE("Job No." = FIELD("Job No."),
                                                                   "Job Line Unique No." = FIELD("Unique No."),
                                                                   "Job Order No." = FILTER(<> '')));
            Caption = 'Job Order';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5100; "Time Entry"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Procurement" WHERE("Job No." = FIELD("Job No."),
                                                                   "Job Line Unique No." = FIELD("Unique No."),
                                                                   "Procurement Channel" = CONST("Time Entry"),
                                                                   "Procurement Status" = CONST(Release)));
            Caption = 'Time Entry';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; "Purchase Quote"; Boolean)
        {
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = CONST(Quote),
                                                       "Job No." = FIELD("Job No."),
                                                       "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Purchase Quote';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5111; "Purchase Order"; Boolean)
        {
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = CONST(Order),
                                                       "Job No." = FIELD("Job No."),
                                                       "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Purchase Order';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5113; "Purchase Credit Memo"; Boolean)
        {
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = CONST("Credit Memo"),
                                                       "Job No." = FIELD("Job No."),
                                                       "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Purchase Credit Memo';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5115; "Purchase Return Order"; Boolean)
        {
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = CONST("Return Order"),
                                                       "Job No." = FIELD("Job No."),
                                                       "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Purchase Return Order';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5120; "Requisition Line"; Boolean)
        {
            CalcFormula = Exist("Requisition Line" WHERE("Job No." = FIELD("Job No."),
                                                          "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Requisition Line';
            Description = 'LU Requisition Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5130; "Inventory Request"; Boolean)
        {
            CalcFormula = Exist("Job Journal Line" WHERE("Job No." = FIELD("Job No."),
                                                          "Job Line Unique No." = FIELD("Unique No."),
                                                          "Source Channel" = CONST("Inventory Request")));
            Caption = 'Inventory Request';
            Description = 'LU Job Journal Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5140; "Production Order"; Boolean)
        {
            CalcFormula = Exist("Production Order" WHERE("Job No." = FIELD("Job No."),
                                                          "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Production Order';
            Description = 'LU Production Order';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5150; "Service Order"; Boolean)
        {
            CalcFormula = Exist("Service Header" WHERE("Job No." = FIELD("Job No."),
                                                        "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Service Order';
            Description = 'LU Service Order';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5151; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item"."No.";
        }
        field(5303; "Procurement Planning"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Procurement" WHERE("Job No." = FIELD("Job No."),
                                                                   "Job Line Unique No." = FIELD("Unique No."),
                                                                   "Procurement Status" = CONST(Planning)));
            Caption = 'Procurement Planning';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5304; "Procurement Release"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Procurement" WHERE("Job No." = FIELD("Job No."),
                                                                   "Job Line Unique No." = FIELD("Unique No."),
                                                                   "Procurement Status" = CONST(Release)));
            Caption = 'Procurement Release';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5305; "Procurement Finished"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Procurement" WHERE("Job No." = FIELD("Job No."),
                                                                   "Job Line Unique No." = FIELD("Unique No."),
                                                                   "Procurement Status" = CONST(Finished)));
            Caption = 'Procurement Finished';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5310; "Total Cost Procurement (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                    "Job Line Unique No." = FIELD("Unique No."),
                                                                                    "Procurement Finish Date" = FIELD("Date Filter"),
                                                                                    "Special Position" = FIELD("Special Position Filter")));
            Caption = 'Total Cost Procurement (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5313; "Procurement Planning (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                           "Job Line Unique No." = FIELD("Unique No."),
                                                                                           "Procurement Status" = CONST(Planning),
                                                                                           "Procurement Finish Date" = FIELD("Date Filter"),
                                                                                           "Special Position" = FIELD("Special Position Filter")));
            Caption = 'Procurement Planning (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5314; "Procurement Release (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                           "Job Line Unique No." = FIELD("Unique No."),
                                                                                           "Procurement Status" = CONST(Release),
                                                                                           "Procurement Finish Date" = FIELD("Date Filter"),
                                                                                           "Special Position" = FIELD("Special Position Filter")));
            Caption = 'Procurement Release (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5315; "Procurement Finished (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                           "Job Line Unique No." = FIELD("Unique No."),
                                                                                           "Procurement Status" = CONST(Finished),
                                                                                           "Procurement Finish Date" = FIELD("Date Filter"),
                                                                                           "Special Position" = FIELD("Special Position Filter")));
            Caption = 'Procurement Finished (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5320; "Total Dir. Cost Rel. RU (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Dir. Cost Rel. RU (LCY)';
            Description = 'ROLLUP FIELD';
            Editable = false;
        }
        field(5330; "Rollup Total DCost Rel. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total DCost Rel. (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5340; "Total Cost Proc. SP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                    "Sales Position Unique No." = FIELD("Unique No."),
                                                                                    "Procurement Start Date" = FIELD("Date Filter"),
                                                                                    "Procurement Status" = FILTER(Release .. Finished)));
            Caption = 'Total Cost Proc. SP (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5411; "Procurement Internal (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Journal Line"."Total Direct Cost Proc. (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                        "Job Line Unique No." = FIELD("Unique No."),
                                                                                        "Posting Date" = FIELD("Date Filter")));
            Caption = 'Procurement Internal (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5412; "Total Dir.Cost Rem. PO (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Total Dir.Cost Rem. PO (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                    "Job Line Unique No." = FIELD("Unique No."),
                                                                                    "Expected Receipt Date" = FIELD("Date Filter"),
                                                                                    "Special Position" = FIELD("Special Position Filter")));
            Caption = 'Total Dir.Cost Rem. PO (LCY)';
            Description = 'CF Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5510; "Total Dir. Cost Proc. SP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                           "Sales Position Unique No." = FIELD("Unique No."),
                                                                                           "Procurement Finish Date" = FIELD("Date Filter")));
            Caption = 'Total Dir. Cost Proc. SP (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6000; "-- Usage"; Integer)
        {
            Caption = '-- Usage';
            Enabled = false;
        }
        field(6020; "Planned Shipment Date"; Date)
        {
            Caption = 'Planned Shipment Date';
        }
        field(6310; "Total Dir.Cost Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Ledger Entry"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                  "Job Line Unique No." = FIELD("Unique No."),
                                                                                  "Entry Type" = CONST(Usage),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Special Position" = FIELD("Special Position Filter")));
            Caption = 'Total Dir.Cost Usage (LCY)';
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6320; "Total Dir.Cost Usage RU (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Dir.Cost Usage RU (LCY)';
            Description = 'ROLLUP FIELD';
            Editable = false;
        }
        field(6330; "Rollup Total DCost Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total DCost Usage (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(6340; "Total Cost Usage RU (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Usage RU (LCY)';
            Description = 'ROLLUP FIELD';
            Editable = false;
        }
        field(6350; "Rollup Total Cost Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total Cost Usage (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(6360; "Total Cost Usage SP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Ledger Entry"."Total Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                           "Sales Position Unique No." = FIELD("Unique No."),
                                                                           "Entry Type" = CONST(Usage),
                                                                           "Posting Date" = FIELD("Date Filter")));
            Caption = 'Total Cost Usage SP (LCY)';
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6370; "Quantity Usage"; Decimal)
        {
            CalcFormula = Sum("Job Ledger Entry"."Quantity (Base)" WHERE("Job No." = FIELD("Job No."),
                                                                          "Job Line Unique No." = FIELD("Unique No."),
                                                                          "Entry Type" = CONST(Usage),
                                                                          "Posting Date" = FIELD("Date Filter")));
            Caption = 'Quantity Usage';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6375; "Quantity Provided"; Decimal)
        {
            CalcFormula = Sum("Job Ledger Entry"."Quantity (Base)" WHERE("Job No." = FIELD("Job No."),
                                                                          "Job Line Unique No." = FIELD("Unique No."),
                                                                          "Entry Type" = FILTER(Usage | "Job Shipment"),
                                                                          "Posting Date" = FIELD("Date Filter"),
                                                                          "Provided Quantity" = CONST(true)));
            Caption = 'Quantity Provided';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6376; "Quantity Shipped"; Decimal)
        {
            CalcFormula = - Sum("Job Ledger Entry"."Quantity (Base)" WHERE("Job No." = FIELD("Job No."),
                                                                           "Job Line Unique No." = FIELD("Unique No."),
                                                                           "Entry Type" = FILTER("Job Shipment"),
                                                                           "Posting Date" = FIELD("Date Filter"),
                                                                           "Provided Quantity" = CONST(true)));
            Caption = 'Quantity Shipped';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6380; "Last Date Usage"; Date)
        {
            CalcFormula = Max("Job Ledger Entry"."Posting Date" WHERE("Job No." = FIELD("Job No."),
                                                                       "Job Line Unique No." = FIELD("Unique No."),
                                                                       "Entry Type" = CONST(Usage),
                                                                       "Posting Date" = FIELD("Date Filter")));
            Caption = 'Last Date Usage';
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6710; "Realized % (Base)"; Option)
        {
            Caption = 'Realized % (Base)';
            Description = ' ,Quantity,Cost';
            OptionCaption = ' ,Quantity,Cost';
            OptionMembers = " ",Quantity,Cost;
        }
        field(6720; "Realized % (Amount LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Realized % (Amount LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(6730; "Realized % Finalized"; Decimal)
        {
            Caption = 'Realized % Finalized';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(6731; "Realized % Based on cost"; Decimal)
        {
            Caption = 'Realized % Based on cost';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            Editable = false;
        }
        field(6750; "Signal Monitor Value"; Option)
        {
            Caption = 'Signal Monitor Value';
            Description = ' ,Green,Yellow,Red';
            OptionCaption = ' ,Green,Yellow,Red';
            OptionMembers = " ",Green,Yellow,Red;
        }
        field(6751; "Signal Monitor"; BLOB)
        {
            Caption = 'Signal Monitor';
            SubType = Bitmap;
        }
        field(6760; "Days to Procurement Finish"; Integer)
        {
            Caption = 'Days to Procurement Finish';
            Editable = false;
        }
        field(6761; "Days after Procurement Start"; Integer)
        {
            Caption = 'Days after Procurement Start';
            Editable = false;
        }
        field(6910; "Milestone Completed"; Boolean)
        {
            Caption = 'Milestone Completed';
        }
        field(7000; "-- Shipment"; Integer)
        {
            Caption = '-- Shipment';
            Enabled = false;
        }
        field(7010; "Shipment Channel"; Option)
        {
            Caption = 'Shipment Channel';
            Description = ' ,...,Structure Position,Job Line,Posted Item';
            OptionCaption = ' ,...,Structure Position,Job Line,Posted Item';
            OptionMembers = " ","...","Structure Position","Job Line","Posted Item";
        }
        field(7020; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(7030; "Shipment Contact No."; Code[20])
        {
            Caption = 'Shipment Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(7040; "Shipment Plan"; Boolean)
        {
            Caption = 'Shipment Plan';
        }
        field(7110; "Job Shipment"; Boolean)
        {
            CalcFormula = Exist("PR - Job Shipment Line" WHERE("Job No." = FIELD("Job No."),
                                                                "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Job Shipment';
            Description = 'LU Job Shipment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7120; "Posted Job Shipment"; Boolean)
        {
            CalcFormula = Exist("PR - Posted Job Shpt. Line" WHERE("Job No." = FIELD("Job No."),
                                                                    "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Posted Job Shipment';
            Description = 'LU Job Shipment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7303; "Shipment Planning"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Shipment Plan" WHERE("Job No." = FIELD("Job No."),
                                                                     "Job Line Unique No." = FIELD("Unique No."),
                                                                     "Shipment Status" = CONST(Planning)));
            Caption = 'Shipment Planning';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7304; "Shipment Release"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Shipment Plan" WHERE("Job No." = FIELD("Job No."),
                                                                     "Job Line Unique No." = FIELD("Unique No."),
                                                                     "Shipment Status" = CONST(Release)));
            Caption = 'Shipment Release';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7305; "Shipment Finished"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Shipment Plan" WHERE("Job No." = FIELD("Job No."),
                                                                     "Job Line Unique No." = FIELD("Unique No."),
                                                                     "Shipment Status" = CONST(Finished)));
            Caption = 'Shipment Finished';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8000; "-- Sale"; Integer)
        {
            Caption = '-- Sale';
            Enabled = false;
        }
        field(8001; "Sales View"; Boolean)
        {
            Caption = 'Sales View';
        }
        field(8010; "Sales Code"; Code[10])
        {
            Caption = 'Sales Code';
            Description = 'TR "Job Sales Code"';
            TableRelation = "PR - Job Sales Code";
        }
        field(8011; "Milestone Triggers"; Integer)
        {
            CalcFormula = Count("PR - Job Sales Milestone Trig." WHERE("Milestone Job No." = FIELD("Job No."),
                                                                        "Milestone Unique No." = FIELD("Unique No.")));
            Caption = 'Milestone Triggers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8012; "Sales Milestone"; Boolean)
        {
            CalcFormula = Exist("PR - Job Sales Milestone Trig." WHERE("Trigger for Job No." = FIELD("Job No."),
                                                                        "Trigger for Unique No." = FIELD("Unique No.")));
            Caption = 'Sales Milestone';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8015; Summarize; Option)
        {
            Caption = 'Summarize';
            Description = ' ,Position,Sales Code';
            OptionCaption = ' ,Position,Sales Code';
            OptionMembers = " ",Position,"Sales Code";
        }
        field(8020; "Sales Date"; Date)
        {
            Caption = 'Sales Date';
        }
        field(8080; "Job Posting Group"; Code[10])
        {
            Caption = 'Job Posting Group';
            TableRelation = "Job Posting Group";
        }
        field(8090; "Sales Status"; Option)
        {
            Caption = 'Sales Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(8100; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,Optional,Alternative,Supplement,Modification,Increase,Reclamation';
            OptionCaption = ' ,Optional,Alternative,Supplement,Modification,Increase,Reclamation';
            OptionMembers = " ",Optional,Alternative,Supplement,Modification,Increase,Reclamation;
        }
        field(8110; "Special Quantity"; Decimal)
        {
            Caption = 'Special Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(8120; "Special Alternative Unique No."; Integer)
        {
            Caption = 'Special Alternative Unique No.';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE("Job No." = FIELD("Job No."),
                                                                       "Unique No." = FIELD("Special Alternative Unique No."));
        }
        field(8200; "Sales Quote"; Boolean)
        {
            CalcFormula = Exist("Sales Line" WHERE("Document Type" = CONST(Quote),
                                                    "Job No." = FIELD("Job No."),
                                                    "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Sales Quote';
            Description = 'LU Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8201; "Sales Order"; Boolean)
        {
            CalcFormula = Exist("Sales Line" WHERE("Document Type" = CONST(Order),
                                                    "Job No." = FIELD("Job No."),
                                                    "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Sales Order';
            Description = 'LU Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8210; "Total Price Released (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Sales Released"."Total Price Released (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                            "Job Line Unique No." = FIELD("Unique No."),
                                                                                            "Document Type" = FILTER(<> "Sales Quote"),
                                                                                            "Date of Confirmation" = FIELD("Date Filter")));
            Caption = 'Total Price Released (LCY)';
            Description = 'CF Job Sales Confirmed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8511; "Sales Invoice"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("Sales Line" WHERE("Job No." = FIELD("Job No."),
                                                    "Job Line Unique No." = FIELD("Unique No."),
                                                    "Document Type" = FILTER(Invoice)));
            Caption = 'Sales Invoice';
            Description = 'CF Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8512; "Sales Credit Memo"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("Sales Line" WHERE("Job No." = FIELD("Job No."),
                                                    "Job Line Unique No." = FIELD("Unique No."),
                                                    "Document Type" = FILTER("Credit Memo")));
            Caption = 'Sales Credit Memo';
            Description = 'CF Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8520; "Total Price Posted RU (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price Posted RU (LCY)';
            Description = 'ROLLUP FIELD';
            Editable = false;
        }
        field(8530; "Rollup Total Price Inv. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rollup Total Price Invoiced (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(8540; "Total Price Posted (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job Ledger Entry"."Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                             "Job Line Unique No." = FIELD("Unique No."),
                                                                             "Entry Type" = CONST(Sale),
                                                                             "Posting Date" = FIELD("Date Filter")));
            Caption = 'Total Price Posted (LCY)';
            Description = 'CF Job Ledger Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8541; "Posted Sales Invoice"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("Sales Invoice Line" WHERE("Job No." = FIELD("Job No."),
                                                            "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Posted Sales Invoice';
            Description = 'CF Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8542; "Posted Sales Credit Memo"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("Sales Cr.Memo Line" WHERE("Job No." = FIELD("Job No."),
                                                            "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Posted Sales Credit Memo';
            Description = 'CF Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9000; "-- Invoicing"; Integer)
        {
            Caption = '-- Invoicing';
            Enabled = false;
        }
        field(9302; "Invoicing On Hold"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Sales Position Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(" ")));
            Caption = 'Invoicing On Hold';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9303; "Invoicing Planning"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Sales Position Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(Planning)));
            Caption = 'Invoicing Planning';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9304; "Invoicing Release"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Sales Position Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(Release)));
            Caption = 'Invoicing Release';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9305; "Invoicing Finished"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Sales Position Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(Finished)));
            Caption = 'Invoicing Finished';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9312; "Invoicing On Hold UP"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(" ")));
            Caption = 'Invoicing On Hold UP';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9313; "Invoicing Planning UP"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(Planning)));
            Caption = 'Invoicing Planning UP';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9314; "Invoicing Release UP"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(Release)));
            Caption = 'Invoicing Release UP';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9315; "Invoicing Finished UP"; Boolean)
        {
            AutoFormatType = 1;
            CalcFormula = Exist("PR - Job Line Invoicing" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "Invoicing Status" = CONST(Finished)));
            Caption = 'Invoicing Finished UP';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9410; "Invoicing Qty. UP (Base)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Quantity (Base)" WHERE("Job No." = FIELD("Job No."),
                                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                                 "Invoicing Posting Date" = FIELD("Date Filter")));
            Caption = 'Invoicing Qty. UP (Base)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9420; "Invoicing Qty. (Base)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Quantity (Base)" WHERE("Job No." = FIELD("Job No."),
                                                                                 "Sales Position Unique No." = FIELD("Unique No."),
                                                                                 "Invoicing Posting Date" = FIELD("Date Filter")));
            Caption = 'Invoicing Qty. (Base)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9510; "Invoicing Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                         "Sales Position Unique No." = FIELD("Unique No."),
                                                                                         "Invoicing Posting Date" = FIELD("Date Filter")));
            Caption = 'Invoicing Total Price (LCY)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9512; "Invoicing Total Pr. Pl. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                         "Sales Position Unique No." = FIELD("Unique No."),
                                                                                         "Invoicing Status" = CONST(Planning),
                                                                                         "Invoicing Posting Date" = FIELD("Date Filter")));
            Caption = 'Invoicing Total Pr. Pl. (LCY)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9520; "Invoicing Total Price UP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                         "Job Line Unique No." = FIELD("Unique No."),
                                                                                         "Invoicing Posting Date" = FIELD("Date Filter")));
            Caption = 'Invoicing Total Price UP (LCY)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9522; "Invoicing Total Pr.Pl.UP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                         "Job Line Unique No." = FIELD("Unique No."),
                                                                                         "Invoicing Status" = CONST(Planning),
                                                                                         "Invoicing Posting Date" = FIELD("Date Filter")));
            Caption = 'Invoicing Total Pr.Pl.UP (LCY)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9540; "Invoicing Total Price RF (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Invoicing"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                         "Sales Position Unique No." = FIELD("Unique No."),
                                                                                         "Invoicing Posting Date" = FIELD("Date Filter"),
                                                                                         "Invoicing Status" = FILTER(Release .. Finished)));
            Caption = 'Invoicing Total Price RF (LCY)';
            Description = 'CF Job Line Invoicing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10000; "-- WIP"; Integer)
        {
            Caption = '-- WIP';
            Enabled = false;
        }
        field(10001; "WIP Method"; Option)
        {
            Caption = 'WIP Method';
            OptionCaption = ' ,Cost Value,Sales Value,Cost of Sales,Percentage of Completion,Completed Contract';
            OptionMembers = " ","Cost Value","Sales Value","Cost of Sales","Percentage of Completion","Completed Contract";
        }
        field(10010; "Last WIP Date"; Date)
        {
            CalcFormula = Max("PR - Job Line WIP Entry"."WIP Date" WHERE("Job No." = FIELD("Job No."),
                                                                          "Job Line Unique No." = FIELD("Unique No.")));
            Caption = 'Last WIP Date';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10310; "WIP Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line WIP Entry"."WIP Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                  "Job Line Unique No." = FIELD("Unique No."),
                                                                                  "WIP Date" = FIELD("Date Filter")));
            Caption = 'WIP Amount (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10320; "Impending Losses (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Impending Losses (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                        "Job Line Unique No." = FIELD("Unique No."),
                                                                                        "WIP Date" = FIELD("Date Filter")));
            Caption = 'Impending Losses (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10330; "Prospective Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Prospective Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                        "Job Line Unique No." = FIELD("Unique No."),
                                                                                        "WIP Date" = FIELD("Date Filter")));
            Caption = 'Prospective Cost (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10350; "Cost of Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Cost of Sales (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Job Line Unique No." = FIELD("Unique No."),
                                                                                     "WIP Date" = FIELD("Date Filter")));
            Caption = 'Cost of Sales (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10491; "WIP Not Posted"; Boolean)
        {
            CalcFormula = Exist("PR - Job Line WIP Entry" WHERE("Job No." = FIELD("Job No."),
                                                                 "Job Line Unique No." = FIELD("Unique No."),
                                                                 "WIP Date" = FIELD("Date Filter"),
                                                                 "WIP Posted" = CONST(false)));
            Caption = 'WIP Not Posted';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10500; "WIP View"; Boolean)
        {
            Caption = 'Ansicht WIP';
        }
        field(10501; "Activatable WIP"; Boolean)
        {
            Caption = 'Activatable WIP';
            InitValue = true;
        }
        field(10502; "WIP Total Cost Usage SP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Ledger Entry"."Total Cost (LCY)" WHERE("WIP Job No." = FIELD("Job No."),
                                                                           "WIP Position No." = FIELD("Unique No."),
                                                                           "Entry Type" = CONST(Usage),
                                                                           "Activatable WIP" = CONST(true),
                                                                           "Posting Date" = FIELD("Date Filter")));
            Caption = 'WIP Total Cost Usage SP (LCY)';
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10503; "WIP Total Price Posted (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job Ledger Entry"."Line Amount (LCY)" WHERE("WIP Job No." = FIELD("Job No."),
                                                                             "WIP Position No." = FIELD("Unique No."),
                                                                             "Entry Type" = CONST(Sale),
                                                                             "Posting Date" = FIELD("Date Filter")));
            Caption = 'WIP Total Price Posted (LCY)';
            Description = 'CF Job Ledger Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10504; "WIP Total Cost Proc. SP (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Line Procurement"."Total Cost (LCY)" WHERE("WIP Job No." = FIELD("Job No."),
                                                                                    "WIP Position No." = FIELD("Unique No."),
                                                                                    "Procurement Start Date" = FIELD("Date Filter"),
                                                                                    "Procurement Status" = FILTER(Release .. Finished)));
            Caption = 'WIP Total Cost Proc. SP (LCY)';
            Description = 'CF Job Line Procurement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10505; "WIP Total Price Released (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Sales Released"."Total Price Released (LCY)" WHERE("WIP Job No." = FIELD("Job No."),
                                                                                            "WIP Position No." = FIELD("Unique No."),
                                                                                            "Document Type" = CONST("Sales Order"),
                                                                                            "Date of Confirmation" = FIELD("Date Filter")));
            Caption = 'WIP Total Price Released (LCY)';
            Description = 'CF Job Sales Confirmed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11000; "-- Liquidity"; Integer)
        {
            Caption = '-- Liquidity';
            Enabled = false;
        }
        field(11210; "TDC Liquidity Schedule (LCY)"; Decimal)
        {
            CalcFormula = Sum("PR - Job Line Liquidity Entry"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                               "Job Line Unique No." = FIELD("Unique No."),
                                                                                               Date = FIELD("Date Filter"),
                                                                                               "Liquidity Type" = CONST(Schedule)));
            Caption = 'TDC Liquidity Schedule (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11220; "TDC Liquidity Request (LCY)"; Decimal)
        {
            CalcFormula = Sum("PR - Job Line Liquidity Entry"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                               "Job Line Unique No." = FIELD("Unique No."),
                                                                                               Date = FIELD("Date Filter"),
                                                                                               "Liquidity Type" = CONST(Request)));
            Caption = 'TDC Liquidity Request (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11230; "TDC Liquidity Payment (LCY)"; Decimal)
        {
            CalcFormula = Sum("PR - Job Line Liquidity Entry"."Total Direct Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                               "Job Line Unique No." = FIELD("Unique No."),
                                                                                               Date = FIELD("Date Filter"),
                                                                                               "Liquidity Type" = CONST(Payment)));
            Caption = 'TDC Liquidity Payment (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11510; "TP Liquidity Schedule (LCY)"; Decimal)
        {
            CalcFormula = Sum("PR - Job Line Liquidity Entry"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                               "Job Line Unique No." = FIELD("Unique No."),
                                                                                               Date = FIELD("Date Filter"),
                                                                                               "Liquidity Type" = CONST(Schedule)));
            Caption = 'TP Liquidity Schedule (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11520; "TP Liquidity Request (LCY)"; Decimal)
        {
            CalcFormula = Sum("PR - Job Line Liquidity Entry"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                               "Job Line Unique No." = FIELD("Unique No."),
                                                                                               Date = FIELD("Date Filter"),
                                                                                               "Liquidity Type" = CONST(Request)));
            Caption = 'TP Liquidity Request (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11530; "TP Liquidity Payment (LCY)"; Decimal)
        {
            CalcFormula = Sum("PR - Job Line Liquidity Entry"."Sales Line Amount (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                               "Job Line Unique No." = FIELD("Unique No."),
                                                                                               Date = FIELD("Date Filter"),
                                                                                               "Liquidity Type" = CONST(Payment)));
            Caption = 'TP Liquidity Payment (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013020; "Checklist No."; Code[20])
        {
            Caption = 'Checklist No.';
            TableRelation = "Checklist Header"."No.";
        }
        field(5013030; "Document BOM No."; Code[20])
        {
            Caption = 'Document BOM No.';
            Description = ':DMW13.70.01:1:01';
            Editable = false;
        }
        field(5013040; "PO from Document BOM"; Boolean)
        {
            Caption = 'PO from Document BOM';
        }
        field(5013050; "Document BOM"; Boolean)
        {
            CalcFormula = Exist("Document BOM" WHERE("Document No." = FIELD("Document BOM No.")));
            Caption = 'Document BOM';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292600; "BoQ Pos. No."; Text[30])
        {
            Caption = 'BoQ Pos. No.';
        }
        field(5292601; "BoQ Position Type"; Option)
        {
            Caption = 'BoQ Position Type';
            Description = ' ,Normalposition,LV-Normalgruppe,Hinweistext,Bedarfspos o. GB,Bedarfspos m. GB,Grundposition,Alternativposition,Bezugsposition,Wiederholungsposition,Leitbeschreibung,Stundenlohnarbeit,Zuschlagsposition,Kombiposition,Pauschalposition,Ausführungsbeschreibung,Block einer Ausführungsbeschreibung,Unterbeschreibung,Los,LV-Grundgruppe,LV-Alternativgruppe';
            OptionCaption = ' ,Normal Position,BoQ-Normal Group,Notice,Req. Pos w/o Totals,Req. Pos with Totals,Base Position,Alternative Position,Reference Position,Repeated Position,Guiding Description,Labour Hour Work,Surcharge Pos.,Combination Pos.,Lump Sum Pos.,Executive Desrciption,Block of exec. Description,Sub Description,Lot,BoQ-Basegroup,BoQ Alternate Group';
            OptionMembers = " ",Normalposition,"LV-Normalgruppe",Hinweistext,"Bedarfspos o. GB","Bedarfspos m. GB",Grundposition,Alternativposition,Bezugsposition,Wiederholungsposition,Leitbeschreibung,Stundenlohnarbeit,Zuschlagsposition,Kombiposition,Pauschalposition,"Ausführungsbeschreibung","Block einer Ausführungsbeschreibung",Unterbeschreibung,Los,"LV-Grundgruppe","LV-Alternativgruppe";
        }
        field(5292632; "Exp. Alloy Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Exp. Alloy Amount';
        }
        field(5292633; "Exp. Alloy Price (per B. Unit)"; Decimal)
        {
            Caption = 'Exp. Alloy Price (per Base Unit)';
        }
        field(5292650; "Responsible Calculation"; Code[20])
        {
            Caption = 'Responsible Calculation';
            TableRelation = Resource;
        }
        field(5292651; "Calculation Status"; Option)
        {
            Caption = 'Calculation Status';
            Description = 'ne';
            Editable = false;
            OptionCaption = ' ,Progress,Calculated,Fixed';
            OptionMembers = " ",Progress,Calculated,"Fixed";
        }
        field(5292655; "Job Status"; Option)
        {
            CalcFormula = Lookup(Job.Status WHERE("No." = FIELD("Job No.")));
            Caption = 'Job Status';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Planning,Quote,Order,Completed';
            OptionMembers = Planning,Quote,"Order",Completed;
        }
        field(5292660; "Wages Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Quantity per" WHERE("Job No." = FIELD("Job No."),
                                                                           "Node No." = FIELD("Unique No."),
                                                                           "Cost Type" = FILTER(Wages)));
            Caption = 'Wages Quantity';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(5292661; "Wages Direct Unit Cost (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Direct Unit Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Node No." = FIELD("Unique No."),
                                                                                     "Cost Type" = FILTER(Wages)));
            Caption = 'Wages Unit Cost (LCY)';
            FieldClass = FlowField;
        }
        field(5292662; "Wages Unit Price (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Unit Price (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                               "Node No." = FIELD("Unique No."),
                                                                               "Cost Type" = FILTER(Wages)));
            Caption = 'Wages Unit Price (LCY)';
            FieldClass = FlowField;
        }
        field(5292663; "Material Direct UnitCost (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Direct Unit Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Node No." = FIELD("Unique No."),
                                                                                     "Cost Type" = FILTER(Material)));
            Caption = 'Material Direct Unit Cost (LCY)';
            FieldClass = FlowField;
        }
        field(5292664; "Material Cost %"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Indirect Cost %" WHERE("Job No." = FIELD("Job No."),
                                                                              "Node No." = FIELD("Unique No."),
                                                                              "Cost Type" = FILTER(Material)));
            Caption = 'Material Cost %';
            FieldClass = FlowField;
        }
        field(5292665; "Material Unit Price (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Unit Price (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                               "Node No." = FIELD("Unique No."),
                                                                               "Cost Type" = FILTER(Material)));
            Caption = 'Material Unit Price (LCY)';
            FieldClass = FlowField;
        }
        field(5292666; "Ext. Direct Unit Cost (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Direct Unit Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Node No." = FIELD("Unique No."),
                                                                                     "Cost Type" = FILTER("External Service")));
            Caption = 'Ext. Service Direct Unit Cost (LCY)';
            FieldClass = FlowField;
        }
        field(5292667; "Ext. Cost %"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Indirect Cost %" WHERE("Job No." = FIELD("Job No."),
                                                                              "Node No." = FIELD("Unique No."),
                                                                              "Cost Type" = FILTER("External Service")));
            Caption = 'Ext. Service Cost %';
            FieldClass = FlowField;
        }
        field(5292668; "Ext. Unit Price (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Unit Price (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                               "Node No." = FIELD("Unique No."),
                                                                               "Cost Type" = FILTER("External Service")));
            Caption = 'Ext. Service Unit Price (LCY)';
            FieldClass = FlowField;
        }
        field(5292669; "Equipment Unit Cost (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Direct Unit Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Node No." = FIELD("Unique No."),
                                                                                     "Cost Type" = FILTER(Equipment)));
            Caption = 'Equipment Unit Cost (LCY)';
            FieldClass = FlowField;
        }
        field(5292670; "Other Unit Cost (LCY)"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Direct Unit Cost (LCY)" WHERE("Job No." = FIELD("Job No."),
                                                                                     "Node No." = FIELD("Unique No."),
                                                                                     "Cost Type" = FILTER(Other)));
            Caption = 'Other Unit Cost (LCY)';
            FieldClass = FlowField;
        }
        field(5292671; "Wages Charge %"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Extra Charge %" WHERE("Job No." = FIELD("Job No."),
                                                                             "Node No." = FIELD("Unique No."),
                                                                             "Cost Type" = FILTER(Wages)));
            Caption = 'Wages Charge %';
            FieldClass = FlowField;
        }
        field(5292672; "Material Charge %"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Extra Charge %" WHERE("Job No." = FIELD("Job No."),
                                                                             "Node No." = FIELD("Unique No."),
                                                                             "Cost Type" = FILTER(Material)));
            Caption = 'Material Charge %';
            FieldClass = FlowField;
        }
        field(5292673; "Ext. Charge %"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line Budget"."Extra Charge %" WHERE("Job No." = FIELD("Job No."),
                                                                             "Node No." = FIELD("Unique No."),
                                                                             "Cost Type" = FILTER("External Service")));
            Caption = 'Ext. Service Charge %';
            FieldClass = FlowField;
        }
        field(5292677; "Allocation Status"; Option)
        {
            Caption = 'Allocation Status';
            Editable = false;
            OptionCaption = ' ,None,Partially,Complete';
            OptionMembers = " ","None",Partially,Complete;
        }
        field(5292678; "Unit of Measure Code (Base)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Base)';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Service)) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(5292684; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            Editable = false;
            OptionCaption = ' ,Wages,Material,External Service,Equipment,Other';
            OptionMembers = " ",Wages,Material,"External Service",Equipment,Other;
        }
        field(5292685; "Amendment Type"; Option)
        {
            Caption = 'Amendment Type';
            OptionCaption = ' ,Amendment,Increase,Decrease';
            OptionMembers = " ",Amendment,Increase,Decrease;
        }
        field(5292700; "BoQ Summary"; Option)
        {
            Caption = 'Type of Structure (PaC)';
            OptionCaption = ' ,Cost Type,Calculation Group,Material Demand,Component Group';
            OptionMembers = " ",Headline,"Calculation Group","Material Demand","Component Group";
        }
        field(5292701; "Component Group Set-ID"; Code[55])
        {
            Caption = 'Component Group Set-ID';
        }
        field(5292705; "Assigned PaC Job No."; Code[20])
        {
            Caption = 'Assigned PaC Job No.';
        }
        field(5292710; "PQM exists"; Boolean)
        {
            CalcFormula = Exist("PQM - Line" WHERE("Source Type" = FILTER(5292344),
                                                    "Source ID" = FIELD("Job No."),
                                                    "Source Ref. No." = FIELD("Unique No.")));
            Caption = 'Purchase Quote Manager';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292720; "Assigned Giving Away Units"; Code[150])
        {
            Caption = 'Assigned Giving Away Units';
        }
    }

    keys
    {
        key(Key1; "Job No.", "Unique No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Outline No.", "Summarize Position")
        {
            SumIndexFields = "Total Direct Cost Budget (LCY)", "Total Cost Budget (LCY)", "Sales Line Amount Budget (LCY)", "Rollup Total Direct Cost (LCY)", "Rollup Total Cost (LCY)", "Rollup Total Line Amount (LCY)";
        }
        key(Key3; "Job No.", "Outline Level", "Outline No.", "Summarize Position", "BoQ Position Type")
        {
            SumIndexFields = "Quantity (Base)", "Rollup Quantity (Base)", "Rollup Total Direct Cost (LCY)", "Rollup Total Cost (LCY)", "Rollup Total Line Amount (LCY)";
        }
        key(Key4; "Job No.", "Outline Level", "Outline No.", "Line Type", "Summarize Position", "BoQ Position Type")
        {
            SumIndexFields = "Total Dir. Cost Rel. RU (LCY)", "Rollup Total DCost Rel. (LCY)", "Total Dir.Cost Usage RU (LCY)", "Total Cost Usage RU (LCY)", "Total Price Posted RU (LCY)", "Rollup Total DCost Usage (LCY)", "Rollup Total Cost Usage (LCY)", "Rollup Total Price Inv. (LCY)", "Realized % (Amount LCY)";
        }
        key(Key5; "Job No.", "Line Type", "Outline No.")
        {
        }
        key(Key6; "Job No.", WBS)
        {
        }
        key(Key7; "Job No.", "Sales View", "Outline No.", "BoQ Position Type")
        {
            SumIndexFields = "Realized % (Amount LCY)";
        }
        key(Key8; "Job No.", Milestone, "Outline No.")
        {
        }
        key(Key9; "Job No.", Type, "No.", "Summarize Position", Summary)
        {
        }
        key(Key10; "Job No.", "Node No.")
        {
        }
        key(Key11; "Job No.", "WIP View", "Activatable WIP", "Outline No.")
        {
            SumIndexFields = "Realized % (Amount LCY)";
        }
        key(Key12; "Job No.", "Calculation Group")
        {
        }
        key(Key13; Description)
        {
        }
        key(Key14; "BoQ Pos. No.")
        {
        }
        key(Key15; "Job No.", "Node No.", "Cost Type")
        {
            SumIndexFields = Quantity, "Quantity per", "Direct Unit Cost", "Direct Unit Cost (LCY)", "Unit Cost (LCY)", "Total Direct Cost Budget (LCY)", "Total Cost Budget (LCY)", "Indirect Cost %", "Extra Charge %", "Unit Price (LCY)", "Total Price Budget (LCY)";
        }
        key(Key16; "Job No.", "Outline No.", "Summarize Position", "BoQ Position Type", "Calculation Status")
        {
            SumIndexFields = "Total Direct Cost Budget (LCY)", "Total Cost Budget (LCY)", "Sales Line Amount Budget (LCY)", "Rollup Total Direct Cost (LCY)", "Rollup Total Cost (LCY)", "Rollup Total Line Amount (LCY)", "Total Price Budget (LCY)";
        }
        key(Key17; "Job No.", "Outline No.", "Cost Type", "Calculation Group", Summary)
        {
            SumIndexFields = "Total Cost Budget (LCY)", "Total Price Budget (LCY)", "Profit Amount Budget (LCY)", "Profit %", "Total Direct Cost Budget (LCY)", "Sales Line Amount Budget (LCY)";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "BoQ Pos. No.", Description, "Unique No.")
        {
        }
    }
}

