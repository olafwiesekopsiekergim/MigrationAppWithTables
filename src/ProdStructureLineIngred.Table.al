table 5012421 "Prod. Structure Line Ingred."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T101 04.04.14 DEMSR.LV
    //   Redesign Ingredients
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Production Structure Line Ingredient';

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Production Structure Header";
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "Production Structure Line"."Line No." WHERE ("Document No." = FIELD ("Document No."));
        }
        field(25; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item."No.";
        }
        field(27; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
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
        field(51; Quantity; Decimal)
        {
            Caption = 'Quantity';
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
        field(75; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            IF ("Item No." = FILTER ('')) "Unit of Measure".Code;
        }
        field(76; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(80; Origin; Option)
        {
            Caption = 'Origin';
            Description = '#PMW16.00.03:T502';
            Editable = false;
            OptionCaption = 'Manual,Item';
            OptionMembers = Manual,Item;
        }
        field(90; "Ignore in Calculation"; Boolean)
        {
            Caption = 'Ignore in Calculation';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.", "Ingredient No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Ingredient No.")
        {
            SumIndexFields = "Quantity (Calc.)";
        }
    }

    fieldgroups
    {
    }
}

