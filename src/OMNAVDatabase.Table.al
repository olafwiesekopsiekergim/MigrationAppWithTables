table 11102099 "OM - NAV Database"
{
    Caption = 'NAV Database';
    DataCaptionFields = "Code", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
        }
        field(6; "Server Name"; Text[100])
        {
            Caption = 'Server Name';
        }
        field(7; "Database Name"; Text[100])
        {
            Caption = 'Database Name';
        }
        field(8; Authentication; Option)
        {
            Caption = 'Authentication';
            OptionCaption = 'Windows,User Name';
            OptionMembers = Windows,"User Name";
        }
        field(9; "User Name"; Text[100])
        {
            Caption = 'User Name';
        }
        field(10; Password; Text[100])
        {
            Caption = 'Password';
        }
        field(11; "Connection String"; Text[250])
        {
            Caption = 'Connection String';
        }
        field(12; "Command Line Parameters"; Text[250])
        {
            Caption = 'Command Line Parameters';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
    }

    fieldgroups
    {
    }
}

