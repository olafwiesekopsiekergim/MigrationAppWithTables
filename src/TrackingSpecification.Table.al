table 336 "Tracking Specification"
{
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # New field 5012502 "New Lot No. Trading Unit"
    //   # New field 5012503 "New Trading Unit No."
    //   # New function "CheckLotChange"
    //   # New Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # Trading Unit No. - OnValidate, call "CheckLotChange"
    //   # New Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # New Trading Unit No. - OnValidate, call "CheckLotChange"
    // 
    // TrdngUnit:PMW15.00:219:1
    //   # Allocate trading unit
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW16.00.03:T101 18.07.11 DEMSR.IST
    //   Check remaining shelf time
    // 
    // #PMW16.00.03:T508 01.09.11 DEMSR.KHS
    //   Test on InvPostingPermissions when Lot is changed from Trading Unit fields
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T516 22.10.14 DEMSR.KHS
    //   Missing "New Lot No. Trading Unit" in Reclass Journal
    // 
    // #NAV20100:A1000      20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #NAV20100:A1017      20.08.07 DEWUE.SE
    //   Field "No. of Units" added
    // 
    // #QMW16.00.02:X002    20.10.10 DEMSR.KHS
    //   Inventory Posting Permission
    // 
    // #QMW16.00.02:X001    27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.02.06:T521 03.06.11 DEMSR.KHS
    //   Fix Error Message on Lot Split when Warehouse Tracking is used
    // 
    //  #QMW16.00.03:T503 10.08.11 DEMSR.KHS
    //   Update Lot No Information onValidate of Lot No.
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
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW17.10.01.01:T500 01.12.2014 DEMSR.KHS
    //   Add Expiration Check before Pick is created
    // 
    // #QMW18.00.00.04:T509 08.07.15 DEMSR.KHS
    //   Fix Status checks for Serial No.
    // 
    // #RENW16.00:10-001  04.05.2009  DEMSR.KHS
    //   New function "Lock" added
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.00.00.02:T101 29.05.13 DEMSR.KHS
    //   Update Object IDs
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Tracking Specification';

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
        field(16; "Item Ledger Entry No."; Integer)
        {
            Caption = 'Item Ledger Entry No.';
            TableRelation = "Item Ledger Entry";
        }
        field(17; "Transfer Item Entry No."; Integer)
        {
            Caption = 'Transfer Item Entry No.';
            TableRelation = "Item Ledger Entry";
        }
        field(24; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            Description = '#QMW16.00.03.T503';
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
        field(38; "Appl.-to Item Entry"; Integer)
        {
            Caption = 'Appl.-to Item Entry';
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
            OptionCaption = ' ,MODIFY,INSERT';
            OptionMembers = " ",MODIFY,INSERT;
        }
        field(71; "Buffer Status2"; Option)
        {
            Caption = 'Buffer Status2';
            Editable = false;
            OptionCaption = ',ExpDate blocked';
            OptionMembers = ,"ExpDate blocked";
        }
        field(72; "Buffer Value1"; Decimal)
        {
            Caption = 'Buffer Value1';
            Editable = false;
        }
        field(73; "Buffer Value2"; Decimal)
        {
            Caption = 'Buffer Value2';
            Editable = false;
        }
        field(74; "Buffer Value3"; Decimal)
        {
            Caption = 'Buffer Value3';
            Editable = false;
        }
        field(75; "Buffer Value4"; Decimal)
        {
            Caption = 'Buffer Value4';
            Editable = false;
        }
        field(76; "Buffer Value5"; Decimal)
        {
            Caption = 'Buffer Value5';
            Editable = false;
        }
        field(80; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
        }
        field(81; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
        }
        field(900; "Prohibit Cancellation"; Boolean)
        {
            Caption = 'Prohibit Cancellation';
        }
        field(5400; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Description = '#QMW16.00.03.T503,#PMW17.10.01:T516,#QMW17.10.01.01:T500';
        }
        field(5401; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5402; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
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
        }
        field(7300; "Quantity actual Handled (Base)"; Decimal)
        {
            Caption = 'Quantity actual Handled (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
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
        field(5034550; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#NAV20100:A1017 20.08.07 DEWUE.SE';
            InitValue = 1;
        }
        field(5034620; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.02:X001';
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.02:X001';
        }
        field(5034623; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.02:X001';
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
        }
    }

    fieldgroups
    {
    }
}

