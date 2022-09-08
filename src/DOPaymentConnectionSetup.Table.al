table 825 "DO Payment Connection Setup"
{
    Caption = 'Microsoft Dynamics ERP Payment Services Setup';
    Permissions = TableData "DO Payment Connection Details" = rd;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(4; "Run in Test Mode"; Boolean)
        {
            Caption = 'Run in Test Mode';
        }
        field(5; "Service ID"; Guid)
        {
            Caption = 'Service ID';
        }
        field(6; Environment; Text[10])
        {
            Caption = 'Environment';
        }
        field(8; OrganizationId; Text[40])
        {
            Caption = 'OrganizationId';
        }
        field(9; ServiceGroupId; Text[40])
        {
            Caption = 'ServiceGroupId';
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

