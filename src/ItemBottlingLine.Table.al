table 5012410 "Item Bottling Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // BOTTLING:PMW14.02:75:1
    //   # Object created.
    // 
    // BOTTLING:PMW15.00:204:1
    //   # Relation of field 1 "Entry No." deleted
    //   # New field 33 "Item Ledger Entry No."
    // 
    // BOTTLING:PMW15.00:204:2
    //   # New field 1000 "Attached to Entry No."
    //   # New field 1001 "Control Level"
    //   # New field 1002 "Sub Level"
    //   # New field 1003 Unfolded
    //   # New field 1004 "Show Line"
    //   # New key <Item No.,Variant Code,Unit of Measure Code,Location Code,Serial No.
    //   # Lot No.,Lot No. Trading Unit,Trading Unit No.,Warranty Date,Expiration Date,QC Status,Posting Date>
    //   # New key <Attached to Entry No.,Posting Date>
    // 
    // #PMW16.00.01:108 05.11.09 DEMSR.IST
    //   Lookup on "Reserved Quantity" and "Reserved Quantity (Base)"
    // 
    // #PMW16.00.01:113 11.11.09 DEMSR.IST
    //   Lookup on "Lot No. Trading Unit"
    //   New field 60 "QC Test No."
    // 
    // #PMW16.00.01.02:T501 18.02.10 DEMSR.IST
    //   New field 35 "In-Transit Location"
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Bottling Line';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Entry No.';
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(6; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(7; "Trading Unit per Item UOM"; Option)
        {
            Caption = 'Trading Unit per Item UOM';
            OptionCaption = ' ,Item,Variant';
            OptionMembers = " ",Item,Variant;
        }
        field(8; "Trading Unit Item"; Boolean)
        {
            Caption = 'Trading Unit Item';
            Editable = false;
        }
        field(9; "Base Trading Unit Item No."; Code[20])
        {
            Caption = 'Base Trading Unit Item';
            Editable = false;
            TableRelation = Item;
        }
        field(10; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(11; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(12; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
        }
        field(13; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
        }
        field(14; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(15; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(16; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
        }
        field(17; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
        }
        field(18; "New Lot No. Trading Unit"; Code[20])
        {
            Caption = 'New Lot No. Trading Unit';
        }
        field(19; "New Trading Unit No."; Code[20])
        {
            Caption = 'New Trading Unit No.';
        }
        field(20; "Remaining Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(21; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(22; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(23; "Remaining Quantity (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Remaining Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(24; "Reserved Quantity"; Decimal)
        {
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(25; "Reserved Quantity (Base)"; Decimal)
        {
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(30; "QC Status"; Code[10])
        {
            Caption = 'QC Status';
            TableRelation = "QC Status";
        }
        field(31; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(32; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(33; "Item Ledger Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Item Ledger Entry No.';
            Description = 'BOTTLING:PMW15.00:204:1';
            Editable = false;
            TableRelation = "Item Ledger Entry"."Entry No.";
        }
        field(35; "In-Transit Location"; Boolean)
        {
            Caption = 'In-Transit Location';
            Description = '#PMW16.00.01.02:T501';
            Editable = false;
        }
        field(40; "Qty. to Handle"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. to Handle';
            DecimalPlaces = 0 : 5;
        }
        field(41; "Qty. to Handle (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Qty. to Handle (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(42; "New Quantity"; Decimal)
        {
            Caption = 'New Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(50; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(60; "QC Test No."; Code[20])
        {
            Caption = 'QC Test No.';
            Description = '#PMW16.00.01:113';
            TableRelation = "QC Test Header";
        }
        field(1000; "Attached to Entry No."; Integer)
        {
            Caption = 'Attached to Entry No.';
        }
        field(1001; "Control Level"; Integer)
        {
            Caption = 'Control Level';
        }
        field(1002; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
        }
        field(1003; Unfolded; Boolean)
        {
            Caption = 'Unfolded';
        }
        field(1004; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Location Code", "New Serial No.", "New Lot No.")
        {
            SumIndexFields = "New Quantity";
        }
        key(Key3; "Item No.", "Variant Code", "Unit of Measure Code", "Location Code", "Serial No.", "Lot No.", "Lot No. Trading Unit", "Trading Unit No.", "Warranty Date", "Expiration Date", "QC Status", "Posting Date")
        {
        }
        key(Key4; "Attached to Entry No.", "Posting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

