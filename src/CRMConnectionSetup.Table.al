table 5330 "CRM Connection Setup"
{
    Caption = 'CRM Connection Setup';
    Permissions = TableData "Service Password" = rimd;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; "Server Address"; Text[250])
        {
            Caption = 'Dynamics CRM URL';
        }
        field(3; "User Name"; Text[250])
        {
            Caption = 'User Name';
        }
        field(4; "User Password Key"; Guid)
        {
            Caption = 'User Password Key';
        }
        field(60; "Is Enabled"; Boolean)
        {
            Caption = 'Is Enabled';
        }
        field(61; "Is User Mapping Required"; Boolean)
        {
            Caption = 'Dynamics NAV Users Must Map to Dynamics CRM Users';
            InitValue = true;
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

