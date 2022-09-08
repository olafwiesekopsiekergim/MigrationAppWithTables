table 5060600 "Text Module Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding

    Caption = 'Text Module Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Local Language Code"; Code[10])
        {
            Caption = 'Local Language Code';
            NotBlank = true;
            TableRelation = Language;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

