table 5012531 "Delivery Tolerance Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.00:2473:1
    //   # Object created.
    // 
    // :PMW14.02:169:1
    //   # Options of fields "Entry Type" and "Source Type" extended by Production
    // 
    // :PMW14.02.01:105:1
    //   # New field 32 "Calculate New Price"
    // 
    // #PMW16.00.03:T106 22.09.11 DEMSR.IST
    //   New field 33 "Qty. Picked"
    //   New field 34 "Qty. Picked (Base)"
    // 
    // #PMW17.10.00.02:T105 04.30.2014 DEMSR.LV
    //   Change Calculate New Price Field-Type from boolean to option
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW18.00.00.07:T503 08.07.15 DEMSR.IST
    //   Field "External Document No." expanded to code 35

    Caption = 'Delivery Tolerance Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Description = ':PMW14.02:169:1';
            OptionCaption = 'Purchase,Sale,Production';
            OptionMembers = Purchase,Sale,Production;
        }
        field(3; "Source Type 1"; Integer)
        {
            Caption = 'Source Type 1';
        }
        field(4; "Source Subtype 1"; Option)
        {
            Caption = 'Source Subtype 1';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(5; "Source ID 1"; Code[20])
        {
            Caption = 'Source ID 1';
        }
        field(6; "Source Ref. No. 1"; Integer)
        {
            Caption = 'Source Ref. No. 1';
        }
        field(7; "Source Type 2"; Integer)
        {
            Caption = 'Source Type 2';
        }
        field(8; "Source Subtype 2"; Option)
        {
            Caption = 'Source Subtype 2';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(9; "Source ID 2"; Code[20])
        {
            Caption = 'Source ID 2';
        }
        field(10; "Source Ref. No. 2"; Integer)
        {
            Caption = 'Source Ref. No. 2';
        }
        field(11; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(12; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(13; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(14; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item,,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,,"Fixed Asset","Charge (Item)";
        }
        field(15; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST("G/L Account")) "G/L Account"
            ELSE
            IF (Type = CONST(Item)) Item
            ELSE
            IF (Type = CONST(3)) Resource
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF (Type = CONST("Charge (Item)")) "Item Charge";
        }
        field(16; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':PMW14.02:169:1';
            OptionCaption = ' ,Customer,Vendor,Production';
            OptionMembers = " ",Customer,Vendor,Production;
        }
        field(17; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST(Customer)) Customer
            ELSE
            IF ("Source Type" = CONST(Vendor)) Vendor;
        }
        field(18; "Delivery Tolerance Code"; Code[10])
        {
            Caption = 'Delivery Tolerance Code';
            TableRelation = "Delivery Tolerance";
        }
        field(19; "Overdelivery Tolerance %"; Decimal)
        {
            Caption = 'Overdelivery Tolerance %';
            DecimalPlaces = 0 : 2;
        }
        field(20; "Underdelivery Tolerance %"; Decimal)
        {
            Caption = 'Underdelivery Tolerance %';
            DecimalPlaces = 0 : 2;
        }
        field(21; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(22; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(23; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(24; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(25; "Outstanding Quantity"; Decimal)
        {
            Caption = 'Outstanding Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(26; "Outstanding Quantity (Base)"; Decimal)
        {
            Caption = 'Outstanding Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(27; "Qty. to Handle"; Decimal)
        {
            Caption = 'Qty. to Handle';
            DecimalPlaces = 0 : 5;
        }
        field(28; "Qty. to Handle (Base)"; Decimal)
        {
            Caption = 'Qty. to Handle (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(29; "Original Quantity"; Decimal)
        {
            Caption = 'Original Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(30; "Original Quantity (Base)"; Decimal)
        {
            Caption = 'Original Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(31; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(32; "Calculate New Price"; Option)
        {
            Caption = 'Calculate New Price';
            Description = '#PMW17.10.00.02:T105';
            OptionCaption = 'No,On Underdelivery,On Overdelivery,Always';
            OptionMembers = No,"On Underdelivery","On Overdelivery",Always;
        }
        field(33; "Qty. Picked"; Decimal)
        {
            Caption = 'Qty. Picked';
            DecimalPlaces = 0 : 5;
            Description = '#PMW16.00.03:T106';
        }
        field(34; "Qty. Picked (Base)"; Decimal)
        {
            Caption = 'Qty. Picked (Base)';
            DecimalPlaces = 0 : 5;
            Description = '#PMW16.00.03:T106';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type 1", "Source Subtype 1", "Source ID 1", "Source Ref. No. 1", "Posting Date")
        {
        }
        key(Key3; "Source Type 2", "Source Subtype 2", "Source ID 2", "Source Ref. No. 2", "Posting Date")
        {
        }
        key(Key4; Type, "No.", "Posting Date")
        {
        }
        key(Key5; "Source Type", "Source No.", "Posting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

