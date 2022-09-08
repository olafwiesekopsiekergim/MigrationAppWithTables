table 5013566 "Dynamic Captions"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Corrected Caption
    // #DMW17.10:T101 17.10.13 DEMSR.SSZ
    //   use SESSIONID instead of obsolete Session table
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Dynamic Captions';

    fields
    {
        field(5; "Session ID"; Integer)
        {
            Caption = 'Session ID';
        }
        field(100; "Measurement 1"; Code[10])
        {
            Caption = 'Measurement 1';
        }
        field(110; "Measurement 2"; Code[10])
        {
            Caption = 'Measurement 2';
        }
        field(120; "Measurement 3"; Code[10])
        {
            Caption = 'Measurement 3';
        }
        field(130; "Measurement 4"; Code[10])
        {
            Caption = 'Measurement 4';
        }
        field(140; "Measurement 5"; Code[10])
        {
            Caption = 'Measurement 5';
        }
        field(150; "Measurement 6"; Code[10])
        {
            Caption = 'Measurement 6';
        }
    }

    keys
    {
        key(Key1; "Session ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

