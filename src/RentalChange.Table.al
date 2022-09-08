table 5072656 "Rental Change"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001  04.05.09 DEMSR.KHS
    //   Object created
    // 
    // #RENW16.00.01:R054 12.10.09 DEMSR.KHS
    //   Rental Exchange
    // 
    // #RENW17.00:T504 16.07.12 DEMSR.KHS
    //   Clear New Serial No. on Item change
    // 
    // #RENW17.10.00.01:T100 29.11.13 DEMSR.KHS
    //   Delete unused VARs
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental Change';

    fields
    {
        field(1; "Change No."; Integer)
        {
            Caption = 'Change No.';
            TableRelation = "Rental Failure";
        }
        field(2; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(20; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(30; "New Item No."; Code[20])
        {
            Caption = 'New Item No.';
            TableRelation = Item;
        }
        field(40; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(60; "Change Date"; Date)
        {
            Caption = 'Change Date';
        }
        field(70; "Change Time"; Time)
        {
            Caption = 'Change Time';
        }
        field(80; "New Rent Order Line No."; Integer)
        {
            Caption = 'New Rent Order Line No.';
        }
    }

    keys
    {
        key(Key1; "Change No.")
        {
            Clustered = true;
        }
        key(Key2; "Document Type", "Document No.", "Line No.")
        {
        }
        key(Key3; "Item No.", "Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

