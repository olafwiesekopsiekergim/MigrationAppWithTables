table 5013501 "Advance Payment Plan Template"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Completed Captions
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Advance Payment Plan Template';

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

