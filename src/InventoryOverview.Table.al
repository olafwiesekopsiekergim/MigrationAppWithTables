table 5034624 "Inventory Overview"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R459 13.07.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW16.00.03:R269 28.09.11 DEMSR.KHS
    //   Unit of Measure added
    //   New Field: Unit of Measure
    //   New Function: IsUOMRelated
    // 
    // #QMW17.00:407 03.01.13 DEMSR.KHS
    //   Fix unconditional Setup reads
    //   Changed Description field to 50 Chars
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   remove obsolete brackets
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW16.00.03:T251 30.09.11 DEMSR.KHS
    //   Add/Correct Trading Unit based Testing:
    //     New Fields: Lot No. Trading Unit
    //                 Trading Unit No.
    //     Function UpdateData extended

    Caption = 'Inventory Overview';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(5; "Item Description"; Text[50])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Item No.")));
            Caption = 'Item Description';
            Description = '#QMW17.00';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(12; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(15; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(50; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(65; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
        }
        field(70; "Qty. Picked"; Decimal)
        {
            CalcFormula = Sum ("Warehouse Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                "Variant Code" = FIELD ("Variant Code"),
                                                                "Location Code" = FIELD ("Location Code"),
                                                                "Unit of Measure Code" = FIELD ("Unit of Measure Code"),
                                                                "Bin Code" = FIELD ("Bin Code"),
                                                                "Lot No." = FIELD ("Lot No."),
                                                                "Serial No." = FIELD ("Serial No."),
                                                                "Whse. Document Type" = CONST (Shipment),
                                                                "Entry Type" = CONST (Movement),
                                                                "Reference Document" = CONST (Pick),
                                                                Quantity = FILTER (> 0)));
            Caption = 'Qty. Picked';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "Qty. Picked (Base)"; Decimal)
        {
            CalcFormula = Sum ("Warehouse Entry"."Qty. (Base)" WHERE ("Item No." = FIELD ("Item No."),
                                                                     "Variant Code" = FIELD ("Variant Code"),
                                                                     "Location Code" = FIELD ("Location Code"),
                                                                     "Bin Code" = FIELD ("Bin Code"),
                                                                     "Lot No." = FIELD ("Lot No."),
                                                                     "Serial No." = FIELD ("Serial No."),
                                                                     "Whse. Document Type" = CONST (Shipment),
                                                                     "Entry Type" = CONST (Movement),
                                                                     "Reference Document" = CONST (Pick),
                                                                     Quantity = FILTER (> 0)));
            Caption = 'Qty. Picked (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = '#QMW16.00.03:R269';
            TableRelation = "Unit of Measure";
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5704; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5707; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code" = FIELD ("Item Category Code"));
        }
        field(6500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            TableRelation = "Serial No. Information"."Serial No." WHERE ("Item No." = FIELD ("Item No."),
                                                                         "Variant Code" = FIELD ("Variant Code"),
                                                                         "Serial No." = FIELD ("Serial No."));
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            TableRelation = "Lot No. Information"."Lot No." WHERE ("Item No." = FIELD ("Item No."),
                                                                   "Variant Code" = FIELD ("Variant Code"),
                                                                   "Lot No." = FIELD ("Lot No."));
        }
        field(6502; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(6503; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW16.00.03:T251';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = '#PMW16.00.03:T251';
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
        }
        field(5034623; Status; Code[20])
        {
            Caption = 'Status';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034632; "Availability Date"; Date)
        {
            Caption = 'Availability Date';
        }
        field(5060475; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Variant Code", "Serial No.", "Lot No.", "Location Code", "Bin Code", Status, "Expiration Date")
        {
            SumIndexFields = Quantity, "Quantity (Base)";
        }
        key(Key3; "Item No.", "Item Category Code")
        {
        }
        key(Key4; "Item No.", "Product Group Code")
        {
        }
        key(Key5; "Item No.", "Variant Code", "Lot No.", "Serial No.", "Location Code", "Bin Code")
        {
            SumIndexFields = Quantity, "Quantity (Base)";
        }
        key(Key6; "Item No.", "Variant Code", "Location Code", "Expiration Date")
        {
        }
        key(Key7; "Item No.", "Variant Code", "Location Code", "Entry Date")
        {
        }
        key(Key8; "Item No.", "Variant Code", "Location Code", "Bin Code", "Serial No.", "Lot No.")
        {
        }
    }

    fieldgroups
    {
    }
}

