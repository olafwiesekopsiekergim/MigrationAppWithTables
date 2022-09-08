table 5012418 "Ingredient Unit of Measure"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR
    //   Management of Active Ingredients
    //   Object created
    // 
    // #PMW17.10.00.02:T101 15.04.2014 DEMSR.IST
    //   FieldGroup DropDown added
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Ingredient Unit of Measure';

    fields
    {
        field(1; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
            TableRelation = Ingredient;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(3; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
    }

    keys
    {
        key(Key1; "Ingredient No.", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Qty. per Unit of Measure")
        {
        }
    }
}

