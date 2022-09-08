table 7312 "Warehouse Entry"
{
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # New function "CheckLotChange"
    //   # Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnLookup, call ItemTrackingMgt.LookupLotSerialNoInfo
    //   # Trading Unit No. - OnValidate, call "CheckLotChange"
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    //   New Key: Item No.,Variant Code,Lot No.,Serial No.
    //   New Fields
    // 
    // #QMW16.00.03:T508 24.08.11 DEMSR.KHS
    //   NewKey: Item No.,Variant Code,Serial No.,Lot No.,Location Code,Entry No.,Reference Document
    // L-MOBILE 2016-08-30 LM2.00
    //   key
    //     "Location Code,Bin Code,Item No.,Variant Code,Serial No.,Lot No."
    //   defined

    Caption = 'Warehouse Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(3; "Line No."; Integer)
        {
            BlankZero = true;
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
        field(6; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
            TableRelation = Zone.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(7; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
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
        field(20; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(21; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(22; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(23; "Source Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Line No.';
        }
        field(24; "Source Subline No."; Integer)
        {
            Caption = 'Source Subline No.';
        }
        field(25; "Source Document"; Option)
        {
            BlankZero = true;
            Caption = 'Source Document';
            OptionCaption = ',S. Order,S. Invoice,S. Credit Memo,S. Return Order,P. Order,P. Invoice,P. Credit Memo,P. Return Order,Inb. Transfer,Outb. Transfer,Prod. Consumption,Item Jnl.,Phys. Invt. Jnl.,Reclass. Jnl.,Consumption Jnl.,Output Jnl.,BOM Jnl.,Serv. Order,Job Jnl.,Assembly Consumption,Assembly Order';
            OptionMembers = ,"S. Order","S. Invoice","S. Credit Memo","S. Return Order","P. Order","P. Invoice","P. Credit Memo","P. Return Order","Inb. Transfer","Outb. Transfer","Prod. Consumption","Item Jnl.","Phys. Invt. Jnl.","Reclass. Jnl.","Consumption Jnl.","Output Jnl.","BOM Jnl.","Serv. Order","Job Jnl.","Assembly Consumption","Assembly Order";
        }
        field(26; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(29; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(33; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(35; "Bin Type Code"; Code[10])
        {
            Caption = 'Bin Type Code';
            TableRelation = "Bin Type";
        }
        field(40; Cubage; Decimal)
        {
            Caption = 'Cubage';
            DecimalPlaces = 0 : 5;
        }
        field(41; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(45; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
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
        field(55; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Negative Adjmt.,Positive Adjmt.,Movement';
            OptionMembers = "Negative Adjmt.","Positive Adjmt.",Movement;
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
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
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
        }
        field(6503; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(7380; "Phys Invt Counting Period Code"; Code[10])
        {
            Caption = 'Phys Invt Counting Period Code';
            Editable = false;
            TableRelation = "Phys. Invt. Counting Period";
        }
        field(7381; "Phys Invt Counting Period Type"; Option)
        {
            Caption = 'Phys Invt Counting Period Type';
            Editable = false;
            OptionCaption = ' ,Item,SKU';
            OptionMembers = " ",Item,SKU;
        }
        field(7382; Dedicated; Boolean)
        {
            Caption = 'Dedicated';
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
        field(5034630; "Avail. Status"; Code[20])
        {
            Caption = 'Avail. Status';
            Description = '#QMW16.00.02:X002';
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
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Reference No.", "Registering Date")
        {
        }
        key(Key3; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.", "Source Document", "Bin Code")
        {
        }
        key(Key4; "Serial No.", "Item No.", "Variant Code", "Location Code", "Bin Code")
        {
            Enabled = false;
            SumIndexFields = "Qty. (Base)";
        }
        key(Key5; "Item No.", "Bin Code", "Location Code", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.", "Entry Type", Dedicated)
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Base)", Cubage, Weight, Quantity;
        }
        key(Key6; "Item No.", "Location Code", "Variant Code", "Bin Type Code", "Unit of Measure Code", "Lot No.", "Serial No.", Dedicated)
        {
            SumIndexFields = "Qty. (Base)", Cubage, Weight;
        }
        key(Key7; "Bin Code", "Location Code", "Item No.")
        {
            SumIndexFields = Cubage, Weight, "Qty. (Base)";
        }
        key(Key8; "Location Code", "Item No.", "Variant Code", "Zone Code", "Bin Code", "Lot No.")
        {
            SumIndexFields = "Qty. (Base)";
        }
        key(Key9; "Location Code")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Qty. (Base)";
        }
        key(Key10; "Lot No.")
        {
            Enabled = false;
        }
        key(Key11; "Serial No.")
        {
            Enabled = false;
        }
        key(Key12; "Item No.", "Variant Code", "Location Code", "Bin Code")
        {
        }
        key(Key13; "Location Code", "Bin Code", "Item No.", "Variant Code", "Registering Date")
        {
            SumIndexFields = "Qty. (Base)";
        }
        key(Key14; "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
        }
        key(Key15; "Item No.", "Variant Code", "Unit of Measure Code", "Serial No.", "Lot No.", "Location Code", "Bin Code", "Whse. Document Type", "Entry Type", "Reference Document", Quantity)
        {
            SumIndexFields = "Qty. (Base)", Quantity;
        }
        key(Key16; "Location Code", "Bin Code", "Item No.", "Variant Code", "Serial No.", "Lot No.")
        {
            SumIndexFields = "Qty. (Base)";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", "Registering Date", "Entry No.", "Location Code", "Item No.")
        {
        }
    }
}

