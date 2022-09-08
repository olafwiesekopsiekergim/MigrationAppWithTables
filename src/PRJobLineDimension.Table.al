table 5292368 "PR - Job Line Dimension"
{
    Caption = 'Job Line Dimension';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            NotBlank = true;
            TableRelation = Job;
        }
        field(3; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR Job Line';
            NotBlank = true;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(4; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(10; "Dimension Value Code"; Code[20])
        {
            Caption = 'Dimension Value Code';
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
        }
        field(20; "Dimension No."; Integer)
        {
            Caption = 'Dimension No.';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Job No.", "Job Line Unique No.", "Dimension Code")
        {
            Clustered = true;
        }
        key(Key2; "Dimension Code", "Dimension Value Code")
        {
        }
        key(Key3; "Table ID", "Job No.", "Job Line Unique No.", "Dimension No.", "Dimension Code")
        {
        }
    }

    fieldgroups
    {
    }
}

