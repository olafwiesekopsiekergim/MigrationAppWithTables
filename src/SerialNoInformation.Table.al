table 6504 "Serial No. Information"
{
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    //   New Fields: "External Lot No."
    //               "Expiration Date"
    //               "Status"
    //               "Quarantine Date"
    //               "Retest Date"
    //               "Warranty Date"
    //               "Quantity"
    //               "Release/Blocking User ID"
    //               "Last Test by"
    //               "Last Test Date"
    //               "Last Test Resp. Center Code"
    //               "Last Test Order No."
    //               "Original Lot No."
    //               "Entry Date"
    //               "Item Description"
    //               "Lot Inventory"
    //               "Lot No."
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.10.00.01:T505 26.11.13 DEMSR.KHS
    //   add missing key: Item No.,Variant Code,Lot No.
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.03:T502 18.05.15 DEMSR.KHS
    //   Update length of User ID fields
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Add fields: "Retain Sample", "Elimination Date"
    // 
    // :PMW14.02.01:107:1
    //   # No delete if Item Ledger Entry exists
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // #PMW16.00.02:T508 28.10.10 DEMSR.IST
    //   New field 5012400 "Expiration Date"
    // 
    // #PMW16.00.02:T271 23.11.10 DEMSR.KHS Integration of Trading Unit from PM into QM
    //                                      New Fields: Lot No. Trading Unit
    //                                                  Trading Unit No.
    // 
    // #PMW16.00.02.05:T505 15.06.11 DEMSR.BKR
    //   Fix missing base qty. In Lot
    // 
    // #PMW17.00:T101 15.10.12 DEMSR.KHS
    //   Field 5012400 Expiration Date deleted
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T101 09.04.2014 DEMSR.IST
    //   Ingredient integration deleted
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Serial No. Information';
    DataCaptionFields = "Item No.", "Variant Code", "Serial No.", Description;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(3; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(14; Comment; Boolean)
        {
            CalcFormula = Exist ("Item Tracking Comment" WHERE (Type = CONST ("Serial No."),
                                                               "Item No." = FIELD ("Item No."),
                                                               "Variant Code" = FIELD ("Variant Code"),
                                                               "Serial/Lot No." = FIELD ("Serial No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; Inventory; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Variant Code" = FIELD ("Variant Code"),
                                                                  "Serial No." = FIELD ("Serial No."),
                                                                  "Location Code" = FIELD ("Location Filter")));
            Caption = 'Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(22; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(23; "Bin Filter"; Code[20])
        {
            Caption = 'Bin Filter';
            FieldClass = FlowFilter;
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Filter"));
        }
        field(24; "Expired Inventory"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry"."Remaining Quantity" WHERE ("Item No." = FIELD ("Item No."),
                                                                              "Variant Code" = FIELD ("Variant Code"),
                                                                              "Serial No." = FIELD ("Serial No."),
                                                                              "Location Code" = FIELD ("Location Filter"),
                                                                              "Expiration Date" = FIELD ("Date Filter"),
                                                                              Open = CONST (true),
                                                                              Positive = CONST (true)));
            Caption = 'Expired Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW16.00.02:T271';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = '#PMW16.00.02:T271';
        }
        field(5034551; "Reserved Qty. on Inventory"; Decimal)
        {
            CalcFormula = Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Item No." = FIELD ("Item No."),
                                                                           "Source Type" = CONST (32),
                                                                           "Source Subtype" = CONST ("0"),
                                                                           "Reservation Status" = CONST (Reservation),
                                                                           "Serial No." = FIELD ("Serial No."),
                                                                           "Location Code" = FIELD ("Location Filter"),
                                                                           "Variant Code" = FIELD ("Variant Code")));
            Caption = 'Reserved Qty. on Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034552; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034553; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034554; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034555; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034556; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034557; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034558; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.02:X001';
            MinValue = 0;
        }
        field(5034559; "Release/Blocking User ID"; Code[50])
        {
            Caption = 'Release/Blocking User ID';
            Description = '#QMW16.00.02:X001,#QMW18.00.00.03:T502';
        }
        field(5034560; "Last Test by"; Code[50])
        {
            Caption = 'Last Test by';
            Description = '#QMW17.00';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5034561; "Last Test Date"; Date)
        {
            Caption = 'Last Test Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034562; "Last Test Resp. Center Code"; Code[10])
        {
            Caption = 'Last Test Resp. Center Code';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(5034563; "Last Test Order No."; Code[20])
        {
            Caption = 'Last Test Order No.';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Test Order";
        }
        field(5034564; "Original Lot No."; Code[30])
        {
            Caption = 'Original Lot No.';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034565; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.02:X001';
            Editable = false;
        }
        field(5034566; "Item Description"; Text[50])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Item No.")));
            Caption = 'Item Description';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034567; "Lot Inventory"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Variant Code" = FIELD ("Variant Code"),
                                                                  "Lot No." = FIELD ("Lot No."),
                                                                  "Location Code" = FIELD ("Location Filter")));
            Caption = 'Lot Inventory';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.02:X001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034568; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Description = '#QMW16.00.02:X001';
            TableRelation = "Lot No. Information"."Lot No.";
        }
        field(5034569; "Retain Sample"; Boolean)
        {
            Caption = 'Retain Sample';
            Description = '#QMW18.00.01:T105';
        }
        field(5034570; "Elimination Date"; Date)
        {
            Caption = 'Elimination Date';
            Description = '#QMW18.00.01:T105';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Serial No.")
        {
            Clustered = true;
        }
        key(Key2; "Serial No.")
        {
            Enabled = false;
        }
        key(Key3; "Item No.", "Variant Code", "Lot No.")
        {
        }
    }

    fieldgroups
    {
    }
}

