table 5012420 "Prod. Structure Header Ingred."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T101 04.04.14 DEMSR.LV
    //   Redesign Ingredients
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Production Structure Header Ingredient';

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Production Structure Header";
        }
        field(12; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(15; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item."No.";
        }
        field(17; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(20; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            TableRelation = Ingredient;
        }
        field(30; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(40; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(50; "Quantity (Expected)"; Decimal)
        {
            Caption = 'Quantity (Expected)';
            DecimalPlaces = 0 : 5;
        }
        field(60; "Quantity (Calc.)"; Decimal)
        {
            Caption = 'Quantity (Calc.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
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
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            IF ("Item No." = FILTER ('')) "Unit of Measure".Code;
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
        key(Key1; "Document No.", "Starting Date", "Ingredient No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

