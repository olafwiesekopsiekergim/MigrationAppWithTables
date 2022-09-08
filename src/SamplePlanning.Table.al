table 5034573 "Sample Planning"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T103 08.05.15 DEMSR.KHS
    //   Object created

    Caption = 'Sample Planning';

    fields
    {
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(30; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
        }
        field(40; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'Inventory,Purchase Order,Purchase Receipt,Sales Order,Sales Shipment,Sales Return Order,Sales Return Receipt,Production Order,Operation,Stability Test,Order-specific,Component';
            OptionMembers = Inventory,"Purchase Order","Purchase Receipt","Sales Order","Sales Shipment","Sales Return Order","Sales Return Receipt","Production Order",Operation,"Stability Test","Order-specific",Component;
        }
        field(50; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            "Unit of Measure".Code;
        }
        field(60; "Sample Occurrence Code"; Code[20])
        {
            Caption = 'Sample Occurrence Code';
            TableRelation = "Sample Occurrence".Code WHERE (Status = CONST (Certified));
        }
    }

    keys
    {
        key(Key1; "Item No.", "Item Category Code", "Source Type", "Unit of Measure Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

