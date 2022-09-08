table 5292755 "PRPL - MSP Job"
{
    Caption = 'MSP Job';

    fields
    {
        field(1; "MSP Code"; Code[20])
        {
            Caption = 'MSP Code';
            Description = 'TR "MSP Code"';
            NotBlank = true;
            TableRelation = "PRPL - MSP Code";
        }
        field(2; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            NotBlank = true;
            TableRelation = Job;
        }
        field(50; Description; Text[50])
        {
            CalcFormula = Lookup (Job.Description WHERE ("No." = FIELD ("Job No.")));
            Caption = 'Description';
            Description = 'LU Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(51; "Description 2"; Text[50])
        {
            CalcFormula = Lookup (Job."Description 2" WHERE ("No." = FIELD ("Job No.")));
            Caption = 'Description 2';
            Description = 'LU Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(230; "MSP Filename"; Text[250])
        {
            Caption = 'MSP Filename';
            Description = 'ne';
        }
    }

    keys
    {
        key(Key1; "MSP Code", "Job No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.")
        {
        }
    }

    fieldgroups
    {
    }
}

