table 5013554 "BOM Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'BOM Type';
    DataCaptionFields = Type;

    fields
    {
        field(10; Type; Code[20])
        {
            Caption = 'Type';
            NotBlank = true;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Type)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

