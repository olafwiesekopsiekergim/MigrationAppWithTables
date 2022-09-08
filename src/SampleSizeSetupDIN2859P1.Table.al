table 5034602 "Sample Size Setup DIN 2859P1"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Sample Size Setup DIN 2859';

    fields
    {
        field(1; "Inspection Level Code"; Code[20])
        {
            Caption = 'Inspection Level Code';
            NotBlank = true;
            TableRelation = "Inspection Level";
        }
        field(2; "From Lot Size"; Decimal)
        {
            Caption = 'From Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(3; "To Lot Size"; Decimal)
        {
            Caption = 'To Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(4; "Key Letter"; Code[1])
        {
            Caption = 'Key Letter';
            ValuesAllowed = 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z';
        }
    }

    keys
    {
        key(Key1; "Inspection Level Code", "From Lot Size", "To Lot Size")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

