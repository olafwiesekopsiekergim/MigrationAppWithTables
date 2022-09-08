table 5012429 "Ingredient Lot Assignmt. Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.02:T104 10.04.14 DEMSR.KHS
    //   Ingredient Lot Assignment
    //   Object created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T501 01.08.14 DEMSR.KHS
    //   Qty. Picked (Base) showed the wrong qty.
    // 
    // #PMW17.10.01:T503 01.08.14 DEMSR.KHS
    //   Show Planning Levels > 0 if Line No. is filtered


    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(5; Level; Integer)
        {
            Caption = 'Level';
        }
        field(10; Status; Option)
        {
            Caption = 'Status';
            InitValue = " ";
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished, ';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished," ";
        }
        field(20; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE (Status = FIELD (Status));
        }
        field(30; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status = FIELD (Status),
                                                                 "Prod. Order No." = FIELD ("Prod. Order No."));
        }
        field(40; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; "Tracking Line No."; Integer)
        {
            Caption = 'Tracking Line No.';
        }
        field(60; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Order,Output,Component,Ingredient,Item Tracking';
            OptionMembers = "Order",Output,Component,Ingredient,"Item Tracking";
        }
        field(70; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item WHERE (Type = CONST (Inventory));
        }
        field(75; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(80; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(85; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(90; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(100; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false),
                                            "Use As Rental Location" = CONST (false),
                                            "Use As - Rented" = CONST (false));
        }
        field(110; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(120; "Due Date-Time"; DateTime)
        {
            Caption = 'Due Date-Time';
        }
        field(130; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(140; "Available Inventory Due Date"; Decimal)
        {
            BlankZero = true;
            Caption = 'Available Inventory Due Date';
        }
        field(150; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
        }
        field(155; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(160; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
        }
        field(165; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
        }
        field(170; "Quantity (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(180; Quantity; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(190; "Remaining Qty. (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Remaining Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(200; "Remaining Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(250; "Expected Quantity (Ratio)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Expected Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
        }
        field(260; "Expected Quantity (Total)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Expected Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(270; "Captured Quantity (Ratio)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Captured Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(280; "Captured Quantity (Total)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Captured Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(290; "Posted Quantity (Ratio)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Posted Quantity (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(300; "Posted Quantity (Total)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Posted Quantity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(310; "Unit of Measure Code (Ratio)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Ratio)';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(320; "Qty. per Unit of Meas. (Ratio)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. per Unit of Meas. (Ratio)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(330; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(340; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            BlankZero = true;
            Caption = 'Alloc. Qty. per Unit of Meas.';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(350; "Unit of Measure Code (Total)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Total)';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(360; "Qty. per Unit of Meas. (Total)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. per Unit of Meas. (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(2000; "Completely Picked"; Boolean)
        {
            Caption = 'Completely Picked';
            Editable = false;
        }
        field(3010; "Lot Determining"; Boolean)
        {
            Caption = 'Lot Determining';
        }
        field(3020; "Expiration Determining"; Boolean)
        {
            Caption = 'Expiration Determining';
        }
        field(3030; "Sprue Bush %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Sprue Bush %';
            DecimalPlaces = 0 : 5;
        }
        field(3040; "Recipe Share"; Boolean)
        {
            Caption = 'Recipe Share';
        }
        field(3050; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(3060; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
        }
        field(3070; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
        }
        field(3080; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(3090; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
        }
        field(3100; "Quantity per"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(3120; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            OptionCaption = 'Manual,Forward,Backward,Pick + Forward,Pick + Backward';
            OptionMembers = Manual,Forward,Backward,"Pick + Forward","Pick + Backward";
        }
        field(3130; "Expected Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Expected Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(3140; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(3150; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(3160; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(3170; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
        }
        field(3180; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            DecimalPlaces = 2 : 5;
        }
        field(3190; "Cost Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount';
            Editable = false;
        }
        field(3200; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(3210; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(3220; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(3230; "Lead-Time Offset"; DateFormula)
        {
            Caption = 'Lead-Time Offset';
        }
        field(3240; "Qty. Picked"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. Picked';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(3250; "Qty. Picked (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. Picked (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(3260; "Substitution Available"; Boolean)
        {
            CalcFormula = Exist ("Item Substitution" WHERE (Type = CONST (Item),
                                                           "Substitute Type" = CONST (Item),
                                                           "No." = FIELD ("Item No."),
                                                           "Variant Code" = FIELD ("Variant Code")));
            Caption = 'Substitution Available';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3270; Incorporation; Boolean)
        {
            Caption = 'Incorporation %';
            Editable = false;
        }
        field(3280; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(3290; "Qty. to Handle (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. to Handle (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(3300; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(3310; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW1';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Item));
        }
        field(5013430; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
            Description = '#DMW1';
        }
        field(5013435; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW1';
        }
        field(5013440; "Transfer Created"; Boolean)
        {
            Caption = 'Transfer Created';
            Description = '#DMW1';
            Editable = false;
        }
        field(5013450; "Transfer Posted"; Boolean)
        {
            Caption = 'Transfer Posted';
            Description = '#DMW1';
            Editable = false;
        }
        field(5013460; "Old Location Code"; Code[10])
        {
            Caption = 'Old Location Code';
            Description = '#DMW1';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013500; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = '#DMW1';
            TableRelation = "Base Material";
        }
        field(5013510; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = '#DMW1';
        }
        field(5013520; "Copy BOM to Text"; Option)
        {
            Caption = 'Copy BOM to Text';
            Description = '#DMW1';
            OptionCaption = ' ,Production BOM,Doc./Constr. BOM';
            OptionMembers = " ","Production BOM","Doc./Constr. BOM";
        }
        field(5034550; "No. of Units"; Integer)
        {
            BlankZero = true;
            Caption = 'No. of Units';
            Description = '#QMW1';
        }
        field(5034551; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#QMW1';
            TableRelation = "Test Plan";
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW1';
            Editable = false;
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW1';
            Editable = false;
        }
        field(5034624; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW1';
        }
        field(5034625; "Lot Status"; Code[20])
        {
            Caption = 'Lot Status';
            Description = '#QMW1';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

