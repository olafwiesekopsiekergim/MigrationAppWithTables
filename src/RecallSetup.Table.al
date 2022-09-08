table 5034611 "Recall Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R287 27.10.10 DEMSR.KHS
    //   Recall List - Object created
    // 
    // #QMW17.10.00.02:T105 24.02.14 DEMSR.KHS
    //   Rename "Callback" to "Recall"
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Recall Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(20; "Recall Nos."; Code[10])
        {
            Caption = 'Recall Nos.';
            TableRelation = "No. Series";
        }
        field(30; "Issued Recall Nos."; Code[10])
        {
            Caption = 'Issued Recall Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

