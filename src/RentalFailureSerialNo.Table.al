table 5072654 "Rental Failure Serial No."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001  04.05.2009  DEMSR.KHS   Object created
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental Failure Serial No.';

    fields
    {
        field(1; "Failure No."; Integer)
        {
            Caption = 'Failure No.';
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
        field(10; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
    }

    keys
    {
        key(Key1; "Failure No.", "Serial No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

