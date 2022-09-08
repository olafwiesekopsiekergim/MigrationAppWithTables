table 5012706 "MS Standstill Reason"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:104 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.00:T101 14.12.12 DEMSR.IST
    //   Name and ENU caption changed to "MS Standstill Reason"
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'MS Standstill Reason';

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

