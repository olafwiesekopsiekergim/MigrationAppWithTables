table 5012424 "Prod. Order Line Ingredient"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T101 02.04.14 DEMS.IST
    //   Ingredients Redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Order Line Ingredient';

    fields
    {
        field(10; "Prod. Order Status"; Option)
        {
            Caption = 'Prod. Order Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(20; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE (Status = FIELD ("Prod. Order Status"));
            ValidateTableRelation = false;
        }
        field(30; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
        }
        field(35; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item."No.";
        }
        field(37; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(40; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
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
        field(120; "Expected Comp. Qty. (Ratio)"; Decimal)
        {
            Caption = 'Expected Comp. Qty. (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(130; "Expected Comp. Qty. (Total)"; Decimal)
        {
            Caption = 'Expected Comp. Qty. (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(140; "Captured Quantity (Ratio)"; Decimal)
        {
            Caption = 'Captured Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(150; "Captured Quantity (Total)"; Decimal)
        {
            Caption = 'Captured Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(160; "Posted Quantity (Ratio)"; Decimal)
        {
            Caption = 'Posted Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(170; "Posted Quantity (Total)"; Decimal)
        {
            Caption = 'Posted Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(200; "Unit of Measure Code (Ratio)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Ratio)';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(210; "Qty. per Unit of Meas. (Ratio)"; Decimal)
        {
            Caption = 'Qty. per Unit of Meas. (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(220; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(230; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(240; "Unit of Measure Code (Total)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Total)';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(250; "Qty. per Unit of Meas. (Total)"; Decimal)
        {
            Caption = 'Qty. per Unit of Meas. (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(300; "Captured Item Quantity (Base)"; Decimal)
        {
            Caption = 'Captured Item Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(310; "Posted Item Quantity (Base)"; Decimal)
        {
            Caption = 'Posted Item Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(320; "Contains Expected Values"; Boolean)
        {
            Caption = 'Contains Expected Values';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Prod. Order Status", "Prod. Order No.", "Prod. Order Line No.", "Ingredient No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

