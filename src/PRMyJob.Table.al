table 5292358 "PR - My Job"
{
    Caption = 'My Job';

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
        field(2; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            NotBlank = true;
            TableRelation = Job;
        }
    }

    keys
    {
        key(Key1; "User ID", "Job No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

