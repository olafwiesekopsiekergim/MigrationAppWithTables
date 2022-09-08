table 1312 "Mini Trial Balance Setup"
{
    Caption = 'Mini Trial Balance Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Account Schedule Name"; Code[10])
        {
            Caption = 'Account Schedule Name';
        }
        field(3; "Column Layout Name"; Code[10])
        {
            Caption = 'Column Layout Name';
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

