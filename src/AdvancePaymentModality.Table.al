table 5013500 "Advance Payment Modality"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Completed Captions
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works                                             OptionString of field Type extended: ,,,,,Measurement

    Caption = 'Advance Payment Modality';

    fields
    {
        field(10; Division; Option)
        {
            Caption = 'Division';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = 'Sale,Purchase';
            OptionMembers = Sale,Purchase;
        }
        field(20; "Code"; Code[10])
        {
            Caption = 'Code';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
        }
        field(30; Description; Text[30])
        {
            Caption = 'Description';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(40; Type; Option)
        {
            Caption = 'Type';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = 'Percent,Absolute,,,,,Measurement';
            OptionMembers = Percent,Absolute,,,,,Measurement;
        }
        field(50; Value; Decimal)
        {
            Caption = 'Value';
            Description = 'APTW:DMW15.01:58:01';
        }
    }

    keys
    {
        key(Key1; Division, "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

