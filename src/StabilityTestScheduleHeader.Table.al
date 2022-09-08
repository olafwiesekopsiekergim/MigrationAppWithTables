table 5034643 "Stability Test Schedule Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R462 12.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.00:417 08.01.13 DEMSR.KHS
    //   Delete Stab. Test Sched. Lines when deleting Stab. Test Sched. Header
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Stability Test Schedule Header';

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
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

