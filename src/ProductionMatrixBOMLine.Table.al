table 99000788 "Production Matrix BOM Line"
{
    // RECIPE:PMW15.00:232:1
    //   # New field 5012400 "Component Type"
    // 
    // :PMW16.00:131:1
    //   # New field 5012700 "1. Share %"
    //   # New field 5012701 "2. Share %"

    Caption = 'Production Matrix BOM Line';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(2; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(10; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5012400; "Component Type"; Option)
        {
            Caption = 'Production BOM Type';
            Description = 'RECIPE:PMW15.00:232:1';
            OptionCaption = 'Quantity per,Share %';
            OptionMembers = "Quantity per","Share %";
        }
        field(5012700; "1. Share %"; Decimal)
        {
            Caption = '1. Share %';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:131:1';
        }
        field(5012701; "2. Share %"; Decimal)
        {
            Caption = '2. Share %';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:131:1';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

