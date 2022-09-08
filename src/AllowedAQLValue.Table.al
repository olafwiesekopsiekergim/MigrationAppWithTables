table 5034556 "Allowed AQL Value"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00 05.12.12 DEMSR.KHS
    //   ENU Table and Field Caption changed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Allowed AQL Value';

    fields
    {
        field(1; "AQL Value"; Decimal)
        {
            Caption = 'AQL Value';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "AQL Value")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

