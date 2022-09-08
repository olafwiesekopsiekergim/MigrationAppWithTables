table 5395802 "Configuration Set Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.00.01:T100 30.12.13 DEBIE.NKA Product Configuration Management tool added
    // #AMPW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #AMPW17.10.01:T104 16.10.14 DEMSR.IST
    //   Field 3 "From ID" renamed to "ID 1"
    //   Field 4 "To ID" renamed to "ID 2"
    //   Table renamed to "Configuration Set Line"
    //   Field Code expanded to Code30

    Caption = 'Configuration Set Line';

    fields
    {
        field(1; "Set Code"; Code[30])
        {
            Caption = 'Set Code';
            TableRelation = "Configuration Set";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "ID 1"; Integer)
        {
            Caption = 'ID 1';
        }
        field(4; "ID 2"; Integer)
        {
            Caption = 'ID 2';
        }
    }

    keys
    {
        key(Key1; "Set Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

