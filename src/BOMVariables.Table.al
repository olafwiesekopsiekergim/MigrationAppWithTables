table 5013842 "BOM Variables"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00.01:21:01 #new field 105 "Value (alphanumeric)"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30 (here from Code 20 -> 32)
    // #DMW18.00.01:T109 11.06.15 DEMSR.SSZ
    //   #Added Work and Machine Center to Component Type and completed TableRelation

    Caption = 'BOM Variables';
    DataCaptionFields = "Code", Level;

    fields
    {
        field(10; "Code"; Code[32])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(20; Level; Integer)
        {
            Caption = 'Level';
        }
        field(100; Value; Decimal)
        {
            BlankZero = true;
            Caption = 'Value';
        }
        field(105; "Value (alphanumeric)"; Text[250])
        {
            Caption = 'Value (alphanumeric)';
            Description = ':DMW16.00.01:21:01';
        }
        field(110; Formula; Text[250])
        {
            Caption = 'Formula';
        }
        field(120; "Component Type"; Option)
        {
            Caption = 'Component Type';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center";
        }
        field(130; "Component No."; Code[20])
        {
            Caption = 'Component No.';
            TableRelation = IF ("Component Type" = CONST ("Account(G/L)")) "G/L Account"
            ELSE
            IF ("Component Type" = CONST (Item)) Item
            ELSE
            IF ("Component Type" = CONST (Resource)) Resource
            ELSE
            IF ("Component Type" = CONST ("Work Center")) "Work Center"
            ELSE
            IF ("Component Type" = CONST ("Machine Center")) "Machine Center";
        }
        field(140; "Component Variant"; Code[20])
        {
            Caption = 'Component Variant';
            TableRelation = IF ("Component Type" = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("Component No."));
        }
        field(150; Text; Text[50])
        {
            Caption = 'Text';
            Description = 'DMW13.71-01';
        }
        field(160; "Free Text"; Boolean)
        {
            Caption = 'Free Text';
            Description = 'DMW13.71-01';
        }
        field(170; "Checklist Code"; Code[20])
        {
            Caption = 'Checklist Code';
        }
        field(180; "Checklist Type"; Code[20])
        {
            Caption = 'Checklist Type';
        }
        field(190; "Checklist Line No."; Integer)
        {
            Caption = 'Checklist Line No.';
        }
        field(200; "Extended Text exists"; Boolean)
        {
            Caption = 'Extended Text exists';
        }
    }

    keys
    {
        key(Key1; "Code", Level)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

