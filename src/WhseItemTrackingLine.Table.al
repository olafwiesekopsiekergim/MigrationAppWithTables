table 6550 "Whse. Item Tracking Line"
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
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #NAV20100:A1017 21.08.07 DEWUE.SE
    //   Field "No. of Units" added
    // 
    // #QMW16.00.02.06:T513 05.05.11 DEMSR.KHS
    //   CheckItemTrackingAssWhse added for Lot and Serial No.
    // 
    // #QMW16.00.03:T507 19.08.11 DEMSR.KHS
    //   Add fields:
    //     External Lot No.
    //     Quarantine Date
    //     Retest Date
    //     Status
    //     Entry Date
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.04:T509 08.07.15 DEMSR.KHS
    //   Add Status checks

    Caption = 'Whse. Item Tracking Line';

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
        field(24; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
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
        field(70; "Buffer Status"; Option)
        {
            Caption = 'Buffer Status';
            Editable = false;
            OptionCaption = ' ,MODIFY';
            OptionMembers = " ",MODIFY;
        }
        field(71; "Buffer Status2"; Option)
        {
            Caption = 'Buffer Status2';
            Editable = false;
            OptionCaption = ',ExpDate blocked';
            OptionMembers = ,"ExpDate blocked";
        }
        field(80; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
        }
        field(81; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
        }
        field(90; "Source Type Filter"; Option)
        {
            Caption = 'Source Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Receipt,Shipment,Internal Put-away,Internal Pick,Production,Movement Worksheet,Assembly';
            OptionMembers = " ",Receipt,Shipment,"Internal Put-away","Internal Pick",Production,"Movement Worksheet",Assembly;
        }
        field(91; "Qty. Registered (Base)"; Decimal)
        {
            Caption = 'Qty. Registered (Base)';
        }
        field(92; "Put-away Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum ("Warehouse Activity Line"."Qty. Outstanding (Base)" WHERE ("Activity Type" = FILTER ("Put-away"),
                                                                                         "Whse. Document Type" = FIELD ("Source Type Filter"),
                                                                                         "Whse. Document No." = FIELD ("Source ID"),
                                                                                         "Whse. Document Line No." = FIELD ("Source Ref. No."),
                                                                                         "Serial No." = FIELD ("Serial No."),
                                                                                         "Lot No." = FIELD ("Lot No."),
                                                                                         "Action Type" = FILTER (" " | Take)));
            Caption = 'Put-away Qty. (Base)';
            FieldClass = FlowField;
        }
        field(93; "Pick Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum ("Warehouse Activity Line"."Qty. Outstanding (Base)" WHERE ("Activity Type" = FILTER (Pick | Movement),
                                                                                         "Whse. Document Type" = FIELD ("Source Type Filter"),
                                                                                         "Whse. Document No." = FIELD ("Source ID"),
                                                                                         "Whse. Document Line No." = FIELD ("Source Ref. No."),
                                                                                         "Serial No." = FIELD ("Serial No."),
                                                                                         "Lot No." = FIELD ("Lot No."),
                                                                                         "Action Type" = FILTER (" " | Place)));
            Caption = 'Pick Qty. (Base)';
            FieldClass = FlowField;
        }
        field(94; "Created by Whse. Activity Line"; Boolean)
        {
            Caption = 'Created by Whse. Activity Line';
        }
        field(5400; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(5401; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(6505; "New Expiration Date"; Date)
        {
            Caption = 'New Expiration Date';
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
            Description = '#NAV20100:A1017 21.08.07 DEWUE.SE';
            InitValue = 1;
        }
        field(5034620; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.03:T507';
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.03:T507';
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.03:T507';
        }
        field(5034623; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.03:T507';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034624; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.03:T507';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source ID", "Source Type", "Source Subtype", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.", "Location Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity (Base)", "Qty. to Handle (Base)", "Qty. to Invoice (Base)", "Quantity Handled (Base)", "Quantity Invoiced (Base)";
        }
        key(Key3; "Serial No.", "Lot No.")
        {
        }
    }

    fieldgroups
    {
    }
}

