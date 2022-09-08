table 99000853 "Inventory Profile"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # Function TransferFromItemLedgerEntry, transfer trading unit
    //   # Function TransferToTrackingEntry, transfer trading unit
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   # Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :DMW13.60:1:01 #Funktion, die aus Konstruktionszeile einen Datensatz Inventory Profile generiert
    // 
    // :DMW13.70.01:1:01 #Erweiterungen für Konstruktionskopf und "Beleg Stückliste"
    // 
    // :DMW14.03:1:02 #neue Felder 5013400; 5013410
    // :DMW16.00:6:01 #Construction Header is a Supply, so there must not be a negation
    // 
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T104 28.05.15 DEMSR.SSZ
    //   #Deleted posting fields in CTO tables;
    // 
    // #QMW17.10.00.01:T507 13.12.13 DEMSR.KHS
    //   Update Lot Status fields on rebuild of Tracking Entries
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // TMW17.10.01:T100 17.09.14 DEMSR.SSZ
    //   #New Text Module technique. Always transfer the new field "Text Set ID"

    Caption = 'Inventory Profile';

    fields
    {
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Attribute Priority"; Integer)
        {
            Caption = 'Attribute Priority';
        }
        field(5; "Order Priority"; Integer)
        {
            Caption = 'Order Priority';
        }
        field(11; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(12; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(13; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(14; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(15; IsSupply; Boolean)
        {
            Caption = 'IsSupply';
        }
        field(16; "Order Relation"; Option)
        {
            Caption = 'Order Relation';
            OptionCaption = 'Normal,Safety Stock,Reorder Point';
            OptionMembers = Normal,"Safety Stock","Reorder Point";
        }
        field(21; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(22; "Source Order Status"; Integer)
        {
            Caption = 'Source Order Status';
        }
        field(23; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(24; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(25; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(26; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(27; "Primary Order Status"; Integer)
        {
            Caption = 'Primary Order Status';
        }
        field(28; "Primary Order No."; Code[20])
        {
            Caption = 'Primary Order No.';
        }
        field(29; "Primary Order Line"; Integer)
        {
            Caption = 'Primary Order Line';
        }
        field(30; "Primary Order Type"; Integer)
        {
            Caption = 'Primary Order Type';
        }
        field(31; "Original Quantity"; Decimal)
        {
            Caption = 'Original Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(32; "Remaining Quantity (Base)"; Decimal)
        {
            Caption = 'Remaining Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(33; "Untracked Quantity"; Decimal)
        {
            Caption = 'Untracked Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(34; "Original Due Date"; Date)
        {
            Caption = 'Original Due Date';
        }
        field(35; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(36; "Planning Flexibility"; Option)
        {
            Caption = 'Planning Flexibility';
            OptionCaption = 'Unlimited,None,Reduce Only';
            OptionMembers = Unlimited,"None","Reduce Only";
        }
        field(37; "Fixed Date"; Date)
        {
            Caption = 'Fixed Date';
        }
        field(38; "Action Message"; Option)
        {
            Caption = 'Action Message';
            OptionCaption = ' ,New,Change Qty.,Reschedule,Resched.& Chg. Qty.,Cancel';
            OptionMembers = " ",New,"Change Qty.",Reschedule,"Resched.& Chg. Qty.",Cancel;
        }
        field(39; Binding; Option)
        {
            Caption = 'Binding';
            Editable = false;
            OptionCaption = ' ,Order-to-Order';
            OptionMembers = " ","Order-to-Order";
        }
        field(40; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(41; "Min. Quantity"; Decimal)
        {
            Caption = 'Min. Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(42; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(43; "Planning Line No."; Integer)
        {
            Caption = 'Planning Line No.';
        }
        field(44; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
        }
        field(45; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(46; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(47; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(48; "Finished Quantity"; Decimal)
        {
            Caption = 'Finished Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(50; "Planning Level Code"; Integer)
        {
            Caption = 'Planning Level Code';
            Editable = false;
        }
        field(51; "Planning Line Phase"; Option)
        {
            Caption = 'Planning Line Phase';
            OptionCaption = ' ,Line Created,Routing Created,Exploded';
            OptionMembers = " ","Line Created","Routing Created",Exploded;
        }
        field(52; "Due Time"; Time)
        {
            Caption = 'Due Time';
        }
        field(53; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(54; "Drop Shipment"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Drop Shipment';
        }
        field(55; "Special Order"; Boolean)
        {
            Caption = 'Special Order';
        }
        field(56; "Ref. Order No."; Code[20])
        {
            Caption = 'Ref. Order No.';
            Editable = false;
        }
        field(57; "Ref. Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Ref. Line No.';
            Editable = false;
        }
        field(58; "Derived from Blanket Order"; Boolean)
        {
            Caption = 'Derived from Blanket Order';
        }
        field(59; "Ref. Blanket Order No."; Code[20])
        {
            Caption = 'Ref. Blanket Order No.';
        }
        field(60; "Tracking Reference"; Integer)
        {
            Caption = 'Tracking Reference';
        }
        field(61; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(62; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(63; "Max. Quantity"; Decimal)
        {
            Caption = 'Max. Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(64; "Safety Stock Quantity"; Decimal)
        {
            Caption = 'Safety Stock Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(65; "Is Exception Order"; Boolean)
        {
            Caption = 'Is Exception Order';
        }
        field(66; "Transfer Location Not Planned"; Boolean)
        {
            Caption = 'Transfer Location Not Planned';
        }
        field(67; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(68; "Ref. Order Type"; Option)
        {
            Caption = 'Ref. Order Type';
            Editable = false;
            OptionCaption = ' ,Purchase,Prod. Order,Transfer,Assembly';
            OptionMembers = " ",Purchase,"Prod. Order",Transfer,Assembly;
        }
        field(69; "Disallow Cancellation"; Boolean)
        {
            Caption = 'Disallow Cancellation';
        }
        field(70; "MPS Order"; Boolean)
        {
            Caption = 'MPS Order';
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
        field(5013400; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5013410; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(5013480; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013481; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013482; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = '#DMW16.00.02:T102';
        }
        field(5034550; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW17.10.00.01:T507';
            Editable = false;
        }
        field(5034551; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW17.10.00.01:T507';
            Editable = false;
        }
        field(5034552; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW17.10.00.01:T507';
            Editable = false;
        }
        field(5034553; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW17.10.00.01:T507';
        }
        field(5034554; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Description = '#QMW17.10.00.01:T507';
            Editable = false;
        }
        field(5034555; "Appl.-from Item Entry"; Integer)
        {
            Caption = 'Appl.-from Item Entry';
            Description = '#QMW17.10.00.01:T507';
            MinValue = 0;
        }
        field(5034556; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#QMW17.10.00.01:T507';
        }
        field(5034557; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW17.10.00.01:T507';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Variant Code", "Location Code", "Due Date", "Attribute Priority", "Order Priority")
        {
        }
        key(Key3; "Item No.", "Variant Code", "Location Code", IsSupply, "Primary Order Status", "Primary Order No.", "Due Date", "Order Priority")
        {
        }
        key(Key4; "Source Type", "Source Order Status", "Source ID", "Source Batch Name", "Source Ref. No.", "Source Prod. Order Line", IsSupply, "Due Date")
        {
        }
    }

    fieldgroups
    {
    }
}

