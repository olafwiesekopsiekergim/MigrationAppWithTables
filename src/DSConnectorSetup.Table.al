table 2087629 "DS Connector Setup"
{
    Caption = 'DS Connector Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(5; SourceApp; Text[30])
        {
            Caption = 'SourceApp';
        }
        field(10; "API Type"; Option)
        {
            Caption = 'API Type';
            OptionCaption = 'REST Service,Web Service';
            OptionMembers = "REST Service","Web Service";
        }
        field(20; "Scheduler Url"; Text[250])
        {
            Caption = 'Scheduler Url';
        }
        field(24; "Scheduler User"; Text[250])
        {
            Caption = 'Scheduler User';
        }
        field(25; "Scheduler Password"; Text[100])
        {
            Caption = 'Scheduler Password';
            ExtendedDatatype = Masked;
        }
        field(30; "Access Token"; BLOB)
        {
            Caption = 'Access Token';
        }
        field(31; "Access Token Type"; Text[100])
        {
            Caption = 'Access Token Type';
        }
        field(32; "Access Token Expiration Date"; DateTime)
        {
            Caption = 'Access Token Expiration Date';
        }
        field(50; "RTC Connect Server name"; Text[50])
        {
        }
        field(51; "RTC Connect Service"; Text[50])
        {
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

