table 5034615 "Issued Recall Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R287 27.10.10 DEMSR.KHS
    //   Recall List - Object created
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.10.00.02:T105 24.02.14 DEMSR.KHS
    //   Rename "Callback" to "Recall"
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.01:T502 24.02.15 DEMSR.KHS
    //   Field length updated: Description set to 100 Chars
    // 
    // #PMW16.00.02:T271   18.11.10 DEMSR.KHS
    //   Integration of Trading Unit from PM into QM
    //   New Fields: "Lot No. Trading Unit", "Trading Unit No."

    Caption = 'Issued Recall Line';

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
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output, ';
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output," ";
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
            Description = '#QMW18.00.00.01:T502';
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
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(14; "Remaining Quantity"; Decimal)
        {
            BlankZero = true;
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
            Description = '#QMW17.00:104';
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
        field(100; "Source Phone No."; Text[30])
        {
            Caption = 'Source Phone No.';
        }
        field(105; "Source Fax No."; Text[30])
        {
            Caption = 'Source Fax No.';
        }
        field(110; "Source Address"; Text[50])
        {
            Caption = 'Source Address';
        }
        field(120; "Source Address 2"; Text[50])
        {
            Caption = 'Source Address 2';
        }
        field(130; "Source Post Code"; Code[20])
        {
            Caption = 'Source Post Code';
        }
        field(140; "Source City"; Text[30])
        {
            Caption = 'Source City';
        }
        field(150; "Source Country/Region Code"; Code[20])
        {
            Caption = 'Source Country/Region Code';
        }
        field(160; "Issued Recall No."; Code[20])
        {
            Caption = 'Issued Recall No.';
            TableRelation = "Issued Recall Header";
        }
        field(1010; Group; Option)
        {
            Caption = 'Group';
            OptionCaption = ' ,Purchase,Inventory,Sales';
            OptionMembers = " ",Purchase,Inventory,Sales;
        }
        field(1020; "Show Record"; Option)
        {
            Caption = 'Show Record';
            OptionCaption = 'Show,Hide';
            OptionMembers = Show,Hide;
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
        field(5034550; Direction; Option)
        {
            Caption = 'Direction';
            OptionCaption = 'Forward,Backward, ';
            OptionMembers = Forward,Backward," ";
        }
        field(5034551; "Component of Item No."; Code[20])
        {
            Caption = 'Component of Item No.';
        }
        field(5034552; "Component of Lot No."; Code[20])
        {
            Caption = 'Component of Lot No.';
        }
        field(5034553; "Component of Serial No."; Code[20])
        {
            Caption = 'Component of Serial No.';
        }
        field(5034554; "Produced using Item No."; Code[20])
        {
            Caption = 'Produced using Item No.';
        }
        field(5034555; "Produced using Lot No."; Code[20])
        {
            Caption = 'Produced using Lot No.';
        }
        field(5034556; "Produced using Serial No."; Code[20])
        {
            Caption = 'Produced using Serial No.';
        }
    }

    keys
    {
        key(Key1; "Issued Recall No.", "Line No.")
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
        key(Key6; "Issued Recall No.", "Source Type", "Source No.", "Item No.", "Variant Code", "Lot No.", "Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

