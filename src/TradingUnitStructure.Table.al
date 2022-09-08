table 5012534 "Trading Unit Structure"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.01:2457:1
    //   # Object created.
    // 
    // :PMW14.02:90:1
    //   # New field 20 "Trading Unit Item No."
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Trading Unit Structure';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Attached to Entry No."; Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
        }
        field(3; Level; Integer)
        {
            Caption = 'Level';
        }
        field(4; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
            Editable = false;
        }
        field(5; Unfold; Boolean)
        {
            Caption = 'Unfolded';
        }
        field(6; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
        }
        field(7; Bitmap; Integer)
        {
            Caption = 'Bitmap';
            InitValue = 2;
        }
        field(8; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(9; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(11; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(12; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
        }
        field(13; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
        }
        field(14; "Trading Unit Quantity"; Decimal)
        {
            Caption = 'Trading Unit Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(15; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(17; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(19; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(20; "Trading Unit Item No."; Code[20])
        {
            Caption = 'Trading Unit Item No.';
            Description = ':PMW14.02:90:1';
            Editable = false;
            TableRelation = Item;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Level)
        {
        }
        key(Key3; "Item No.", "Location Code", "Unit of Measure Code", "Lot No. Trading Unit", "Trading Unit No.")
        {
            Enabled = false;
        }
        key(Key4; "Attached to Entry No.")
        {
            Enabled = false;
            SumIndexFields = "Remaining Quantity";
        }
    }

    fieldgroups
    {
    }
}

