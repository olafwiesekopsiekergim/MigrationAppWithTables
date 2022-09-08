table 5012723 "Prod. Rate Personnel"
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

    Caption = 'Prod. Rate Personnel';

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
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
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

