table 5034601 "Sample Size Oeser/Strohecker"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Sample Size Oeser/Strohecker';

    fields
    {
        field(1; "From No. of Units"; Decimal)
        {
            Caption = 'From No. of Units';
            DecimalPlaces = 0 : 5;
        }
        field(2; "To No. of Units"; Decimal)
        {
            Caption = 'To No. of Units';
            DecimalPlaces = 0 : 5;
        }
        field(3; "No. of Units to Test"; Decimal)
        {
            Caption = 'No. of Units to Test';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "From No. of Units")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

