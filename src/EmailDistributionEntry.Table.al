table 5395816 "Email Distribution Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T103 09.09.14 DEMSR.KHS
    //   Send e-Mail with pdf
    //   Object Created
    // 
    // #AMPW18.00.00.07:T100 DEMSR.KHS
    //   Update Email Names and Captions

    Caption = 'Email Distribution Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Distrbution Setup Code"; Code[10])
        {
            Caption = 'Distribution Setup Code';
            TableRelation = "Email Distribution Setup";
        }
        field(40; "Sender Address"; Text[80])
        {
            Caption = 'Sender Address';
            ExtendedDatatype = EMail;
        }
        field(50; "Sender Name"; Text[80])
        {
            Caption = 'Sender Name';
        }
        field(70; "Recipient Address"; Text[80])
        {
            Caption = 'Recipient Address';
            ExtendedDatatype = EMail;
        }
        field(80; "Cc Recipients"; Text[250])
        {
            Caption = 'Cc Recipients';
            ExtendedDatatype = EMail;
        }
        field(90; "Subject Line"; Text[250])
        {
            Caption = 'Subject Line';
        }
        field(100; "Sending Date"; Date)
        {
            Caption = 'Sending Date';
        }
        field(110; "Sending Time"; Time)
        {
            Caption = 'Sending Time';
        }
        field(120; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(200; "Source Record ID"; RecordID)
        {
            Caption = 'Source Record ID';
        }
        field(300; "Return Message"; Text[250])
        {
            Caption = 'Rückmeldung';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

