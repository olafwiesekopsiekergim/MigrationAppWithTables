table 5292350 "PR - Job Line Invoicing"
{
    Caption = 'Job Line Invoicing';
    Permissions = TableData "Job Ledger Entry" = m;

    fields
    {
        field(1; "Invoicing No."; Code[20])
        {
            Caption = 'Invoicing';
            Description = 'ne';
            Editable = false;
            NotBlank = true;
        }
        field(10; "Invoicing Outline No."; Code[160])
        {
            Caption = 'Invoicing Outline No.';
            Description = 'ne';
            Editable = false;
        }
        field(11; "Invoicing Outline Level"; Integer)
        {
            Caption = 'Invoicing Outline Level';
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
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = 'Resource,Item,G/L Account';
            OptionCaption = 'Resource,Item,G/L Account';
            OptionMembers = Resource,Item,"G/L Account";
        }
        field(1011; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
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
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
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
            TableRelation = IF (Type = CONST (Resource)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST ("G/L Account")) "Unit of Measure";
        }
        field(2051; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
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
        field(2520; "Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2530; "Sales Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Amount (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(2610; "Sales Currency Code"; Code[10])
        {
            Caption = 'Sales Currency Code';
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
        field(8100; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,,,Supplement,,Increase';
            OptionCaption = ' ,,,Supplement,,Increase';
            OptionMembers = " ",,,Supplement,,Increase;
        }
        field(9000; "-- Invoicing"; Integer)
        {
            Caption = '-- Invoicing';
            Enabled = false;
        }
        field(9010; "Sales Channel"; Option)
        {
            Caption = 'Sales Channel';
            Description = ' ,Fixed Price,Usage,Realized %,Performance';
            Editable = false;
            OptionCaption = ' ,Fixed Price,Usage,Realized %,Performance';
            OptionMembers = " ","Fixed Price",Usage,"Realized %",Performance;
        }
        field(9019; "Invoicing Posting Date"; Date)
        {
            Caption = 'Invoicing Posting Date';
        }
        field(9090; "Invoicing Status"; Option)
        {
            Caption = 'Invoicing Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(9110; "Invoice Type"; Option)
        {
            Caption = 'Invoice Type';
            Editable = false;
            OptionCaption = ' ,Invoice,Credit Memo,Posted Invoice,Posted Credit Memo';
            OptionMembers = " ",Invoice,"Credit Memo","Posted Invoice","Posted Credit Memo";
        }
        field(9111; "Invoice No."; Code[20])
        {
            Caption = 'Invoice No.';
            Editable = false;
            TableRelation = IF ("Invoice Type" = CONST (Invoice),
                                "Invoice Type" = CONST ("Credit Memo")) "Sales Invoice Header"
            ELSE
            IF ("Invoice Type" = CONST ("Credit Memo")) "Sales Cr.Memo Header";
        }
        field(9112; "Invoice Line No."; Integer)
        {
            Caption = 'Invoice Line No.';
        }
        field(9140; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(9150; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
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
        field(5292342; "Job Ledger Entry No."; Integer)
        {
            Caption = 'Job Ledger Entry No.';
            Description = 'TR Job Ledger Entry';
            Editable = false;
            TableRelation = "Job Ledger Entry";
        }
    }

    keys
    {
        key(Key1; "Invoicing No.")
        {
            Clustered = true;
        }
        key(Key2; "Invoicing Outline No.", "Job Line Unique No.", "Invoicing Status")
        {
        }
        key(Key3; "Invoicing Outline No.", "Sales Position Unique No.", "Invoicing Status")
        {
        }
        key(Key4; "Job No.", "Job Line Unique No.", "Invoicing Status", "Invoicing Posting Date")
        {
            SumIndexFields = "Quantity (Base)", "Sales Line Amount (LCY)";
        }
        key(Key5; "Job No.", "Sales Position Unique No.", "Invoicing Status", "Invoicing Posting Date")
        {
            SumIndexFields = "Quantity (Base)", "Sales Line Amount (LCY)";
        }
        key(Key6; "Job No.", "Sales Position Unique No.", "Invoicing Status", "Invoicing Outline No.")
        {
            SumIndexFields = "Quantity (Base)", "Sales Line Amount (LCY)";
        }
        key(Key7; "Job No.", "Invoicing Status", "Sales Channel", "Person Responsible", "Job Line Unique No.")
        {
        }
        key(Key8; "Invoice Type", "Invoice No.", "Invoice Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

