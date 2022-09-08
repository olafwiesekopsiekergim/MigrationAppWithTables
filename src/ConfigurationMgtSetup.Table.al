table 5395800 "Configuration Mgt. Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.00.01:T100 30.12.13 DEBIE.NKA Product Configuration Management tool added
    // #AMPW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Configuration Mgt. Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Allow Empty Profile ID"; Boolean)
        {
            Caption = 'Allow Empty Profile ID';
        }
        field(3; "Last Page Definition Update on"; DateTime)
        {
            Caption = 'Last Page Definition Update on';
            Editable = false;
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

