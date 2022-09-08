table 5395815 "Email Distribution Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T103 09.09.14 DEMSR.KHS
    //   Send e-Mail with pdf
    //   Object Created
    // 
    // #AMPW18.00:T100 19.12.14 DEMSR.KHS
    //   Redesign due to NAV 2015 changes
    //     SMTP Fields added:
    //       "SMTP Server","Authentication","User ID","Password","SMTP Server Port","Secure Connection"
    // 
    // #AMPW18.00.00.07:T100 DEMSR.KHS
    //   Update Email Names and Captions

    Caption = 'Email Distribution Setup';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(10; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(20; "Mail Type"; Option)
        {
            Caption = 'Mail Type';
            OptionCaption = 'Outlook,SMTP';
            OptionMembers = Outlook,SMTP;
        }
        field(30; Sender; Option)
        {
            Caption = 'Sender';
            OptionCaption = 'Current User,Fixed';
            OptionMembers = "Current User","Fixed";
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
        field(60; "Recipient Type"; Option)
        {
            Caption = 'Recipient Type';
            OptionCaption = 'Automatic,Fixed';
            OptionMembers = Automatic,"Fixed";
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
        field(90; "Subject Line Format"; Option)
        {
            Caption = 'Subject Line Format';
            OptionCaption = 'Recipient Name - Source Type - Source No.,Company Name - Source Type - Source No.,Subject Text';
            OptionMembers = "Recipient Name - Source Type - Source No.","Company Name - Source Type - Source No.","Subject Text";
        }
        field(100; "Hide Mail Dialog"; Boolean)
        {
            Caption = 'Hide Mail Dialog';
        }
        field(200; "Subject Text"; Text[250])
        {
            Caption = 'Subject Text';
        }
        field(500; "SMTP Server"; Text[250])
        {
            Caption = 'SMTP Server';
            Description = '#AMPW18.00:T100';
        }
        field(510; Authentication; Option)
        {
            Caption = 'Authentication';
            Description = '#AMPW18.00:T100';
            OptionCaption = 'Anonymous,NTLM,Basic';
            OptionMembers = Anonymous,NTLM,Basic;
        }
        field(520; "User ID"; Text[250])
        {
            Caption = 'User ID';
            Description = '#AMPW18.00:T100';
        }
        field(530; Password; Text[250])
        {
            Caption = 'Password';
            Description = '#AMPW18.00:T100';
            ExtendedDatatype = Masked;
        }
        field(540; "SMTP Server Port"; Integer)
        {
            Caption = 'SMTP Server Port';
            Description = '#AMPW18.00:T100';
            InitValue = 25;
        }
        field(550; "Secure Connection"; Boolean)
        {
            Caption = 'Secure Connection';
            Description = '#AMPW18.00:T100';
            InitValue = false;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

