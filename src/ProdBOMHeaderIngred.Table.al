table 5012422 "Prod. BOM Header Ingred."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR
    //   Management of Active Ingredients
    //   Object created
    // 
    // #PMW16.00.02.04:T500 04.02.11 DEMSR.BKR
    //   Correction Qty. Calculation Of Ingredients
    //   Renamed "Quantity (Debit)" to "Quantity (Calc.)"
    // 
    // #PMW16.00.02.04:T505 11.02.11 DEMSR.BKR
    //   Smaller Corrections
    //   Changed DecimalPlaces To 0:5
    // 
    // #PMW17.10.00.02:T101 15.04.2014 DEMSR.IST
    //   Ingredient redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Production BOM Header Ingredient';

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Production BOM Header";
        }
        field(20; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
        }
        field(25; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(30; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            TableRelation = Ingredient;
        }
        field(40; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(50; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(55; "Quantity (Expected)"; Decimal)
        {
            Caption = 'Quantity (Expected)';
            DecimalPlaces = 0 : 5;
        }
        field(60; "Quantity (Calc.)"; Decimal)
        {
            Caption = 'Quantity (Calc.)';
            DecimalPlaces = 0 : 5;
        }
        field(70; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("Ingredient No."));
        }
        field(71; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(80; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            TableRelation = "Unit of Measure".Code;
        }
        field(81; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Version Code", "Starting Date", "Ingredient No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

