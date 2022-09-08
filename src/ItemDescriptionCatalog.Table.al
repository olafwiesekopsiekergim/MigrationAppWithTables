table 5013690 "Item Description Catalog"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.00:A001 02.08.2012 DEMSR.SSZ
    //   #Increased the field Description to Text 50 because the related item field has been increased, too.
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Description Catalog';

    fields
    {
        field(10; Description; Text[50])
        {
            Caption = 'Description';
            NotBlank = true;
        }
    }

    keys
    {
        key(Key1; Description)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

