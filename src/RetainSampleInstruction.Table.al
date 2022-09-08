table 5034567 "Retain Sample Instruction"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T105 19.06.15 DEMSR.KHS
    //   Create Object

    Caption = 'Retain Sample Instruction';

    fields
    {
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(20; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(40; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(50; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            IF ("Item Category Code" = FILTER (<> '')) "Unit of Measure".Code;
        }
        field(60; "Per Lot"; Boolean)
        {
            Caption = 'Per Lot';
        }
        field(70; "Per Shipment"; Boolean)
        {
            Caption = 'Per Shipment';
        }
        field(80; "Retention Time"; DateFormula)
        {
            Caption = 'Retention Time';
        }
        field(90; "Inventory Value Zero"; Boolean)
        {
            Caption = 'Inventory Value Zero';
        }
        field(100; Comment; Text[50])
        {
            Caption = 'Comment';
        }
        field(110; "Quantity Threshold"; Decimal)
        {
            Caption = 'Quantity Threshold';
        }
        field(200; "Retain Location Code"; Code[10])
        {
            Caption = 'Retain Location Code';
            TableRelation = Location;
        }
        field(210; "Retain Bin Code"; Code[20])
        {
            Caption = 'Retain Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Retain Location Code"));
        }
    }

    keys
    {
        key(Key1; "Item No.", "Item Category Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

