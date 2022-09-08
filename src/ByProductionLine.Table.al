table 5012409 "By-Production Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02.01:56:1
    //   # Object name changed to By-Production Line
    // 
    // BYPRODUCTION:PMW15.00:203:1
    //   # New field 30 "Output Quantity" added
    //   # New field 31 "Allocation Quantity" added
    //   # New field 32 "Alloc. Unit of Measure Code" added
    //   # New function "CalculateQuantity"
    //   # New function "TestStatus"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW16.00:116:1
    //   # New field 7 "By-Production Item No." to handle lookup due to transformation
    //   # Code from "Alloc. Unit of Measure Code" - OnLookup deleted
    //   # TableRelation for "Alloc. Unit of Measure Code" added
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'By-Production Line';

    fields
    {
        field(1; "By-Production No."; Code[20])
        {
            Caption = 'By-Production No.';
            NotBlank = true;
            TableRelation = "By-Production Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(7; "By-Production Item No."; Code[20])
        {
            Caption = 'By-Production Item No.';
            Description = ':PMW16.00:116:1';
            TableRelation = Item."No.";
        }
        field(8; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(10; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(12; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(20; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(30; "Output Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Output Quantity';
            DecimalPlaces = 0 : 5;
            Description = 'BYPRODUCTION:PMW15.00:203:1';
        }
        field(31; "Allocation Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Allocation Quantity';
            DecimalPlaces = 0 : 5;
            Description = 'BYPRODUCTION:PMW15.00:203:1';
        }
        field(32; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            Description = 'BYPRODUCTION:PMW15.00:203:1';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("By-Production Item No."));
        }
    }

    keys
    {
        key(Key1; "By-Production No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

