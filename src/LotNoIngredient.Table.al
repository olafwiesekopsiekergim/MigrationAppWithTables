table 5012407 "Lot No. Ingredient"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T101 15.04.14 DEMS.IST
    //   Ingredients Redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Lot No. Ingredient';

    fields
    {
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(20; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(30; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Editable = false;
        }
        field(40; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
            TableRelation = Ingredient."No." WHERE ("No." = FIELD ("Ingredient No."));
        }
        field(50; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(60; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(70; "Quantity (Expected)"; Decimal)
        {
            Caption = 'Quantity (Expected)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(80; "Quantity (Actual)"; Decimal)
        {
            Caption = 'Quantity (Actual)';
            DecimalPlaces = 0 : 5;
        }
        field(90; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(91; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(100; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(101; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(110; "Actual Value"; Boolean)
        {
            Caption = 'Actual Value';
        }
        field(120; "Origin (Expected Qty.)"; Option)
        {
            Caption = 'Origin (Expected Qty.)';
            Description = '#PMW16.00.03:T502';
            Editable = false;
            OptionCaption = 'Item,Prod. Order,Manuell';
            OptionMembers = Item,"Prod. Order",Manual;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Lot No.", "Ingredient No.")
        {
            Clustered = true;
        }
        key(Key2; "Lot No.")
        {
        }
    }

    fieldgroups
    {
    }
}

