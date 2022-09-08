table 5012521 "Detail Calculation Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.00:2428:1
    //   # Feld 6 Description auf Text50 erweitert
    // 
    // :PMW14.02.01:119:1
    //   # Set Property DecimalPlaces for Quantity to 0:5
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Detail Calculation Line';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Material Cost,Capacity Cost,Overhead,Headerline,Total Cost Material,Total Cost Capacity,Total Cost Production';
            OptionMembers = " ","Material Cost","Capacity Cost",Overhead,Headerline,"Total Cost Material","Total Cost Capacity","Total Cost Production";
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Work Center,Machine Center';
            OptionMembers = " ",Item,"Work Center","Machine Center";
        }
        field(5; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item."No."
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"."No."
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center"."No.";
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(7; Indentation; Integer)
        {
            Caption = 'Indentation';
            MinValue = 0;
        }
        field(8; Time; Decimal)
        {
            BlankZero = true;
            Caption = 'Time';
            DecimalPlaces = 0 : 2;
        }
        field(9; Quantity; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(10; "Share %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Share %';
            DecimalPlaces = 0 : 2;
        }
        field(11; "Unit Cost"; Decimal)
        {
            BlankZero = true;
            Caption = 'Unit Cost';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Amount (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Amount (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Amount (Quantity)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Amount (Quantity)';
            DecimalPlaces = 0 : 5;
        }
        field(14; Routing; Boolean)
        {
            Caption = 'Routing No.';
            Editable = false;
        }
        field(15; "Production BOM"; Boolean)
        {
            Caption = 'Production BOM No.';
            Editable = false;
        }
        field(16; "Low-Level Code"; Integer)
        {
            Caption = 'Low-Level Code';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

