table 5012417 "Incorporation Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02.01:55:1
    //   # Property Editable set to Yes for Field "Incorporation Quantity"
    //   # New key <Type,Item No.>
    // 
    // INCORPORATION:PMW15.00:230:1
    //   # New key <Item No.>
    //   # New field 9 "Demand Date"
    //   # New field 22 "Expected Quantity"
    // 
    // :PMW15.00.01:40:1
    //   # Description fields expanded to Text50
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Incorporation Line';
    DataCaptionFields = Type, "No.";

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Production Structure,Recipe';
            OptionMembers = "Production Structure",Recipe;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Production Structure")) "Production Structure Header"."No."
            ELSE
            IF (Type = CONST (Recipe)) "Production BOM Header"."No." WHERE ("Production BOM Type" = CONST (Recipe));
        }
        field(3; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
            TableRelation = IF (Type = CONST (Recipe)) "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("No."));
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(6; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(7; "Max. Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation %';
            DecimalPlaces = 0 : 2;
            MaxValue = 100;
            MinValue = 0;
        }
        field(8; "Max. Incorporation Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(9; "Demand Date"; Date)
        {
            Caption = 'Demand Date';
            Description = 'INCORPORATION:PMW15.00:230:1';
        }
        field(10; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(11; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(12; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(15; Inventory; Decimal)
        {
            BlankZero = true;
            Caption = 'Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(16; "Quantity Avail. on Demand Date"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity Avail. on Demand Date';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(20; "Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Incorporation %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(21; "Incorporation Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Incorporation Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(22; "Expected Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Expected Quantity';
            DecimalPlaces = 0 : 5;
            Description = 'INCORPORATION:PMW15.00:230:1';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Version Code", "Item No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "Item No.")
        {
        }
        key(Key3; "Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}

