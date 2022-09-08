table 5013801 "Production View Link"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PRODVIEW:DMW15.01:14:01 #Object created
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Production View Link';

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
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

