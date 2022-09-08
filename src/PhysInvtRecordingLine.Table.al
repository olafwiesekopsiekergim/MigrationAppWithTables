table 5005353 "Phys. Invt. Recording Line"
{
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # Allocate trading unit

    Caption = 'Phys. Invt. Recording Line';
    PasteIsValid = false;

    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            TableRelation = "Phys. Invt. Recording Header";
        }
        field(2; "Recording No."; Integer)
        {
            Caption = 'Recording No.';
            TableRelation = "Phys. Invt. Recording Header"."Recording No." WHERE ("Order No." = FIELD ("Order No."));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(16; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
            Editable = false;
            TableRelation = "Phys. Inventory Order Line"."Line No." WHERE ("Document No." = FIELD ("Order No."));
        }
        field(17; "Recorded without Order"; Boolean)
        {
            Caption = 'Recorded without Order';
            Editable = false;
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(21; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(22; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(23; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(31; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(32; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(40; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(41; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(42; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(43; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(45; Recorded; Boolean)
        {
            Caption = 'Recorded';
        }
        field(53; "Use Tracking Lines"; Boolean)
        {
            Caption = 'Use Tracking Lines';
            Editable = false;
        }
        field(99; "Shelf/Bin No."; Code[10])
        {
            Caption = 'Shelf/Bin No.';
        }
        field(100; "Date Recorded"; Date)
        {
            Caption = 'Date Recorded';
        }
        field(101; "Time Recorded"; Time)
        {
            Caption = 'Time Recorded';
        }
        field(102; "Person Recorded"; Code[20])
        {
            Caption = 'Person Recorded';
            TableRelation = Employee;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(130; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(131; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5171657; "Quantity Scan"; Decimal)
        {
            Caption = 'Quantity Scan';
            Description = 'CSC8.00';
        }
    }

    keys
    {
        key(Key1; "Order No.", "Recording No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Order No.", "Order Line No.")
        {
            SumIndexFields = "Quantity (Base)";
        }
        key(Key3; "Order No.", "Item No.", "Variant Code", "Location Code", "Bin Code")
        {
        }
        key(Key4; "Order No.", "Recording No.", "Location Code", "Bin Code")
        {
        }
        key(Key5; "Order No.", "Recording No.", "Shelf/Bin No.")
        {
        }
    }

    fieldgroups
    {
    }
}

