table 5171658 "Scan Protocol"
{
    // CDA8.00:
    //   New Fields:
    //     Orderno.
    //     Order Lineno.
    //   New Key
    //     Orderno.,Order Lineno.

    Caption = 'Tracking Specification Scan';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(4; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(15; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(16; "Appl.-to Item Entry"; Integer)
        {
            Caption = 'Appl.-to Item Entry';
            TableRelation = "Item Ledger Entry";
        }
        field(17; "Transfer Item Entry No."; Integer)
        {
            Caption = 'Transfer Item Entry No.';
            TableRelation = "Item Ledger Entry";
        }
        field(20; "Base ID"; Code[20])
        {
            Caption = 'Base Doc ID';
        }
        field(21; "Base Type"; Integer)
        {
            Caption = 'Base Type';
        }
        field(22; "Base Subtype"; Option)
        {
            Caption = 'Base Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(24; "Serial No."; Code[50])
        {
            Caption = 'Serial No.';
        }
        field(28; Positive; Boolean)
        {
            Caption = 'Positive';
        }
        field(29; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(40; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(41; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(50; "Qty. to Handle (Base)"; Decimal)
        {
            Caption = 'Qty. to Handle (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(51; "Qty. to Invoice (Base)"; Decimal)
        {
            Caption = 'Qty. to Invoice (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(52; "Quantity Handled (Base)"; Decimal)
        {
            Caption = 'Quantity Handled (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(53; "Quantity Invoiced (Base)"; Decimal)
        {
            Caption = 'Quantity Invoiced (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(60; "Qty. to Handle"; Decimal)
        {
            Caption = 'Qty. to Handle';
            DecimalPlaces = 0 : 5;
        }
        field(61; "Qty. to Invoice"; Decimal)
        {
            Caption = 'Qty. to Invoice';
            DecimalPlaces = 0 : 5;
        }
        field(70; "Buffer Status"; Option)
        {
            Caption = 'Buffer Status';
            Editable = false;
            OptionCaption = ' ,MODIFY';
            OptionMembers = " ",MODIFY;
        }
        field(80; "New Serial No."; Code[50])
        {
            Caption = 'New Serial No.';
        }
        field(81; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
        }
        field(90; "Physical Inventory"; Boolean)
        {
            Caption = 'Physical Inventory';
        }
        field(5400; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(5401; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(5402; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Location Code"));
        }
        field(5817; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(6500; "Item Tracking Code"; Code[10])
        {
            Caption = 'Item Tracking Code';
            TableRelation = "Item Tracking Code";
        }
        field(6501; "New Locationcode"; Code[10])
        {
            Caption = 'New Locationcode';
        }
        field(6502; "New Bin Code"; Code[10])
        {
            Caption = 'New Bin Code';
        }
        field(7700; "User ID"; Code[30])
        {
            Caption = 'User ID';
        }
        field(7701; Scandate; Date)
        {
            Caption = 'Scandate';
        }
        field(7702; Scantime; Time)
        {
            Caption = 'Scantime';
        }
        field(9001; "Universal Integer"; Integer)
        {
            Caption = 'universal Integer';
        }
        field(9002; "Universal Decimal"; Decimal)
        {
            Caption = 'universal Dezimal';
        }
        field(9003; "Universal Code"; Code[10])
        {
            Caption = 'universal Code';
        }
        field(9004; "Universal Text"; Text[30])
        {
            Caption = 'universal Text';
        }
        field(9005; "Universal Date"; Date)
        {
            Caption = 'universal Date';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source ID", "Source Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Qty. to Handle (Base)", "Qty. to Invoice (Base)", "Quantity Handled (Base)", "Quantity Invoiced (Base)";
        }
        key(Key3; "Lot No.", "Serial No.")
        {
            Enabled = false;
        }
        key(Key4; "Item No.", "Lot No.", "Serial No.", "Variant Code")
        {
            Enabled = false;
            SumIndexFields = "Qty. to Handle (Base)";
        }
        key(Key5; "Source ID", "Source Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line", "Entry No.")
        {
            Enabled = false;
        }

    }

    fieldgroups
    {
    }
}

