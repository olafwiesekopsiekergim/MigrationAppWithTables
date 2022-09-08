table 5072662 "Item Rent Rate Component"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.01:R053 12.10.09 DEMSR.KHS Rate Parts
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Rent Rate Component';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(2; "Rate Component No."; Code[20])
        {
            Caption = 'Rate Component No.';
            TableRelation = "Rent Rate Component"."No." WHERE (Type = FIELD (Type));
        }
        field(3; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,G/L Account,,Resource';
            OptionMembers = " ","G/L Account",Item,Resource;
        }
        field(4; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST (Item)) Item
            ELSE
            IF ("Source Type" = CONST (Resource)) Resource
            ELSE
            IF ("Source Type" = CONST ("G/L Account")) "G/L Account";
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Rate Part,One-Time Invoicing';
            OptionMembers = " ","Rate Part","One-Time Invoicing";
        }
    }

    keys
    {
        key(Key1; Type, "Item No.", "Rate Component No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

