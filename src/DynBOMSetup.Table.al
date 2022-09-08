table 5013558 "Dyn. BOM Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.00:A001 08.06.12 DEMSR.SSZ
    //   #Grammar issue
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Dyn. BOM Setup';
    DataCaptionFields = "Document Type";

    fields
    {
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,Construction';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,Construction;
        }
        field(100; "Max. Level"; Integer)
        {
            Caption = 'Max. Level';
        }
        field(110; "Copy Information Lines"; Boolean)
        {
            Caption = 'Copy Information Lines';
        }
    }

    keys
    {
        key(Key1; "Document Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

