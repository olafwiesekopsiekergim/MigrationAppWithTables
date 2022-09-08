table 5012401 Ingredient
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR Management of Active Ingredients
    // 
    // #PMW16.00.02:T234 18.11.10 DEMSR.BKR
    //   Integration of Ingredients Mgt. into QM
    //   Added field "Test Property Code"
    //   Added key "Test Property Code"
    // 
    // #PMW16.00.02.04:T505 11.02.11 DEMSR.BKR
    //   Smaller Corrections
    //   Added Function "AssistEdit"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Ingredient';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(20; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(30; "Base Unit of Measure Code"; Code[10])
        {
            Caption = 'Base Unit of Measure Code';
            TableRelation = "Ingredient Unit of Measure".Code WHERE ("Ingredient No." = FIELD ("No."));
        }
        field(40; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            Description = '#PMW16.00.02:T234';
            TableRelation = "Test Property";
        }
        field(50; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Property Code")
        {
        }
    }

    fieldgroups
    {
    }
}

