table 5012581 "Customer Group"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02.02:T502 04.01.11 DEMSR.IST
    //   Object created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Customer Group';

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

