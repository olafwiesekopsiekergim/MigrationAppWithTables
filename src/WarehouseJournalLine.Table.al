table 7311 "Warehouse Journal Line"
{
    // 
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # New field 5012502 "New Lot No. Trading Unit"
    //   # New field 5012503 "New Trading Unit No."
    //   # New function "CheckLotChange"
    //   # New Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnLookup, call ItemTrackingMgt.LookupLotSerialNoInfo
    //   # Trading Unit No. - OnValidate, call "CheckLotChange"
    //   # New Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # New Trading Unit No. - OnValidate, call "CheckLotChange"
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW16.00.02:X002 20.10.10 DEMSR.KHS
    //   Inventory Posting Permission
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Added comment:
    //     New Key: Item No.,Variant Code,Lot No.,Serial No.
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Fields added: "Retain Sample", "Elimination Date"
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T112 24.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New fields (see description column)

    Caption = 'Warehouse Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Warehouse Journal Template";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Registering Date"; Date)
        {
            Caption = 'Registering Date';
        }
        field(5; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(6; "From Zone Code"; Code[10])
        {
            Caption = 'From Zone Code';
            TableRelation = Zone.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(7; "From Bin Code"; Code[20])
        {
            Caption = 'From Bin Code';
            TableRelation = IF ("Phys. Inventory" = CONST (false),
                                "Item No." = FILTER (''),
                                "From Zone Code" = FILTER ('')) "Bin Content"."Bin Code" WHERE ("Location Code" = FIELD ("Location Code"))
            ELSE
            IF ("Phys. Inventory" = CONST (false),
                                         "Item No." = FILTER (<> ''),
                                         "From Zone Code" = FILTER ('')) "Bin Content"."Bin Code" WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                      "Item No." = FIELD ("Item No."))
            ELSE
            IF ("Phys. Inventory" = CONST (false),
                                                                                                               "Item No." = FILTER (''),
                                                                                                               "From Zone Code" = FILTER (<> '')) "Bin Content"."Bin Code" WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                                                                                              "Zone Code" = FIELD ("From Zone Code"))
            ELSE
            IF ("Phys. Inventory" = CONST (false),
                                                                                                                                                                                       "Item No." = FILTER (<> ''),
                                                                                                                                                                                       "From Zone Code" = FILTER (<> '')) "Bin Content"."Bin Code" WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                                                                                                                                                                      "Item No." = FIELD ("Item No."),
                                                                                                                                                                                                                                                      "Zone Code" = FIELD ("From Zone Code"))
            ELSE
            IF ("Phys. Inventory" = CONST (true),
                                                                                                                                                                                                                                                               "From Zone Code" = FILTER ('')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"))
            ELSE
            IF ("Phys. Inventory" = CONST (true),
                                                                                                                                                                                                                                                                        "From Zone Code" = FILTER (<> '')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                                                                                                                                                                                                                                                       "Zone Code" = FIELD ("From Zone Code"));
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item WHERE (Type = CONST (Inventory));
        }
        field(10; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Qty. (Base)"; Decimal)
        {
            Caption = 'Qty. (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Qty. (Absolute)"; Decimal)
        {
            Caption = 'Qty. (Absolute)';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Qty. (Absolute, Base)"; Decimal)
        {
            Caption = 'Qty. (Absolute, Base)';
            DecimalPlaces = 0 : 5;
        }
        field(14; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
            TableRelation = Zone.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(15; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = IF ("Zone Code" = FILTER ('')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"))
            ELSE
            IF ("Zone Code" = FILTER (<> '')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                               "Zone Code" = FIELD ("Zone Code"));
        }
        field(20; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Editable = false;
        }
        field(21; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(22; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
        }
        field(23; "Source Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Line No.';
            Editable = false;
        }
        field(24; "Source Subline No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Subline No.';
            Editable = false;
        }
        field(25; "Source Document"; Option)
        {
            BlankZero = true;
            Caption = 'Source Document';
            Editable = false;
            OptionCaption = ',S. Order,S. Invoice,S. Credit Memo,S. Return Order,P. Order,P. Invoice,P. Credit Memo,P. Return Order,Inb. Transfer,Outb. Transfer,Prod. Consumption,Item Jnl.,Phys. Invt. Jnl.,Reclass. Jnl.,Consumption Jnl.,Output Jnl.,BOM Jnl.,Serv Order,Job Jnl.,Assembly Consumption,Assembly Order';
            OptionMembers = ,"S. Order","S. Invoice","S. Credit Memo","S. Return Order","P. Order","P. Invoice","P. Credit Memo","P. Return Order","Inb. Transfer","Outb. Transfer","Prod. Consumption","Item Jnl.","Phys. Invt. Jnl.","Reclass. Jnl.","Consumption Jnl.","Output Jnl.","BOM Jnl.","Serv Order","Job Jnl.","Assembly Consumption","Assembly Order";
        }
        field(26; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(27; "To Zone Code"; Code[10])
        {
            Caption = 'To Zone Code';
            TableRelation = Zone.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(28; "To Bin Code"; Code[20])
        {
            Caption = 'To Bin Code';
            TableRelation = IF ("To Zone Code" = FILTER ('')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"))
            ELSE
            IF ("To Zone Code" = FILTER (<> '')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                                  "Zone Code" = FIELD ("To Zone Code"));
        }
        field(29; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(33; "Registering No. Series"; Code[10])
        {
            Caption = 'Registering No. Series';
            TableRelation = "No. Series";
        }
        field(35; "From Bin Type Code"; Code[10])
        {
            Caption = 'From Bin Type Code';
            TableRelation = "Bin Type";
        }
        field(40; Cubage; Decimal)
        {
            Caption = 'Cubage';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(41; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(50; "Whse. Document No."; Code[20])
        {
            Caption = 'Whse. Document No.';
        }
        field(51; "Whse. Document Type"; Option)
        {
            Caption = 'Whse. Document Type';
            OptionCaption = 'Whse. Journal,Receipt,Shipment,Internal Put-away,Internal Pick,Production,Whse. Phys. Inventory, ,Assembly';
            OptionMembers = "Whse. Journal",Receipt,Shipment,"Internal Put-away","Internal Pick",Production,"Whse. Phys. Inventory"," ",Assembly;
        }
        field(52; "Whse. Document Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Whse. Document Line No.';
        }
        field(53; "Qty. (Calculated)"; Decimal)
        {
            Caption = 'Qty. (Calculated)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(54; "Qty. (Phys. Inventory)"; Decimal)
        {
            Caption = 'Qty. (Phys. Inventory)';
            DecimalPlaces = 0 : 5;
        }
        field(55; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Negative Adjmt.,Positive Adjmt.,Movement';
            OptionMembers = "Negative Adjmt.","Positive Adjmt.",Movement;
        }
        field(56; "Phys. Inventory"; Boolean)
        {
            Caption = 'Phys. Inventory';
            Editable = false;
        }
        field(60; "Reference Document"; Option)
        {
            Caption = 'Reference Document';
            OptionCaption = ' ,Posted Rcpt.,Posted P. Inv.,Posted Rtrn. Rcpt.,Posted P. Cr. Memo,Posted Shipment,Posted S. Inv.,Posted Rtrn. Shipment,Posted S. Cr. Memo,Posted T. Receipt,Posted T. Shipment,Item Journal,Prod.,Put-away,Pick,Movement,BOM Journal,Job Journal,Assembly';
            OptionMembers = " ","Posted Rcpt.","Posted P. Inv.","Posted Rtrn. Rcpt.","Posted P. Cr. Memo","Posted Shipment","Posted S. Inv.","Posted Rtrn. Shipment","Posted S. Cr. Memo","Posted T. Receipt","Posted T. Shipment","Item Journal","Prod.","Put-away",Pick,Movement,"BOM Journal","Job Journal",Assembly;
        }
        field(61; "Reference No."; Code[20])
        {
            Caption = 'Reference No.';
        }
        field(67; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(68; "Qty. (Calculated) (Base)"; Decimal)
        {
            Caption = 'Qty. (Calculated) (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(69; "Qty. (Phys. Inventory) (Base)"; Decimal)
        {
            Caption = 'Qty. (Phys. Inventory) (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(6500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(6502; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(6503; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(6504; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
            Editable = false;
        }
        field(6505; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
            Editable = false;
        }
        field(6506; "New Expiration Date"; Date)
        {
            Caption = 'New Expiration Date';
            Editable = false;
        }
        field(7380; "Phys Invt Counting Period Code"; Code[10])
        {
            Caption = 'Phys Invt Counting Period Code';
            Editable = false;
            TableRelation = "Phys. Invt. Counting Period";
        }
        field(7381; "Phys Invt Counting Period Type"; Option)
        {
            AccessByPermission = TableData "Phys. Invt. Item Selection" = R;
            Caption = 'Phys Invt Counting Period Type';
            Editable = false;
            OptionCaption = ' ,Item,SKU';
            OptionMembers = " ",Item,SKU;
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
            Description = '#QMW16.00.02:X002';
            InitValue = 1;
        }
        field(5034554; "Retain Sample"; Boolean)
        {
            Description = '#QMW18.00.01:T105';
        }
        field(5034555; "Elimination Date"; Date)
        {
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
        field(5034620; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.02:X002';
        }
        field(5034621; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.02:X002';
        }
        field(5034622; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.02:X002';
        }
        field(5034624; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.02:X002';
        }
        field(5034630; "Avail. Status"; Code[20])
        {
            Caption = 'Avail. Status';
            Description = '#QMW16.00.02:X002';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034631; "Avail. Expiration Date"; Date)
        {
            Caption = 'Avail. Expiration Date';
            Description = '#QMW16.00.02:X002';
        }
        field(5034632; "Avail. Availability Date"; Date)
        {
            Caption = 'Avail. Availability Date';
            Description = '#QMW16.00.02:X002';
        }
        field(5034634; "Lot Block/Release Posting"; Boolean)
        {
            Caption = 'Lot Block/Release Posting';
            Description = '#QMW16.00.02:X002';
        }
        field(5034637; "Item Jnl. Line Entry Type"; Option)
        {
            Caption = 'Item Jnl. Line Entry Type';
            Description = '#QMW16.00.02:X002';
            OptionCaption = ' ,Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output';
            OptionMembers = " ",Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output;
        }
        field(5307940; "Mobile Dialog Processed"; Boolean)
        {
            Caption = 'Mobile Dialog Processed';
            Description = 'CCMS';
            Editable = false;
        }
        field(5307941; "Mobile Session GUID"; Guid)
        {
            Caption = 'Mobile Session GUID';
            Description = 'CCMS';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Location Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Location Code", "Entry Type", "From Bin Type Code", "Variant Code", "Unit of Measure Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Absolute, Base)";
        }
        key(Key3; "Item No.", "From Bin Code", "Location Code", "Entry Type", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Absolute, Base)", "Qty. (Absolute)", Cubage, Weight;
        }
        key(Key4; "Item No.", "To Bin Code", "Location Code", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Absolute, Base)", "Qty. (Absolute)";
        }
        key(Key5; "To Bin Code", "Location Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Cubage, Weight, "Qty. (Absolute)";
        }
        key(Key6; "Location Code", "Item No.", "Variant Code")
        {
        }
        key(Key7; "Location Code", "Bin Code", "Item No.", "Variant Code")
        {
        }
        key(Key8; "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

