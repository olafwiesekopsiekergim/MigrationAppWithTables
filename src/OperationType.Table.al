table 5013575 "Operation Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Operation Type';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(20; Description; Text[50])
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

