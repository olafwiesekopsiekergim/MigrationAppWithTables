table 5072653 "Failure Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001 04.05.2009 DEMSR.KHS
    //   Object created
    // 
    // #RENW16.00.00.01:T510 09.07.09 DEMSR.KHS
    //   In some cases released Failures were missing in created Invoices
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Failure Type';

    fields
    {
        field(1; "Failure Type Code"; Code[10])
        {
            Caption = 'Failure Type Code';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; "Credit Memo"; Boolean)
        {
            Caption = 'Credit Memo';
        }
        field(30; "Discount %"; Decimal)
        {
            Caption = 'Discount %';
        }
    }

    keys
    {
        key(Key1; "Failure Type Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

