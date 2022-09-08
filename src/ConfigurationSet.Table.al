table 5395801 "Configuration Set"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.00.01:T100 30.12.13 DEBIE.NKA Product Configuration Management tool added
    // #AMPW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #AMPW17.10.01:T104 16.10.14 DEMSR.IST
    //   New field 4 "Type" added
    //   New Key "Type" added
    //   Field Code expanded to Code30

    Caption = 'Configuration Set';

    fields
    {
        field(1; "Code"; Code[30])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[80])
        {
            Caption = 'Name';
        }
        field(3; "Action"; Option)
        {
            Caption = 'Action';
            OptionCaption = ' ,None,Enable,Disable';
            OptionMembers = " ","None",Enable,Disable;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Range,Page Control';
            OptionMembers = Range,"Page Control";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; Type)
        {
        }
    }

    fieldgroups
    {
    }
}

