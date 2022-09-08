table 5292341 "PR - General Component"
{
    // PR01 PRODUKT.01:P8022 16.04.15 DENUE.SKOL BoM for General Components
    //                                           New Field
    //                                           - 5292356 BoM Item No.

    Caption = 'General Component';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(12; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(18; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            Description = 'TR "Unit of Measure"';
            TableRelation = "Unit of Measure";
        }
        field(19; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            MinValue = 0;
        }
        field(20; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 2 : 2;
        }
        field(21; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            MinValue = 0;
        }
        field(22; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
            DecimalPlaces = 0 : 5;
        }
        field(23; "Price/Profit Calculation"; Option)
        {
            Caption = 'Price/Profit Calculation';
            OptionCaption = 'Profit=Price-Cost,Price=Cost+Profit,No Relationship';
            OptionMembers = "Profit=Price-Cost","Price=Cost+Profit","No Relationship";
        }
        field(24; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(26; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(38; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(500; "Gen. Prod. Post. Group"; Code[10])
        {
            Caption = 'Gen. Prod. Post. Group';
            Description = 'TR "Gen. Product Posting Group"';
            TableRelation = "Gen. Product Posting Group";
        }
        field(501; "VAT Prod. Post. Group"; Code[10])
        {
            Caption = 'VAT Prod. Post. Group';
            Description = 'TR "VAT Product Posting Group"';
            TableRelation = "VAT Product Posting Group";
        }
        field(1000; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            Description = 'TR "Dimension Value".Code WHERE (Global Dimension No.=CONST(1))';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(1001; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            Description = 'TR "Dimension Value".Code WHERE (Global Dimension No.=CONST(2))';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(3000; "Job No. Filter"; Code[20])
        {
            Caption = 'Job No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(5292332; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            Description = 'TR Vendor';
            TableRelation = Vendor;
        }
        field(5292333; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292341),
                                                               Code1 = FIELD (Code)));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292334; "Job Calculation Group"; Code[10])
        {
            Caption = 'Job Calculation Group';
            Description = 'TR "Job Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(5292335; "Manual Pricing"; Option)
        {
            Caption = 'Manual Pricing';
            Description = ' ,Direct Unit Cost,Unit Price,Both';
            OptionCaption = ' ,Direct Unit Cost,Unit Price,Both';
            OptionMembers = " ","Direct Unit Cost","Unit Price",Both;
        }
        field(5292336; Milestone; Boolean)
        {
            Caption = 'Milestone';
        }
        field(5292337; "Procurement Cost Source"; Option)
        {
            Caption = 'Procurement Cost Source';
            Description = ' ,Standard Costs,Job Line,Procurement Line';
            OptionCaption = ' ,Standard Costs,Job Line,Procurement Line';
            OptionMembers = " ","Standard Costs","Job Line","Procurement Line";
        }
        field(5292338; "Procurement Channel"; Option)
        {
            Caption = 'Procurement Channel';
            Description = ' ,...,Time Entry,Quote,Requisition,Order,Inventory Request,Production Order,Service Order';
            OptionCaption = ' ,...,Time Entry,Quote,Requisition,Order,Inventory Request,Production Order,Service Order';
            OptionMembers = " ","...","Time Entry",Quote,Requisition,"Order","Inventory Request","Production Order","Service Order";
        }
        field(5292339; "Procurement Info Line"; Boolean)
        {
            Caption = 'Procurement Info Line';
        }
        field(5292340; "Shipment Channel"; Option)
        {
            Caption = 'Shipment Channel';
            Description = ' ,...,Structure Position,Job Line,Posted Item';
            OptionCaption = ' ,...,Structure Position,Job Line,Posted Item';
            OptionMembers = " ","...","Structure Position","Job Line","Posted Item";
        }
        field(5292341; "Realized % (Base)"; Option)
        {
            Caption = 'Realized % (Base)';
            Description = ' ,Quantity,Cost';
            OptionCaption = ' ,Quantity,Cost';
            OptionMembers = " ",Quantity,Cost;
        }
        field(5292342; "Component Type"; Code[10])
        {
            Caption = 'Component Type';
            Description = 'TR "Component Type"';
            TableRelation = "PR - Component Type";
        }
        field(5292343; "Component Group 1 No."; Integer)
        {
            Caption = 'Component Group 1 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292344; "Component Group 2 No."; Integer)
        {
            Caption = 'Component Group 2 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292345; "Component Group 3 No."; Integer)
        {
            Caption = 'Component Group 3 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292346; "Component Group 4 No."; Integer)
        {
            Caption = 'Component Group 4 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292347; "Component Group 5 No."; Integer)
        {
            Caption = 'Component Group 5 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292348; "Component Group 1 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 1 No.")));
            Caption = 'Component Group 1 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292349; "Component Group 2 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 2 No.")));
            Caption = 'Component Group 2 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292350; "Component Group 3 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 3 No.")));
            Caption = 'Component Group 3 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292351; "Component Group 4 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 4 No.")));
            Caption = 'Component Group 4 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292352; "Component Group 5 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 5 No.")));
            Caption = 'Component Group 5 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292353; "Procurement by Job Order"; Boolean)
        {
            Caption = 'Procurement by Job Order';
        }
        field(5292354; "Process Channel"; Option)
        {
            Caption = 'Process Channel';
            Description = ' ,Work,Lead time,Structure';
            OptionCaption = ' ,Work,Lead time,Structure';
            OptionMembers = " ",Work,"Lead time",Structure;
        }
        field(5292355; "WIP Component"; Boolean)
        {
            Caption = 'WIP Component';
        }
        field(5292356; "BoM Item No."; Code[20])
        {
            Caption = 'BoM Item No.';
            TableRelation = Item;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Component Group 1 No.", "Component Group 2 No.", "Component Group 3 No.", "Component Group 4 No.", "Component Group 5 No.")
        {
        }
        key(Key3; "Component Type")
        {
        }
    }

    fieldgroups
    {
    }
}

