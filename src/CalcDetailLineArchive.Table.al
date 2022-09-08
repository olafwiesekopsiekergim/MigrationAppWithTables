table 5012665 "Calc. Detail Line Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW17.00:302 13.08.12 DEMSR.KHS
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.00.00.01:T504 17.04.13 DEMSR.IST
    //   New field 5012400 "Production Structure No." added
    //   New field 5012401 "Recipe Weight" added
    //   New field 5012402 "Item Type" added
    //   New field 5012403 "Share %" added
    //   New field 5012404 Shares added

    Caption = 'Calc. Detail Line Archive';

    fields
    {
        field(1; "Calculation No."; Code[20])
        {
            Caption = 'Calculation No.';
            NotBlank = true;
            TableRelation = "Calculation Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Material Cost,Capacity Cost,Overhead,Headerline,Total Cost Material,Total Cost Capacity,Total Cost Production';
            OptionMembers = " ","Material Cost","Capacity Cost",Overhead,Headerline,"Total Cost Material","Total Cost Capacity","Total Cost Production";
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Work Center,Machine Center';
            OptionMembers = " ",Item,"Work Center","Machine Center";
        }
        field(5; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item."No."
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"."No."
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center"."No.";
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(7; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            TableRelation = IF (Type = CONST (Item)) "Calculation Group".Code WHERE (Type = CONST (Item))
            ELSE
            IF (Type = CONST ("Work Center")) "Calculation Group".Code WHERE (Type = CONST (Capacity))
            ELSE
            IF (Type = CONST ("Machine Center")) "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(11; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(12; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(13; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header"."No." WHERE (Status = CONST (Certified));
        }
        field(14; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(15; "Low-Level Code"; Integer)
        {
            Caption = 'Low-Level Code';
            Editable = false;
        }
        field(20; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(21; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST ("Work Center")) "Capacity Unit of Measure"
            ELSE
            IF (Type = CONST ("Machine Center")) "Capacity Unit of Measure";
        }
        field(22; "Qty. per Unit of Measure"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(23; "Lot Size"; Decimal)
        {
            BlankZero = true;
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(24; "Net Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
        }
        field(31; "Quantity per"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(32; Quantity; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(40; "Setup Time"; Decimal)
        {
            BlankZero = true;
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(41; "Run Time"; Decimal)
        {
            BlankZero = true;
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(42; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(43; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(50; "Required Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Required Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(51; "Required Quantity (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Required Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(60; Subcontracting; Boolean)
        {
            Caption = 'Subcontracting';
            Editable = false;
        }
        field(100; "Direct Cost"; Decimal)
        {
            Caption = 'Direct Cost';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(101; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(102; "Overhead Rate"; Decimal)
        {
            Caption = 'Overhead Rate';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(103; "Unit Cost"; Decimal)
        {
            BlankZero = true;
            Caption = 'Unit Cost';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(105; "Unit Amount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Unit Amount';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(200; "Calculation Header Lot Size"; Decimal)
        {
            Caption = 'Calculation Header Lot Size';
            Editable = false;
        }
        field(201; "Calculation Header Calc. Date"; Date)
        {
            Caption = 'Calculation Header Calc. Date';
            Editable = false;
        }
        field(210; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            Editable = false;
            TableRelation = Vendor;
        }
        field(211; "Price Calc. Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            Editable = false;
        }
        field(212; "Price Calc. Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(213; "Price Calc. Currency Code"; Code[10])
        {
            Caption = 'Price Calc. Currency Code';
            TableRelation = Currency;
        }
        field(214; "Price Calc. Currency Factor"; Decimal)
        {
            Caption = 'Price Calc. Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(300; "Calculation Line No."; Integer)
        {
            Caption = 'Calculation Line No.';
        }
        field(1000; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
        }
        field(1001; "Control Level"; Integer)
        {
            Caption = 'Control Level';
        }
        field(1002; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
        }
        field(1003; Unfolded; Boolean)
        {
            Caption = 'Unfolded';
        }
        field(1004; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
        }
        field(5047; "Reference Version No."; Integer)
        {
            Caption = 'Reference Version No.';
        }
        field(5048; "Ref. Doc. No. Occurrence"; Integer)
        {
            Caption = 'Ref. Doc. No. Occurrence';
        }
        field(5012400; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            TableRelation = "Production Structure Header"."No.";
        }
        field(5012401; "Recipe Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Recipe Weight';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5012402; "Item Type"; Option)
        {
            Caption = 'Item Type';
            OptionCaption = ' ,Share of Recipe,Item';
            OptionMembers = " ","Share of Recipe",Item;
        }
        field(5012403; "Share %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012404; Shares; Decimal)
        {
            BlankZero = true;
            Caption = 'Shares';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Calculation No.", "Ref. Doc. No. Occurrence", "Reference Version No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

