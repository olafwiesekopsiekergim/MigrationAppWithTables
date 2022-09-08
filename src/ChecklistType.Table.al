table 5013676 "Checklist Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Completed Caption
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Checklist Type';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(100; Description; Text[30])
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

