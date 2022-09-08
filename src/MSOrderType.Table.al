table 5012705 "MS Order Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:104 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.00:T101 22.11.12 DEMSR.IST
    //   Table renamed to "MS Order Type"
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'MS Order Type';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

