table 9150 "My Customer"
{
    Caption = 'My Customer';

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
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            NotBlank = true;
            TableRelation = Customer;
        }
    }

    keys
    {
        key(Key1; "User ID", "Customer No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

