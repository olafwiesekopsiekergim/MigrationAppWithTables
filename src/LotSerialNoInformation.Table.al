table 5034622 "Lot/Serial No. Information"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management - Object created
    // 
    // #QMW16.00.03:R459 31.08.11 DEMSR.KHS
    //   FlowField added: Inventory (incl. Bin)
    //                    Lot Inventory (incl. Bin)
    // 
    // #QMW16.00.03:T380 19.08.11 DEMSR.KHS
    //   Implementation of Regulatory Affairs
    //     Function added: ItemVerification
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    //   "Last Test by", "Item Description" fields set to 50 Chars
    // 
    // #QMW17.00:205 06.12.12 DEMSR.KHS
    //   Integrate RA2013 into QM
    // 
    // #QMW17.00.00.02:T101 14.05.13 DEMSR.KHS
    //   Update Object IDs
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   change VAR UserID to UsersID
    //   change parameter of TranslateOldFieldNo FieldNo to FieldNum
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.03:T502 18.05.15 DEMSR.KHS
    //   Update length of "Release/Blocking User ID" field
    // 
    // #QMW18.00.00.04:T102 02.07.15 DEMSR.KHS
    //   New function: CreateTestOrder
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Add fields: "Retain Sample", "Elimination Date"
    // 
    // #RAW17.10.01:T503 11.09.14 DEMSR.KHS
    //   Add License Check
    // 
    // #PMW16.00.02:T271 18.11.10 DEMSR.KHS
    //   Integration of Trading Unit from PM into QM
    //   New Fields: "Lot No. Trading Unit"
    //               "Trading Unit No."
    //               "New Lot No. Trading Unit"
    //               "New Trading Unit No."
    //               "Original Lot No. Trading Unit"
    //               "Original Trading Unit No."
    //               "Lot Trading Unit Inventory"
    // 
    // #PMW16.00.02.05:T506 31.05.11 DEMSR.KHS
    //   Update Lot No. on Trading Unit
    // 
    // #PMW16.00.02.05:T509 01.06.11 DEMSR.KHS
    //   Change Captions of FlowFields:
    //   Field 5012506 Trading Unit Inventory: DEU=Charge Lagerbestand;ENU=Lot No. Inventory
    //   Changed Filters on Field 5012506 Trading Unit Inventory:
    //     "Lot No. Trading Unit"
    //     "Trading Unit No."
    //   Changed Properties Decimal Places 0:5 and Editable = No
    // 
    // #PMW16.00.03:T251 30.09.11 DEMSR.KHS
    //   Add function call CheckLotChange to field "New Lot No."
    // 
    // #PMW16.00.03.01:T505 27.02.12 DEMSR.KHS
    //   Add checks for Unique Exp. Date
    // 
    // #PMW16.00.03.01:T523 02.08.12 DEMSR.IST
    //   Missing license check on Trading Unit Management in Lot/Serial No. Information table added
    // 
    // #PMW17.00:T103 10.01.13 DEMSR.KHS
    //   Add Verification for PM fields
    // 
    // #PMW17.00.00.01:T502 10.04.13 DEMSR.KHS
    //   Undo #PMW16.00.03.01:T505
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Lot/Serial No. Information';
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
        }
        field(4; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
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
        field(30; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Editable = false;
        }
        field(40; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(50; Status; Code[20])
        {
            Caption = 'Status';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(60; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Editable = false;
        }
        field(70; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Editable = false;
        }
        field(80; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(90; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(100; "New Expiration Date"; Date)
        {
            Caption = 'New Expiration Date';
        }
        field(110; "New Status"; Code[20])
        {
            Caption = 'New Status';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(120; "New Quarantine Date"; Date)
        {
            Caption = 'New Quarantine Date';
        }
        field(130; "New Retest Date"; Date)
        {
            Caption = 'New Retest Date';
        }
        field(140; "New Warranty Date"; Date)
        {
            Caption = 'New Warranty Date';
        }
        field(150; "New External Lot No."; Text[30])
        {
            Caption = 'New External Lot No.';
        }
        field(160; "Release/Blocking User ID"; Code[50])
        {
            Caption = 'Release/Blocking User ID';
            Description = '#QMW18.00.00.03:T502';
        }
        field(170; "Last Test by"; Code[50])
        {
            Caption = 'Last Test by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(180; "Last Test Date"; Date)
        {
            Caption = 'Last Test Date';
            Editable = false;
        }
        field(190; "Last Test Resp. Center Code"; Code[10])
        {
            Caption = 'Last Test Resp. Center Code';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(200; "Last Test Order No."; Code[20])
        {
            Caption = 'Last Test Order No.';
            Editable = false;
            TableRelation = "Test Order";
        }
        field(210; "Original Lot No."; Code[30])
        {
            Caption = 'Original Lot No.';
            Editable = false;
        }
        field(220; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Editable = false;
        }
        field(230; "New Entry Date"; Date)
        {
            Caption = 'New Entry Date';
        }
        field(240; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
            Description = '#PMW16.00.03:T251';
        }
        field(250; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
        }
        field(260; "Item Description"; Text[50])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Item No.")));
            Caption = 'Item Description';
            Description = '#QMW17.00:104';
            Editable = false;
            FieldClass = FlowField;
        }
        field(270; "Lot Inventory"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Variant Code" = FIELD ("Variant Code"),
                                                                  "Lot No." = FIELD ("Lot No."),
                                                                  "Location Code" = FIELD ("Location Filter")));
            Caption = 'Lot Inventory';
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
        field(5012502; "New Lot No. Trading Unit"; Code[20])
        {
            Caption = 'New Lot No. Trading Unit';
            Description = '#PMW16.00.02:T271,#PMW17.00:T103';
        }
        field(5012503; "New Trading Unit No."; Code[20])
        {
            Caption = 'New Trading Unit No.';
            Description = '#PMW16.00.02:T271,#PMW17.00:T103';
        }
        field(5012504; "Original Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Original Lot No. Trading Unit';
            Description = '#PMW16.00.02:T271';
        }
        field(5012505; "Original Trading Unit No."; Code[20])
        {
            Caption = 'Original Trading Unit No.';
            Description = '#PMW16.00.02:T271';
        }
        field(5012506; "Lot No. Trading Unit Inventory"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Variant Code" = FIELD ("Variant Code"),
                                                                  "Lot No. Trading Unit" = FIELD ("Lot No. Trading Unit"),
                                                                  "Location Code" = FIELD ("Location Filter")));
            Caption = 'Lot No. Inventory';
            DecimalPlaces = 0 : 5;
            Description = '#PMW16.00.02:T271,#PMW16.00.02.05:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012507; "Trading Unit Inventory"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Variant Code" = FIELD ("Variant Code"),
                                                                  "Lot No. Trading Unit" = FIELD ("Lot No. Trading Unit"),
                                                                  "Trading Unit No." = FIELD ("Trading Unit No."),
                                                                  "Location Code" = FIELD ("Location Filter")));
            Caption = 'Trading Unit Inventory';
            DecimalPlaces = 0 : 5;
            Description = '#PMW16.00.02.05:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034550; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
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
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034552; "Inventory (incl. Bin)"; Decimal)
        {
            CalcFormula = Sum ("Inventory Overview"."Quantity (Base)" WHERE ("Item No." = FIELD ("Item No."),
                                                                            "Variant Code" = FIELD ("Variant Code"),
                                                                            "Lot No." = FIELD ("Lot No."),
                                                                            "Serial No." = FIELD ("Serial No."),
                                                                            "Location Code" = FIELD ("Location Filter"),
                                                                            "Bin Code" = FIELD ("Bin Filter")));
            Caption = 'Inventory (incl. Bin)';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.03:R459';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034553; "Lot Inventory (incl. Bin)"; Decimal)
        {
            CalcFormula = Sum ("Inventory Overview"."Quantity (Base)" WHERE ("Item No." = FIELD ("Item No."),
                                                                            "Variant Code" = FIELD ("Variant Code"),
                                                                            "Lot No." = FIELD ("Lot No."),
                                                                            "Location Code" = FIELD ("Location Filter"),
                                                                            "Bin Code" = FIELD ("Bin Filter")));
            Caption = 'Lot Inventory (incl. Bin)';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.03:R459';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034554; "Retain Sample"; Boolean)
        {
            Caption = 'Retain Sample';
            Description = '#QMW18.00.01:T105';
        }
        field(5034555; "Elimination Date"; Date)
        {
            Caption = 'Elimination Date';
            Description = '#QMW18.00.01:T105';
        }
        field(5034556; "Retain Location Code"; Code[10])
        {
            Caption = 'Retain Location Code';
            Description = '#QMW18.00.01:T105';
            TableRelation = Location;
        }
        field(5034557; "Retain Bin Code"; Code[20])
        {
            Caption = 'Retain Bin Code';
            Description = '#QMW18.00.01:T105';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Retain Location Code"));
        }
        field(5034558; "Retain Entry No."; Integer)
        {
            Caption = 'Retain Entry No.';
            Description = '#QMW18.00.01:T105';
        }
        field(5034559; "No Retain Valuation"; Boolean)
        {
            Caption = 'No Retain Vlaluation';
            Description = '#QMW18.00.01:T105';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Lot No.", "Serial No.", "Retain Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Lot No.")
        {
        }
        key(Key3; "Serial No.")
        {
        }
        key(Key4; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

