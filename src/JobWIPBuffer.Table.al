table 1018 "Job WIP Buffer"
{
    Caption = 'Job WIP Buffer';

    fields
    {
        field(1; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Applied Costs,Applied Sales,Recognized Costs,Recognized Sales,Accrued Costs,Accrued Sales';
            OptionMembers = "Applied Costs","Applied Sales","Recognized Costs","Recognized Sales","Accrued Costs","Accrued Sales";
        }
        field(3; "WIP Entry Amount"; Decimal)
        {
            Caption = 'WIP Entry Amount';
        }
        field(4; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(5; "Bal. G/L Account No."; Code[20])
        {
            Caption = 'Bal. G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(6; "WIP Method"; Code[20])
        {
            Caption = 'WIP Method';
            Editable = false;
        }
        field(7; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Editable = false;
            NotBlank = true;
            TableRelation = Job;
        }
        field(8; "Job Complete"; Boolean)
        {
            Caption = 'Job Complete';
        }
        field(9; "Job WIP Total Entry No."; Integer)
        {
            Caption = 'Job WIP Total Entry No.';
            TableRelation = "Job WIP Total";
        }
        field(22; Reverse; Boolean)
        {
            Caption = 'Reverse';
            InitValue = true;
        }
        field(23; "WIP Posting Method Used"; Option)
        {
            Caption = 'WIP Posting Method Used';
            OptionCaption = 'Per Job,Per Job Ledger Entry';
            OptionMembers = "Per Job","Per Job Ledger Entry";
        }
        field(71; "Dim Combination ID"; Integer)
        {
            Caption = 'Dim Combination ID';
        }
    }

    keys
    {
        key(Key1; "Job No.", "Job WIP Total Entry No.", Type, "Posting Group", "Dim Combination ID", Reverse, "G/L Account No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

