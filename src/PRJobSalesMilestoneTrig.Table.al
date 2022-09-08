table 5292364 "PR - Job Sales Milestone Trig."
{
    Caption = 'Job Sales Milestone Trigger';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(100; "-- Milestone"; Integer)
        {
            Caption = '-- Milestone';
            Enabled = false;
        }
        field(110; "Milestone Job No."; Code[20])
        {
            Caption = 'Milestone Job No.';
            Description = 'TR';
            TableRelation = Job;
        }
        field(111; "Milestone Unique No."; Integer)
        {
            Caption = 'Milestone Unique No.';
        }
        field(112; "Milestone WBS"; Code[50])
        {
            Caption = 'Milestone WBS';
        }
        field(120; "Milestone Description"; Text[50])
        {
            CalcFormula = Lookup ("PR - Job Line Budget".Description WHERE ("Job No." = FIELD ("Milestone Job No."),
                                                                           "Unique No." = FIELD ("Milestone Unique No.")));
            Caption = 'Milestone Description';
            Description = 'LU Job Line Budget';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; "Milestone Completed"; Boolean)
        {
            CalcFormula = Lookup ("PR - Job Line Budget"."Milestone Completed" WHERE ("Job No." = FIELD ("Milestone Job No."),
                                                                                     "Unique No." = FIELD ("Milestone Unique No.")));
            Caption = 'Milestone Completed';
            Description = 'LU Job Line Budget';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "-- Trigger for Job Line"; Integer)
        {
            Caption = '-- Trigger for Job Line';
            Enabled = false;
        }
        field(210; "Trigger for Job No."; Code[20])
        {
            Caption = 'Trigger for Job No.';
            Description = 'TR';
            TableRelation = Job;
        }
        field(211; "Trigger for Unique No."; Integer)
        {
            Caption = 'Trigger for Unique No.';
        }
        field(212; "Trigger for WBS"; Code[50])
        {
            Caption = 'Trigger for WBS';
        }
        field(220; "Trigger for Job Line"; Text[50])
        {
            CalcFormula = Lookup ("PR - Job Line Budget".Description WHERE ("Job No." = FIELD ("Trigger for Job No."),
                                                                           "Unique No." = FIELD ("Trigger for Unique No.")));
            Caption = 'Trigger for Job Line';
            Description = 'LU Job Line Budget';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Milestone Job No.", "Milestone Unique No.")
        {
        }
        key(Key3; "Trigger for Job No.", "Trigger for Unique No.")
        {
        }
    }

    fieldgroups
    {
    }
}

