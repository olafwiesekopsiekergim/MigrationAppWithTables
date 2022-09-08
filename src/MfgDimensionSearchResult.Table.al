table 5012718 "Mfg. Dimension Search Result"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :PMW16.00:167:1
    //   Option of field Type expanded with Tool and Insert
    // 
    // #PXW18.00.00.03:T500 25.03.15 DEMSR.KHS
    //   Description fields set to 50 Chars
    // 
    // #PXW18.00.01:T103 11.06.15 DEMSR.IST
    //   Type expanded with Item Variant
    //   New field "Item Variant"
    //   New Key <No.,Variant Code>

    Caption = 'Mfg. Dimension Search Result';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Work Center,Tool,Insert,Item Variant';
            OptionMembers = " ",Item,"Work Center",Tool,Insert,"Item Variant";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item."No."
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"."No." WHERE ("Work Center Type" = FILTER (" " | "Sequence Planning"));
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
            Description = '#PXW18.00.00.03:T500';
        }
        field(4; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Description = '#PXW18.00.00.03:T500';
        }
        field(5; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = '#PXW18.00.01:T103';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Variant Code")
        {
            Clustered = true;
        }
        key(Key2; "No.", "Variant Code")
        {
        }
    }

    fieldgroups
    {
    }
}

