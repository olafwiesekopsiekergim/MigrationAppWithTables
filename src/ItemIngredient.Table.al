table 5012403 "Item Ingredient"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR Management of Active Ingredients
    // 
    // #PMW16.00.02.04:T505 11.02.11 DEMSR.BKR
    //   Smaller Corrections
    //   Changed DecimalPlaces To 0:5
    // 
    // #PMW17.00:T502 10.01.13 DEMSR.IST
    //   Wrong relation for Variant Code corrected
    // 
    // #PMW17.10.00.02:T101 15.04.2014 DEMSR.IST
    //   Ingredient redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Ingredient';
    DataCaptionFields = "Item No.";

    fields
    {
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(20; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(30; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
            TableRelation = Ingredient;
        }
        field(40; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(50; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(60; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(70; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(71; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(80; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(81; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Ingredient No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

