table 5034618 "Test Device Group"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R216 24.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Device Group';

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(20; Description; Text[30])
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

