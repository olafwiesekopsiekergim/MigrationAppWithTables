table 5012812 "GX Incoming Event"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00:T100 27.03.12 DEMSR.IST
    //   FORM.RUN changed to PAGE.RUN
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX Incoming Event';

    fields
    {
        field(1; Property; Code[30])
        {
            Caption = 'Property';
            NotBlank = true;
        }
        field(10; Value; Text[250])
        {
            Caption = 'Value';
        }
    }

    keys
    {
        key(Key1; Property)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

