table 6505 "Lot No. Information"
{
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    // 
    // :PMW14.02.01:107:1
    //   # New Key "Lot No." and "Lot No. Trading Unit"
    // 
    // :PMW14.02.01:98:1
    //   # Handle QC Template on insert
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:220:1
    //   # Key "Lot No.", "Lot No. Trading Unit" deleted
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW16.00.01:103 30.10.09 DEMSR.IST
    //   New field 5012400 "Expiration Date"
    // 
    // #NAV20100:A1000   20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #NAV20100:A1017   21.08.07 DEWUE.SE
    //   Field "No. of Units" added
    // 
    // #QMW16.00.01:R001 01.12.09 DEMSR.KHS
    //   Customer / Item Specification tables
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
    // 
    // #QMW17.00:104 06.12.12 DEMSR.KHS
    //   New User table structure for "Last Test by"
    //   Var UserID set to Code 50
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.03:T500 27.04.15 DEMSR.KHS
    //   Update Field Size "Item Description" to 50 Chars
    // 
    // #QMW18.00.00.03:T502 18.05.15 DEMSR.KHS
    //   Update length of User ID fields
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Add fields: "Retain Sample", "Elimination Date"
    // 
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    // 
    // :PMW14.02.01:107:1
    //   # New Key "Lot No." and "Lot No. Trading Unit"
    // 
    // :PMW14.02.01:98:1
    //   # Handle QC Template on insert
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:220:1
    //   # Key "Lot No.", "Lot No. Trading Unit" deleted
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW16.00.01:103 30.10.09 DEMSR.IST
    //   New field 5012400 "Expiration Date"
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
    //   Ingredient redesign
    //   New field 5012400 "Update Prod. Order Ingredients" added
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Lot No. Information';
    DataCaptionFields = "Item No.", "Variant Code", "Lot No.", Description;

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
        field(3; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Test Quality"; Option)
        {
            Caption = 'Test Quality';
            OptionCaption = ' ,Good,Average,Bad';
            OptionMembers = " ",Good,"Average",Bad;
        }
        field(12; "Certificate Number"; Code[20])
        {
            Caption = 'Certificate Number';
        }
        field(13; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(14; Comment; Boolean)
        {
            CalcFormula = Exist ("Item Tracking Comment" WHERE (Type = CONST ("Lot No."),
                                                               "Item No." = FIELD ("Item No."),
                                                               "Variant Code" = FIELD ("Variant Code"),
                                                               "Serial/Lot No." = FIELD ("Lot No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; Inventory; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Variant Code" = FIELD ("Variant Code"),
                                                                  "Lot No." = FIELD ("Lot No."),
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
                                                                              "Lot No." = FIELD ("Lot No."),
                                                                              "Location Code" = FIELD ("Location Filter"),
                                                                              "Expiration Date" = FIELD ("Date Filter"),
                                                                              Open = CONST (true),
                                                                              Positive = CONST (true)));
            Caption = 'Expired Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012400; "Update Prod. Order Ingredients"; Boolean)
        {
            Caption = 'Update Prod. Order Ingredients';
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
        field(5034550; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#NAV20100:A1017 21.08.07 DEWUE.SE';
            Editable = false;
        }
        field(5034551; "Reserved Qty. on Inventory"; Decimal)
        {
            CalcFormula = Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Item No." = FIELD ("Item No."),
                                                                           "Source Type" = CONST (32),
                                                                           "Source Subtype" = CONST ("0"),
                                                                           "Reservation Status" = CONST (Reservation),
                                                                           "Lot No." = FIELD ("Lot No."),
                                                                           "Location Code" = FIELD ("Location Filter"),
                                                                           "Variant Code" = FIELD ("Variant Code")));
            Caption = 'Reserved Qty. on Inventory';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.01:R001';
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
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
            Description = '#QMW16.00.02:X001,#QMW18.00.00.03:T500';
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
        key(Key1; "Item No.", "Variant Code", "Lot No.")
        {
            Clustered = true;
        }
        key(Key2; "Lot No.")
        {
            Enabled = false;
        }
    }

    fieldgroups
    {
    }
}

