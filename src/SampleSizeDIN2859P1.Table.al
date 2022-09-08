table 5034603 "Sample Size DIN 2859P1"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Sample Size DIN 2859';

    fields
    {
        field(1; "Test Type Code"; Code[20])
        {
            Caption = 'Test Type Code';
            NotBlank = true;
            TableRelation = "Test Type";
        }
        field(2; "Key Letter"; Code[1])
        {
            Caption = 'Key Letter';
            NotBlank = true;
            ValuesAllowed = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z';
        }
        field(3; "Sample Size"; Decimal)
        {
            Caption = 'Sample Size';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Test Type Code", "Key Letter")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

