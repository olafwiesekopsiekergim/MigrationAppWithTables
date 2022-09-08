table 5012423 "Prod. BOM Line Ingred."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR
    //   Management of Active Ingredients
    //   Object created
    // 
    // #PMW16.00.02.04:T500 04.02.11 DEMSR.BKR
    //   Correction Qty. Calculation Of Ingredients
    //   Renamed "Quantity (Debit)" to "Quantity (Calc.)"
    // 
    // #PMW16.00.02.04:T505 11.02.11 DEMSR.BKR
    //   Smaller Corrections
    //   Changed DecimalPlaces To 0:5
    // 
    // #PMW16.00.03:T502 25.07.11 DEMSR.BKR
    //   Create Prod. Structures with ingredients without items
    //   New Field Origin
    // 
    // #PMW17.10.00.02:T101 15.04.2014 DEMSR.IST
    //   Ingredient redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Production BOM Line Ingredient';

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Production BOM Header";
        }
        field(20; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
        }
        field(30; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "Production BOM Line"."Line No." WHERE ("Production BOM No." = FIELD ("Document No."),
                                                                    "Version Code" = FIELD ("Version Code"));
        }
        field(35; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(37; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(40; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            TableRelation = Ingredient;
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
        field(65; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(70; "Quantity (Calc.)"; Decimal)
        {
            Caption = 'Quantity (Calc.)';
            DecimalPlaces = 0 : 5;
        }
        field(80; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(81; "Qty. Per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. Per Unit of Measure';
        }
        field(85; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(86; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
        }
        field(90; Origin; Option)
        {
            Caption = 'Origin';
            Description = '#PMW16.00.03:T502';
            OptionCaption = 'Manual,Item';
            OptionMembers = Manual,Item;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Version Code", "Line No.", "Ingredient No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

