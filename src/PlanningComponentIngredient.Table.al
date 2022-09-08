table 5012430 "Planning Component Ingredient"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T101 09.04.14 DEMS.IST
    //   Ingredients Redesign
    //   Object created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Planning Component Ingredient';

    fields
    {
        field(10; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            TableRelation = "Req. Wksh. Template";
        }
        field(20; "Worksheet Batch Name"; Code[10])
        {
            Caption = 'Worksheet Batch Name';
            TableRelation = "Requisition Wksh. Name".Name WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"));
        }
        field(30; "Worksheet Line No."; Integer)
        {
            Caption = 'Worksheet Line No.';
            TableRelation = "Requisition Line"."Line No." WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"),
                                                                 "Journal Batch Name" = FIELD ("Worksheet Batch Name"));
        }
        field(40; "Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Line No.';
        }
        field(50; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(60; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(70; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
            TableRelation = Ingredient;
        }
        field(80; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(90; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(100; "Expected Quantity (Ratio)"; Decimal)
        {
            Caption = 'Expected Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
        }
        field(110; "Expected Quantity (Total)"; Decimal)
        {
            Caption = 'Expected Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(120; "Unit of Measure Code (Ratio)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Ratio)';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(121; "Qty. per Unit of Meas. (Ratio)"; Decimal)
        {
            Caption = 'Qty. per Unit of Meas. (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(130; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(131; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
        }
        field(140; "Unit of Measure Code (Total)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Total)';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(141; "Qty. per Unit of Meas. (Total)"; Decimal)
        {
            Caption = 'Qty. per Unit of Meas. (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(150; Origin; Option)
        {
            Caption = 'Origin';
            OptionCaption = 'Manual,BOM';
            OptionMembers = Manual,BOM;
        }
    }

    keys
    {
        key(Key1; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Line No.", "Ingredient No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

