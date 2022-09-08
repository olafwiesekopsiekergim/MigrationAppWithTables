table 5013805 "Search Checklist"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.02:64:01 #New object
    // :DMW16.00.00.01:6:01 #Changed some Captions
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Search Checklist';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
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

