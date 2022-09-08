table 5395806 "Function Configuration"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T104 16.10.14 DEMSR.IST - Object created
    // 
    // #AMPW18.00.00.09:T500 21.07.15 DEMSR.IST
    //   Check existing product function configurations
    //   Delete function configuration lines

    Caption = 'Function Configuration';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[80])
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

