table 5012560 "Recipe Search Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.01:2461:1
    //   # Object created.
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Recipe Search Line';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Production BOM';
            OptionMembers = " ",Item,"Production BOM";
        }
        field(3; "Item Type"; Option)
        {
            Caption = 'Item Type';
            OptionCaption = ' ,Share of Recipe,Item';
            OptionMembers = " ","Share of Recipe",Item;
        }
        field(4; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("Production BOM")) "Production BOM Header";
        }
        field(5; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(6; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(7; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST ("Production BOM")) "Unit of Measure";
        }
        field(10; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(11; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(12; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(20; "Share %"; Decimal)
        {
            Caption = 'Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
            MinValue = 0;
        }
        field(21; "Min. Share %"; Decimal)
        {
            Caption = 'Min. Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
            MinValue = 0;
        }
        field(22; "Max. Share %"; Decimal)
        {
            Caption = 'Max. Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

