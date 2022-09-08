table 409 "SMTP Mail Setup"
{
    Caption = 'SMTP Mail Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "SMTP Server"; Text[250])
        {
            Caption = 'SMTP Server';
        }
        field(3; Authentication; Option)
        {
            Caption = 'Authentication';
            OptionCaption = 'Anonymous,NTLM,Basic';
            OptionMembers = Anonymous,NTLM,Basic;
        }
        field(4; "User ID"; Text[250])
        {
            Caption = 'User ID';
        }
        field(5; Password; Text[250])
        {
            Caption = 'Password';
        }
        field(6; "SMTP Server Port"; Integer)
        {
            Caption = 'SMTP Server Port';
            InitValue = 25;
        }
        field(7; "Secure Connection"; Boolean)
        {
            Caption = 'Secure Connection';
            InitValue = false;
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

