table 5395804 "Configuration Profile Delta"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.00.01:T100 30.12.13 DEBIE.NKA Product Configuration Management tool added
    // #AMPW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Configuration Profile Delta';
    DataPerCompany = false;

    fields
    {
        field(1; "Seq No."; Integer)
        {
            Caption = 'Seq No.';
            Description = 'Sequence the deltas are in the original metadata delta';
        }
        field(2; "Delta Type"; Text[10])
        {
            Caption = 'Delta Type';
        }
        field(3; ID; Text[40])
        {
            Caption = 'ID';
            Description = 'Control ID referenced';
        }
        field(4; Destination; Text[40])
        {
            Caption = 'Destination';
            Description = 'ID of destination in a move operation';
        }
        field(5; Sequence; BLOB)
        {
            Caption = 'Sequence';
        }
        field(6; Uri; Text[100])
        {
            Caption = 'Uri';
        }
        field(7; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(8; Value; Text[250])
        {
            Caption = 'Value';
        }
        field(9; "Profile ID"; Text[30])
        {
            Caption = 'Profile ID';
        }
        field(10; "Personalization ID"; Text[40])
        {
            Caption = 'Personalization ID';
        }
        field(11; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
    }

    keys
    {
        key(Key1; "Profile ID", "Personalization ID", "Object ID", "Seq No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

