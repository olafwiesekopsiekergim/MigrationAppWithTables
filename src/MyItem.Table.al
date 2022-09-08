table 9152 "My Item"
{
    Caption = 'My Item';

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
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
    }

    keys
    {
        key(Key1; "User ID", "Item No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

