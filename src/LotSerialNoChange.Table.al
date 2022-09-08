table 5034695 "Lot-/Serial No. Change"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:T380 19.08.11 DEMSR.KHS
    //   Implementation of Regulatory Affairs
    //   Object created
    // 
    // #QMW16.00.03.01:T514 20.12.11 DEMSR.KHS
    //   Table Name changed
    //   Table Caption changed
    //   Field Captions added
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Add DEU Captions for PM fields
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW16.00.03:T270 22.08.11 DEMSR.KHS
    //   New Fields: New Lot No. Trading Unit
    //               New Trading Unit No.

    Caption = 'Lot-/Serial No. Change';
    DataCaptionFields = "Item No.", "Variant Code", "Lot No.";

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
        field(230; "New Entry Date"; Date)
        {
            Caption = 'New Entry Date';
        }
        field(240; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
        }
        field(250; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
        }
        field(5012502; "New Lot No. Trading Unit"; Code[20])
        {
            Caption = 'New Lot No. Trading Unit';
            Description = '#PMW16.00.03:T270';
        }
        field(5012503; "New Trading Unit No."; Code[20])
        {
            Caption = 'New Trading Unit No.';
            Description = '#PMW16.00.03:T270';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
            Clustered = true;
        }
        key(Key2; "Lot No.")
        {
        }
        key(Key3; "Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

