table 5060610 "Text Module Use in Area Base"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 11.08.14 DEMSR.SSZ
    //   #New Textmodule technique

    Caption = 'Text Module Use in Area Base';

    fields
    {
        field(1; "Area Code"; Code[10])
        {
            Caption = 'Area Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Area Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

