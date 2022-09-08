table 5012426 "Prod. Order Comp. Ingredient"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T101 02.04.14 DEMS.IST
    //   Ingredients Redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Order Component Ingredient';

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
        }
        field(30; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status = FIELD ("Prod. Order Status"),
                                                                 "Prod. Order No." = FIELD ("Prod. Order No."));
        }
        field(40; "Prod. Order Component Line No."; Integer)
        {
            Caption = 'Prod. Order Component Line No.';
            TableRelation = "Prod. Order Component"."Line No." WHERE (Status = FIELD ("Prod. Order Status"),
                                                                      "Prod. Order No." = FIELD ("Prod. Order No."),
                                                                      "Prod. Order Line No." = FIELD ("Prod. Order Line No."));
        }
        field(45; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item."No.";
        }
        field(47; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(50; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
            TableRelation = Ingredient;
        }
        field(60; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(70; "Description 2"; Text[30])
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
        field(120; "Captured Quantity (Ratio)"; Decimal)
        {
            Caption = 'Captured Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(130; "Captured Quantity (Total)"; Decimal)
        {
            Caption = 'Captured Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(140; "Posted Quantity (Ratio)"; Decimal)
        {
            Caption = 'Posted Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(150; "Posted Quantity (Total)"; Decimal)
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
        field(300; Origin; Option)
        {
            Caption = 'Origin';
            Description = '#PMW16.00.03:T502';
            Editable = false;
            OptionCaption = 'Manual,BOM,Item Tracking,Item Ledger Entry';
            OptionMembers = Manual,BOM,"Item Tracking","Item Ledger Entry";
        }
        field(310; "Contains Expected Values"; Boolean)
        {
            Caption = 'Contains Expected Values';
            Editable = false;
        }
        field(320; "Ignore in Calculation"; Boolean)
        {
            Caption = 'Ignore in Calculation';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Prod. Order Status", "Prod. Order No.", "Prod. Order Line No.", "Prod. Order Component Line No.", "Ingredient No.")
        {
            Clustered = true;
        }
        key(Key2; "Prod. Order Status", "Prod. Order No.", "Prod. Order Line No.", "Ingredient No.")
        {
            SumIndexFields = "Expected Quantity (Total)";
        }
    }

    fieldgroups
    {
    }
}

