table 5013841 "Dyn. User Function"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00:99:01 #Parameter was deleted
    // #DMW17.00:A001 01.06.12 DEMSR.SSZ
    //   #Changed OnLookUp Formula
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 32

    Caption = 'Dyn. User Function';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[32])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; Formula; Text[250])
        {
            Caption = 'Formula';
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

