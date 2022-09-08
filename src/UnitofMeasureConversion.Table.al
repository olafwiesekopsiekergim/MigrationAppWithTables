table 5012540 "Unit of Measure Conversion"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:94:1
    //   # Object created.
    // 
    // #PMW17.10.00.02:T101 08.05.2014 DEMSR.IST
    //   Ingredient redesign, DecimalPlaces for field "Conversion Factor" added
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Unit of Measure Conversion';

    fields
    {
        field(1; "From Unit of Measure Code"; Code[10])
        {
            Caption = 'From Unit of Measure Code';
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(2; "To Unit of Measure Code"; Code[10])
        {
            Caption = 'To Unit of Measure Code';
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(3; "From Qty. per Unit of Measure"; Decimal)
        {
            BlankZero = true;
            Caption = 'From Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(4; "To Qty. per Unit of Measure"; Decimal)
        {
            BlankZero = true;
            Caption = 'To Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(5; "Conversion Factor"; Decimal)
        {
            Caption = 'Conversion Factor';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "From Unit of Measure Code", "To Unit of Measure Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

