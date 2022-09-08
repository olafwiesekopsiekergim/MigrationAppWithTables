table 5292348 "PR - Job Line Procurement"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        CaptionML(ENU/DEU) of Field "Main Job No." renamed from
    //                                          - "Main Job No." to
    //                                          - "Project No."
    // 
    // PR01 PRODUKT.01:P8021 09.04.15 DENUE.SKOL Code added in OnInsert and OnModify
    // #PRW18.00.06:T504 05.08.15 DENUE.SKOL: Code changed for "Description 2"

    Caption = 'Job Line Procurement';

    fields
    {
        field(1; "Procurement No."; Code[20])
        {
            Caption = 'Procurement No.';
            Description = 'ne';
            Editable = false;
            NotBlank = true;
        }
        field(10; "Procurement Outline No."; Code[160])
        {
            Caption = 'Procurement Outline No.';
            Description = 'ne';
            Editable = false;
        }
        field(11; "Procurement Outline Level"; Integer)
        {
            Caption = 'Procurement Outline Level';
            Description = 'ne';
            Editable = false;
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
        field(63; "Comment Detailed Concept"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292348),
                                                               Code1 = FIELD ("Procurement No."),
                                                               Type = CONST ("Detailed Concept")));
            Caption = 'Comment Detailed Concept';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66; "Comment Procurement"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292348),
                                                               Code1 = FIELD ("Procurement No."),
                                                               Type = CONST (Purchase)));
            Caption = 'Comment Procurement';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(91; Source; Option)
        {
            Caption = 'Source';
            Description = ' ,Budget,Package,Procurement';
            OptionCaption = ' ,Budget,Package,Procurement';
            OptionMembers = " ",Budget,Package,Procurement;
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
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
            Description = ' ,,,Supplement,,Increase';
            FieldClass = FlowFilter;
            OptionCaption = ' ,,,Supplement,,Increase';
            OptionMembers = " ",Optional,Alternative,Supplement,Modification,Increase;
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,Service,Item,General,Traveling';
            OptionCaption = ' ,Service,Item,General,Traveling';
            OptionMembers = " ",Service,Item,General,Traveling;
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
            IF (Type = CONST (General)) "PR - General Component";
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
        field(1300; "Travel Code"; Code[10])
        {
            Caption = 'Travel Code';
            Description = 'TR Job Travel Code';
            TableRelation = "PR - Job Travel Code".Code WHERE (Module = CONST (Job),
                                                               "Module No." = FIELD ("Job No."));
        }
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(2001; "Manual Pricing"; Option)
        {
            Caption = 'Manual Pricing';
            Description = ' ,Direct Unit Cost';
            OptionCaption = ' ,Direct Unit Cost';
            OptionMembers = " ","Direct Unit Cost";
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
            IF (Type = CONST (Traveling)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."));
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
        field(2220; "Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost (LCY)';
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
        field(2320; "Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(3000; "-- Schedule"; Integer)
        {
            Caption = '-- Expectation';
            Enabled = false;
        }
        field(3020; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            TableRelation = Resource;
        }
        field(3021; "Person Group No."; Code[20])
        {
            Caption = 'Person Group No.';
            TableRelation = "Resource Group";
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4020; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
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
        field(5013; "Job Order No."; Code[20])
        {
            Caption = 'Job Order No.';
            Description = 'TR "Job Order"';
            TableRelation = Job;
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
        field(5031; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(5050; "Procurement Location Code"; Code[10])
        {
            Caption = 'Procurement Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(5051; "Procurement Bin Code"; Code[20])
        {
            Caption = 'Procurement Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Procurement Location Code"));
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
        field(5090; "Procurement Status"; Option)
        {
            Caption = 'Procurement Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(5110; "Purchase Quote"; Boolean)
        {
            CalcFormula = Exist ("Purchase Line" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                       "Document Type" = CONST (Quote)));
            Caption = 'Purchase Quote';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5111; "Purchase Order"; Boolean)
        {
            CalcFormula = Exist ("Purchase Line" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                       "Document Type" = CONST (Order)));
            Caption = 'Purchase Order';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5113; "Purchase Credit Memo"; Boolean)
        {
            CalcFormula = Exist ("Purchase Line" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                       "Document Type" = CONST ("Credit Memo")));
            Caption = 'Purchase Credit Memo';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5115; "Purchase Return Order"; Boolean)
        {
            CalcFormula = Exist ("Purchase Line" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                       "Document Type" = CONST ("Return Order")));
            Caption = 'Purchase Return Order';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5120; "Requisition Line"; Boolean)
        {
            CalcFormula = Exist ("Requisition Line" WHERE ("Job Procurement No." = FIELD ("Procurement No.")));
            Caption = 'Requisition Line';
            Description = 'LU Requisition Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5130; "Inventory Request"; Boolean)
        {
            CalcFormula = Exist ("Job Journal Line" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                          "Source Channel" = CONST ("Inventory Request")));
            Caption = 'Inventory Request';
            Description = 'LU Job Journal Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5140; "Production Order"; Boolean)
        {
            CalcFormula = Exist ("Production Order" WHERE ("Job Procurement No." = FIELD ("Procurement No.")));
            Caption = 'Production Order';
            Description = 'LU Production Order';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5150; "Service Order"; Boolean)
        {
            CalcFormula = Exist ("Service Header" WHERE ("Job Procurement No." = FIELD ("Procurement No.")));
            Caption = 'Service Order';
            Description = 'LU Service Order';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5151; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item";
        }
        field(5410; "Total Direct Cost Proc. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost Proc. (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5411; "Procurement Internal (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Job Journal Line"."Total Direct Cost Proc. (LCY)" WHERE ("Job Procurement No." = FIELD ("Procurement No.")));
            Caption = 'Procurement Internal (LCY)';
            Description = 'CF Job Line Processing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5412; "Total Dir.Cost Rem. PO (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Purchase Line"."Total Dir.Cost Rem. PO (LCY)" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                                                    "Expected Receipt Date" = FIELD ("Date Filter"),
                                                                                    "Special Position" = FIELD ("Special Position Filter")));
            Caption = 'Total Dir.Cost Rem. PO (LCY)';
            Description = 'CF Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5530; "Procurement Hours"; Decimal)
        {
            Caption = 'Procurement Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
        }
        field(5531; "Job Journal Hours"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Processing Hours" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                                           "Entry Type" = CONST (Usage)));
            Caption = 'Job Journal Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5550; "Promised Receipt Date"; Date)
        {
            CalcFormula = Lookup ("Purchase Line"."Promised Receipt Date" WHERE ("Document Type" = FILTER (Order),
                                                                                "Job Procurement No." = FIELD ("Procurement No.")));
            Caption = 'Promised Receipt Date';
            Description = 'LU Purchase Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6000; "-- Usage"; Integer)
        {
            Caption = '-- Usage';
            Enabled = false;
        }
        field(6320; "Total Dir.Cost Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Job Ledger Entry"."Total Direct Cost (LCY)" WHERE ("Job No." = FIELD ("Job No."),
                                                                                  "Job Procurement No." = FIELD ("Procurement No."),
                                                                                  "Entry Type" = CONST (Usage),
                                                                                  "Posting Date" = FIELD ("Date Filter"),
                                                                                  "Special Position" = FIELD ("Special Position Filter")));
            Caption = 'Total Dir.Cost Usage (LCY)';
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6531; "Posted Hours"; Decimal)
        {
            CalcFormula = Sum ("Job Ledger Entry"."Processing Hours" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                                           "Entry Type" = CONST (Usage)));
            Caption = 'Posted Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8000; "-- Sale"; Integer)
        {
            Caption = '-- Sale';
            Enabled = false;
        }
        field(8100; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,,,Supplement,,Increase,Reclamation';
            OptionCaption = ' ,,,Supplement,,Increase,Reclamation';
            OptionMembers = " ",,,Supplement,,Increase,Reclamation;
        }
        field(11000; "-- Liquidity"; Integer)
        {
            Caption = '-- Liquidity';
            Enabled = false;
        }
        field(11210; "TDC Liquidity Schedule (LCY)"; Decimal)
        {
            CalcFormula = Sum ("PR - Job Line Liquidity Entry"."Total Direct Cost (LCY)" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                                                               Date = FIELD ("Date Filter"),
                                                                                               "Liquidity Type" = CONST (Schedule)));
            Caption = 'TDC Liquidity Schedule (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11220; "TDC Liquidity Request (LCY)"; Decimal)
        {
            CalcFormula = Sum ("PR - Job Line Liquidity Entry"."Total Direct Cost (LCY)" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                                                               Date = FIELD ("Date Filter"),
                                                                                               "Liquidity Type" = CONST (Request)));
            Caption = 'TDC Liquidity Request (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11230; "TDC Liquidity Payment (LCY)"; Decimal)
        {
            CalcFormula = Sum ("PR - Job Line Liquidity Entry"."Total Direct Cost (LCY)" WHERE ("Job Procurement No." = FIELD ("Procurement No."),
                                                                                               Date = FIELD ("Date Filter"),
                                                                                               "Liquidity Type" = CONST (Payment)));
            Caption = 'TDC Liquidity Payment (LCY)';
            Description = 'CF Job Line Liqidity Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292332; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292333; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292334; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
        }
        field(5292335; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292336; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292337; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(5292338; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292339; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292340; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292341; "Sales Position Unique No."; Integer)
        {
            Caption = 'Sales Position Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Sales Position Unique No."));
        }
        field(5292342; "Job Process No."; Code[20])
        {
            Caption = 'Job Process No.';
            Description = 'TR "Job Line Process"';
            TableRelation = "PRPL - Job Line Process";
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Project No.';
            TableRelation = Job;
        }
        field(5292650; "Inventory Proc. Location Code"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("No."),
                                                                  "Location Code" = FIELD ("Procurement Location Code")));
            Caption = 'Inventory in Location';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292651; "Inventory Total"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("No.")));
            Caption = 'Inventory Total';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292751; "WIP Job No."; Code[20])
        {
            Caption = 'WIP Job No.';
            TableRelation = Job;
        }
        field(5292752; "WIP Position No."; Integer)
        {
            Caption = 'WIP Position No.';
        }
    }

    keys
    {
        key(Key1; "Procurement No.")
        {
            Clustered = true;
        }
        key(Key2; "Procurement Outline No.", "Procurement Status", "Procurement Channel")
        {
        }
        key(Key3; "Procurement Outline No.", "Procurement No.", "Procurement Channel")
        {
        }
        key(Key4; "Job No.", "Job Line Unique No.", "Procurement Finish Date", "Special Position")
        {
            SumIndexFields = "Total Direct Cost (LCY)", "Total Cost (LCY)";
        }
        key(Key5; "Job No.", "Job Line Unique No.", "Procurement Status", "Procurement Channel", "Procurement Finish Date", "Special Position")
        {
            SumIndexFields = "Total Direct Cost (LCY)", "Total Cost (LCY)";
        }
        key(Key6; "Procurement Vendor No.", "Procurement Outline No.")
        {
        }
        key(Key7; "Job No.", "Procurement Status", "Procurement Channel", "Person Responsible", "Job Line Unique No.")
        {
        }
        key(Key8; "Job No.", Type, "No.", "Procurement Location Code")
        {
        }
        key(Key9; "Person Responsible", "Procurement Status", "Procurement Channel", "Procurement Finish Date")
        {
        }
        key(Key10; "Person Responsible", "Procurement Status", "Procurement Channel", "Procurement Start Date")
        {
        }
        key(Key11; "Job No.", "Sales Position Unique No.", "Procurement Finish Date", "Special Position")
        {
            SumIndexFields = "Total Direct Cost (LCY)", "Total Cost (LCY)";
        }
        key(Key12; "Job No.", "Sales Position Unique No.", "Procurement Start Date", "Procurement Status", "Special Position")
        {
            SumIndexFields = "Total Direct Cost (LCY)", "Total Cost (LCY)";
        }
        key(Key13; "Job Order No.", "Procurement Outline No.")
        {
        }
        key(Key14; "WIP Job No.", "WIP Position No.", "Procurement Start Date", "Procurement Status", "Special Position")
        {
            SumIndexFields = "Total Direct Cost (LCY)", "Total Cost (LCY)";
        }
    }

    fieldgroups
    {
    }
}

