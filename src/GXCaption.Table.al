table 5012808 "GX Caption"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #GXW18.00:T102 14.01.15 DEMSR.BKR
    //   Remove all GX automations and unused code
    //   Removed Function "Export"

    Caption = 'GX Caption';

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(10; Caption; Text[30])
        {
            Caption = 'Caption';
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

