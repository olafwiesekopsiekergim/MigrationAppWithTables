table 5012721 "Prod. Rate Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW17.00:T201 19.11.12 DEMSR.IST
    //   Object created
    // 
    // #PXW17.00.00.02:T501 07.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Rate Comment Line';

    fields
    {
        field(1; "Prod. Rate Entry No."; Integer)
        {
            Caption = 'Prod. Rate Entry No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
        }
        field(4; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
    }

    keys
    {
        key(Key1; "Prod. Rate Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

