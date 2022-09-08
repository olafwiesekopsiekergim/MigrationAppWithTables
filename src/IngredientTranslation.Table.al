table 5012402 "Ingredient Translation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR
    //   Management of Active Ingredients
    // 
    // #PMW16.00.03:T500 25.07.11 DEMSR.BKR
    //   Language Code missing in primary key
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Ingredient Translation';

    fields
    {
        field(10; "Ingredient No."; Code[20])
        {
            Caption = 'Ingredient No.';
            NotBlank = true;
            TableRelation = Ingredient;
        }
        field(20; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            NotBlank = true;
            TableRelation = Language;
        }
        field(30; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(40; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
    }

    keys
    {
        key(Key1; "Ingredient No.", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

