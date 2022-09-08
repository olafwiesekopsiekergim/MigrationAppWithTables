table 132 "Incoming Document Approver"
{
    Caption = 'Incoming Document Approver';

    fields
    {
        field(1; "User ID"; Guid)
        {
            Caption = 'User ID';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

