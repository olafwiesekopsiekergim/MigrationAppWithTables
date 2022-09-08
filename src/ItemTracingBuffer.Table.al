table 6520 "Item Tracing Buffer"
{
    // #QMW16.00.02:R287 04.10.10 DEMSR.KHS
    //   Callback List
    // 
    // #QMW16.00.03:R449 11.07.11 DEMSR.KHS
    //   New fields:
    //     5034560 "Test Quality"
    //     5034561 "External Lot No."
    //     5034562 Status
    //     5034563 "Quarantine Date"
    //     5034564 "Retest Date"
    //     5034565 "Warranty Date"
    // 
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    // 
    // #PMW16.00.02:T271 18.11.10 DEMSR.KHS Integration of Trading Unit from PM into QM
    //   New Fields:
    //     5012502 "Component of Lot No. Trdg Unit"
    //     5012503 "Component of Trading Unit No."
    //     5012504 "Prod. using Lot No. Trdg Unit"
    //     5012505 "Produced using Trdg Unit No."
    // 
    // #PMW17.10.01:T102 08.09.14 DEMSR.KHS
    //   New fields: 5012420 Production Structure No.
    //               5012421 Production BOM No.
    //               5012422 Production BOM Version Code
    //               5012423 Production Routing No.
    //               5012424 Prod. Routing Version Code

    Caption = 'Item Tracing Buffer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Parent Item Ledger Entry No."; Integer)
        {
            Caption = 'Parent Item Ledger Entry No.';
            Editable = false;
        }
        field(3; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(6; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Editable = false;
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output, ,Assembly Consumption,Assembly Output';
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output," ","Assembly Consumption","Assembly Output";
        }
        field(7; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Item';
            OptionMembers = " ",Customer,Vendor,Item;
        }
        field(8; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST (Item)) Item;
        }
        field(9; "Source Name"; Text[50])
        {
            Caption = 'Source Name';
            Editable = false;
        }
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(11; Description; Text[100])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(12; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Editable = false;
            TableRelation = Location;
        }
        field(13; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(14; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(16; Open; Boolean)
        {
            Caption = 'Open';
            Editable = false;
        }
        field(17; Positive; Boolean)
        {
            Caption = 'Positive';
            Editable = false;
        }
        field(18; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(19; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            Editable = false;
        }
        field(20; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Editable = false;
        }
        field(21; "Item Ledger Entry No."; Integer)
        {
            Caption = 'Item Ledger Entry No.';
            Editable = false;
            TableRelation = "Item Ledger Entry";
        }
        field(22; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(23; "Created on"; Date)
        {
            Caption = 'Created on';
            Editable = false;
        }
        field(24; "Record Identifier"; RecordID)
        {
            Caption = 'Record Identifier';
            Editable = false;
        }
        field(25; "Item Description"; Text[50])
        {
            Caption = 'Item Description';
        }
        field(26; "Already Traced"; Boolean)
        {
            Caption = 'Already Traced';
            Editable = false;
        }
        field(5012420; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = '#PMW17.10.01:T102';
            TableRelation = "Production Structure Header";
        }
        field(5012421; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            Description = '#PMW17.10.01:T102';
        }
        field(5012422; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            Description = '#PMW17.10.01:T102';
        }
        field(5012423; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Description = '#PMW17.10.01:T102';
        }
        field(5012424; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            Description = '#PMW17.10.01:T102';
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012502; "Component of Lot No. Trdg Unit"; Code[20])
        {
            Caption = 'Component of Lot No. Trading Unit';
            Description = '#PMW16.00.02:T271';
        }
        field(5012503; "Component of Trading Unit No."; Code[20])
        {
            Caption = 'Component of Trading Unit No.';
            Description = '#PMW16.00.02:T271';
        }
        field(5012504; "Prod. using Lot No. Trdg Unit"; Code[20])
        {
            Caption = 'Prod. using Lot No. Trdg Unit';
            Description = '#PMW16.00.02:T271';
        }
        field(5012505; "Produced using Trdg Unit No."; Code[20])
        {
            Caption = 'Produced using Trdg Unit No.';
            Description = '#PMW16.00.02:T271';
        }
        field(5034550; "Search Direction"; Option)
        {
            Caption = 'Search Direction';
            Description = '#QMW16.00.02:R287';
            OptionCaption = 'Forward,Backward, ';
            OptionMembers = Forward,Backward," ";
        }
        field(5034551; "Component of Item No."; Code[20])
        {
            Caption = 'Component of Item No.';
            Description = '#QMW16.00.02:R287';
        }
        field(5034552; "Component of Lot No."; Code[20])
        {
            Caption = 'Component of Lot No.';
            Description = '#QMW16.00.02:R287';
        }
        field(5034553; "Component of Serial No."; Code[20])
        {
            Caption = 'Component of Serial No.';
            Description = '#QMW16.00.02:R287';
        }
        field(5034554; "Produced using Item No."; Code[20])
        {
            Caption = 'Produced using Item No.';
            Description = '#QMW16.00.02:R287';
        }
        field(5034555; "Produced using Lot No."; Code[20])
        {
            Caption = 'Produced using Lot No.';
            Description = '#QMW16.00.02:R287';
        }
        field(5034556; "Produced using Serial No."; Code[20])
        {
            Caption = 'Produced using Serial No.';
            Description = '#QMW16.00.02:R287';
        }
        field(5034557; "Relational Info"; Option)
        {
            Caption = 'Relational Info';
            Description = '#QMW16.00.02:R287';
            OptionCaption = ' ,Component,Produced,Purchased';
            OptionMembers = " ",Component,Produced,Purchased;
        }
        field(5034560; "Test Quality"; Option)
        {
            Caption = 'Test Quality';
            Description = '#QMW16.00.03:R449';
            OptionCaption = ' ,Good,Average,Bad';
            OptionMembers = " ",Good,"Average",Bad;
        }
        field(5034561; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Description = '#QMW16.00.03:R449';
            Editable = false;
        }
        field(5034562; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.03:R449';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034563; "Quarantine Date"; Date)
        {
            Caption = 'Quarantine Date';
            Description = '#QMW16.00.03:R449';
            Editable = false;
        }
        field(5034564; "Retest Date"; Date)
        {
            Caption = 'Retest Date';
            Description = '#QMW16.00.03:R449';
            Editable = false;
        }
        field(5034565; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Description = '#QMW16.00.03:R449';
            Editable = false;
        }
        field(5034566; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Description = '#QMW16.00.03:R449';
            Editable = false;
        }
        field(5034567; "Availability Date"; Date)
        {
            Caption = 'Availability Date';
            Description = '#QMW16.00.03:R449';
            Editable = false;
        }
        field(5034568; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Description = '#QMW16.00.03:R449';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Item Ledger Entry No.")
        {
        }
        key(Key3; "Serial No.", "Item Ledger Entry No.")
        {
        }
        key(Key4; "Lot No.", "Item Ledger Entry No.")
        {
        }
        key(Key5; "Item No.", "Item Ledger Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

