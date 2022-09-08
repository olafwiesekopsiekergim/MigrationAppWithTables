table 5903 "Service Order Type"
{
    // #RENW16.00.01:R170 13.10.09 DEMSR.KHS
    //   Internal Service Order

    Caption = 'Service Order Type';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5072450; "Internal Cost"; Boolean)
        {
            Caption = 'Internal Cost';
            Description = '#RENW16.00.01:R170';
        }
        field(42014822; "Default Service Dur. (Hours)"; Decimal)
        {
            Description = 'SNST1.0.0.0';
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

