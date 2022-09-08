table 5292359 "PR - Job Line User View"
{
    Caption = 'Job Line User View';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            NotBlank = true;
            TableRelation = Job;
        }
        field(2; "Unique No."; Integer)
        {
            Caption = 'Unique No.';
        }
        field(3; "Sub No."; Integer)
        {
            Caption = 'Sub No.';
        }
        field(5; "Login ID"; Code[65])
        {
            Caption = 'Login ID';
        }
        field(6; "Form ID"; Integer)
        {
            Caption = 'Form ID';
        }
    }

    keys
    {
        key(Key1; "Job No.", "Unique No.", "Sub No.", "Login ID", "Form ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

