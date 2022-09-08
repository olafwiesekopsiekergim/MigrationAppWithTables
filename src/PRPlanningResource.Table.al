table 5292333 "PR - Planning Resource"
{
    Caption = 'Planning Resource';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(50; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(2050; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = 'MTR Type';
            TableRelation = "Unit of Measure";
        }
        field(3000; "-- Schedule"; Integer)
        {
            Caption = '-- Expectation';
            Enabled = false;
        }
        field(3020; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            TableRelation = Resource;
        }
        field(3021; "Person Group No."; Code[20])
        {
            Caption = 'Person Group No.';
            TableRelation = "Resource Group";
        }
        field(3030; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(5292332; "Job Work-Hour Template Code"; Code[10])
        {
            Caption = 'Work-Hour Template Code';
            Description = 'TR "Job Work-Hour Template"';
            TableRelation = "PR - Job Work-Hour Template";
        }
        field(5292333; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            Description = 'TR Base Calendar';
            TableRelation = "Base Calendar";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Person Group No.", "Person No.")
        {
        }
        key(Key3; "Contact No.")
        {
        }
        key(Key4; "Base Calendar Code", "Job Work-Hour Template Code")
        {
        }
    }

    fieldgroups
    {
    }
}

