table 337 "Reservation Entry"
{
    // CSC8.00 - Key: Item No.,Serial No.,Lot No.,Variant Code,Source Type  - SumIndexfield: Quantity (Base),Quantity
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // 
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # New field 5012502 "New Lot No. Trading Unit"
    //   # New field 5012503 "New Trading Unit No."
    // 
    // TrdngUnit:PMW15.00:219:1
    //   # Clear trading unit fields
    // 
    // #PMW16.00.01:105 04.11.09 DEMSR.IST
    //   New field 5012600 "QC Status"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02.04:T507 14.02.11 DEMSR.BKR
    //   Added Key (W1 only)
    //   Source Type,Source Subtype,Source ID,Source Batch Name,Source Prod. Order Line,Source Ref. No.
    // 
    // #NAV20100:A1000   20.04.07 DEWUE.SE
    //   Integration QM/VR
    //   Key addded: Item No.,Variant Code,Lot No.
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.03:T509 26.08.11 DEMSR.KHS
    //   Fields added: "New Status"
    //                 "New Warranty Date"
    //                 "New External Lot No."
    //                 "New Quarantine Date"
    //                 "New Retest Date"
    //                 "New Entry Date"
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW17.00.00.05:T501 02.10.13 DEMSR.KHS
    //   Add Key Group QM
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :DMW13.60:1:01 #für Konstruktion erweitert
    // #DMW16.00.02.03:A0010 29.06.11 DEMSR.SSZ
    //  #ATTENTION!!! The key with KeyGroups = CTOW1 must be transfererd into W1 database because it's used in CU Order Network Management
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // 
    // CCO  08.10.2021  DEMUE.DKR # Add CCO Functions

    Caption = 'Reservation Entry';

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
        field(5; "Reservation Status"; Option)
        {
            Caption = 'Reservation Status';
            OptionCaption = 'Reservation,Tracking,Surplus,Prospect';
            OptionMembers = Reservation,Tracking,Surplus,Prospect;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(9; "Transferred from Entry No."; Integer)
        {
            Caption = 'Transferred from Entry No.';
            TableRelation = "Reservation Entry";
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
        field(16; "Item Ledger Entry No."; Integer)
        {
            Caption = 'Item Ledger Entry No.';
            Editable = false;
            TableRelation = "Item Ledger Entry";
        }
        field(22; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
        }
        field(23; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(24; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(25; "Created By"; Code[50])
        {
            Caption = 'Created By';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(27; "Changed By"; Code[50])
        {
            Caption = 'Changed By';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(28; Positive; Boolean)
        {
            Caption = 'Positive';
            Editable = false;
        }
        field(29; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(30; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(31; "Action Message Adjustment"; Decimal)
        {
            CalcFormula = Sum("Action Message Entry".Quantity WHERE("Reservation Entry" = FIELD("Entry No."),
                                                                     Calculation = CONST(Sum)));
            Caption = 'Action Message Adjustment';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; Binding; Option)
        {
            Caption = 'Binding';
            Editable = false;
            OptionCaption = ' ,Order-to-Order';
            OptionMembers = " ","Order-to-Order";
        }
        field(33; "Suppressed Action Msg."; Boolean)
        {
            Caption = 'Suppressed Action Msg.';
        }
        field(34; "Planning Flexibility"; Option)
        {
            Caption = 'Planning Flexibility';
            OptionCaption = 'Unlimited,None';
            OptionMembers = Unlimited,"None";
        }
        field(38; "Appl.-to Item Entry"; Integer)
        {
            Caption = 'Appl.-to Item Entry';
        }
        field(40; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(41; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
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
        field(53; "Quantity Invoiced (Base)"; Decimal)
        {
            Caption = 'Quantity Invoiced (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(80; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
            Editable = false;
        }
        field(81; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
            Editable = false;
        }
        field(900; "Disallow Cancellation"; Boolean)
        {
            Caption = 'Disallow Cancellation';
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
        field(5811; "Appl.-from Item Entry"; Integer)
        {
            Caption = 'Appl.-from Item Entry';
            MinValue = 0;
        }
        field(5817; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(6505; "New Expiration Date"; Date)
        {
            Caption = 'New Expiration Date';
            Editable = false;
        }
        field(6510; "Item Tracking"; Option)
        {
            Caption = 'Item Tracking';
            Editable = false;
            OptionCaption = 'None,Lot No.,Lot and Serial No.,Serial No.';
            OptionMembers = "None","Lot No.","Lot and Serial No.","Serial No.";
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = ':PMW14.01:2457:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = ':PMW14.01:2457:1';
        }
        field(5012502; "New Lot No. Trading Unit"; Code[20])
        {
            Caption = 'New Lot No. Trading Unit';
            Description = ':PMW14.01:2457:1';
        }
        field(5012503; "New Trading Unit No."; Code[20])
        {
            Caption = 'New Trading Unit No.';
            Description = ':PMW14.01:2457:1';
        }
        field(5012600; "QC Status"; Code[10])
        {
            Caption = 'QC Status';
            Description = '#PMW16.00.01:105';
            Editable = false;
            TableRelation = "QC Status";
        }
        field(5034550; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#NAV20100:A1000 20.04.07 DEWUE.SE';
        }
        field(5034620; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034623; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034624; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034625; "New Status"; Code[20])
        {
            Caption = 'New Status';
            Description = '#QMW16.00.03:T509';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034630; "Avail. Status"; Code[20])
        {
            Caption = 'Avail. Status';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034631; "Avail. Expiration Date"; Date)
        {
            Caption = 'Avail. Expiration Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034632; "Avail. Availability Date"; Date)
        {
            Caption = 'Avail. Availability Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034635; "New Warranty Date"; Date)
        {
            Caption = 'New Warranty Date';
            Description = '#QMW16.00.03:T509';
            Editable = false;
        }
        field(5034636; "New External Lot No."; Text[30])
        {
            Caption = 'New External Lot No.';
            Description = '#QMW16.00.03:T509';
        }
        field(5034637; "New Quarantine Date"; Date)
        {
            Caption = 'New Quarantine Date';
            Description = '#QMW16.00.03:T509';
        }
        field(5034638; "New Retest Date"; Date)
        {
            Caption = 'New Retest Date';
            Description = '#QMW16.00.03:T509';
        }
        field(5034639; "New Entry Date"; Date)
        {
            Caption = 'New Entry Date';
            Description = '#QMW16.00.03:T509';
        }
    }

    keys
    {
        key(Key1; "Entry No.", Positive)
        {
            Clustered = true;
        }
        key(Key2; "Source ID", "Source Ref. No.", "Source Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line", "Reservation Status", "Shipment Date", "Expected Receipt Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)", Quantity;
        }
        key(Key3; "Item No.", "Variant Code", "Location Code", "Reservation Status", "Shipment Date", "Expected Receipt Date", "Serial No.", "Lot No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key4; "Item No.", "Source Type", "Source Subtype", "Reservation Status", "Location Code", "Variant Code", "Shipment Date", "Expected Receipt Date", "Serial No.", "Lot No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Quantity (Base)", Quantity;
        }
        key(Key5; "Item No.", "Variant Code", "Location Code", "Item Tracking", "Reservation Status", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Quantity (Base)";
        }
        key(Key6; "Lot No.")
        {
            Enabled = false;
        }
        key(Key7; "Serial No.")
        {
            Enabled = false;
        }
        key(Key8; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.")
        {
        }
        key(Key9; "Item No.", "Variant Code", "Lot No.")
        {
        }

    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Positive, "Item No.", Description, Quantity)
        {
        }
    }
}

