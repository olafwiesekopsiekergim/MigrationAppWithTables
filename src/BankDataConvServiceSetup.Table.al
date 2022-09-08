table 1260 "Bank Data Conv. Service Setup"
{
    Caption = 'Bank Data Conv. Service Setup';
    Permissions = TableData "Service Password" = rimd;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "User Name"; Text[50])
        {
            Caption = 'User Name';
            Editable = true;
        }
        field(3; "Password Key"; Guid)
        {
            Caption = 'Password Key';
            TableRelation = "Service Password".Key;
        }
        field(4; "Signup URL"; Text[250])
        {
            Caption = 'Signup URL';
            ExtendedDatatype = URL;
        }
        field(5; "Service URL"; Text[250])
        {
            Caption = 'Service URL';
        }
        field(6; "Support URL"; Text[250])
        {
            Caption = 'Support URL';
            ExtendedDatatype = URL;
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

