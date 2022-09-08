table 5000320 "My Cost Type"
{
    Caption = 'My Cost Type';

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
        field(2; "Cost Account"; Code[20])
        {
            Caption = 'Cost Account';
            TableRelation = IF (Type = CONST ("Cost Account")) "Cost Account"
            ELSE
            IF (Type = CONST ("Project Account")) "Project Account";
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Cost Account,Project Account';
            OptionMembers = "Cost Account","Project Account";
        }
    }

    keys
    {
        key(Key1; "User ID", Type, "Cost Account")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

