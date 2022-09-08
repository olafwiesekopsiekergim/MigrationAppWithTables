table 9151 "My Vendor"
{
    Caption = 'My Vendor';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            NotBlank = true;
            TableRelation = Vendor;
        }
    }

    keys
    {
        key(Key1; "User ID", "Vendor No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

