table 5034653 "8D Tracking Information"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T101 30.03.15 DEMSR.KHS
    //   Create Object
    // 
    // #PMW18.00.01:T101 30.03.15 DEMSR.KHS
    //   Add Trading Unit fields

    Caption = '8D Tracking Information';
    DataCaptionFields = "Item No.", "Variant Code", "Serial No.", Description;

    fields
    {
        field(1; "8D Report No."; Code[20])
        {
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(30; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(40; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(100; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            TableRelation = "Lot No. Information"."Lot No." WHERE ("Item No." = FIELD ("Item No."),
                                                                   "Variant Code" = FIELD ("Variant Code"));
        }
        field(150; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Editable = false;
        }
        field(160; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(170; Status; Code[20])
        {
            Caption = 'Status';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(180; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Editable = false;
        }
        field(190; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Editable = false;
        }
        field(200; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(210; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Editable = false;
        }
        field(250; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW18.00.01:T101';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = '#PMW18.00.01:T101';
        }
    }

    keys
    {
        key(Key1; "8D Report No.", "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

