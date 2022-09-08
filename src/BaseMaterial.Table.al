table 5013791 "Base Material"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:16:01 #Changes for certification
    // :DMW16.00.01:31:01 #new field 110 "Specific Weight"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Base Material';

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; "Specific Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Specific Weight';
            Description = ':DMW16.00.01:31:01';
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

