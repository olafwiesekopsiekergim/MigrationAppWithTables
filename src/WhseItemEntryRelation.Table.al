table 6509 "Whse. Item Entry Relation"
{
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    //   # New function "CheckLotChange"
    //   # Lot No. - OnValidate, call "CheckLotChange"
    //   # Lot No. Trading Unit - OnValidate, call "CheckLotChange"
    //   # Trading Unit No. - OnValidate, call "CheckLotChange"
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Whse. Item Entry Relation';

    fields
    {
        field(1; "Item Entry No."; Integer)
        {
            Caption = 'Item Entry No.';
            TableRelation = "Item Ledger Entry";
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
        field(20; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(21; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(30; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(31; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
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
    }

    keys
    {
        key(Key1; "Item Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source ID", "Source Type", "Source Subtype", "Source Ref. No.", "Source Prod. Order Line", "Source Batch Name")
        {
        }
        key(Key3; "Order No.", "Order Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

