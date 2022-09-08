table 5000323 "My Reference Unit"
{
    Caption = 'My Reference Unit';

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
        field(2; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            NotBlank = true;
            TableRelation = "Reference Unit";
        }
    }

    keys
    {
        key(Key1; "User ID", "Reference Unit Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

