table 5072655 "Item Ledger Entry Select"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001  04.05.2009  DEMSR.KHS   Object created
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Ledger Entry Select';

    fields
    {
        field(10; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(40; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(50; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(60; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(70; Select; Boolean)
        {
            Caption = 'Select';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

