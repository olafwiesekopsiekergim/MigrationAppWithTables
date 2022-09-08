table 5103638 Message
{
    // WF0125  Check primary table on unblocking. New field Exception.
    // 
    // WF3.01:
    // -------
    // WF0185  Assigned DrillDownPageID for Flowfields to this table.
    // WF0221  Changed length of flowfield "Entry Event Description" from Text 30 to 80.

    Caption = 'Workflow Message';

    fields
    {
        field(1; "Event No."; Code[20])
        {
            Caption = 'Event No.';
            NotBlank = true;
            TableRelation = "ccWorkflow Event";
        }
        field(2; "Event Description"; Text[80])
        {
            CalcFormula = Lookup ("ccWorkflow Event".Description WHERE ("No." = FIELD ("Event No.")));
            Caption = 'Event Description';
            Description = 'WF0221';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
            NotBlank = true;
            TableRelation = Condition;
        }
        field(4; "Condition Description"; Text[80])
        {
            CalcFormula = Lookup (Condition.Description WHERE ("No." = FIELD ("Condition No.")));
            Caption = 'Condition Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Reverse Condition"; Boolean)
        {
            Caption = 'Reverse Condition';
        }
        field(10; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(11; Blocked; Boolean)
        {
            Caption = 'Blocked';
            InitValue = true;
        }
        field(12; Message; Text[250])
        {
            Caption = 'Message Text';
        }
        field(13; "From Date"; Date)
        {
            Caption = 'From Date';
        }
        field(14; "To Date"; Date)
        {
            Caption = 'To Date';
        }
        field(15; "Error Message"; Boolean)
        {
            Caption = 'Error Message';
        }
        field(20; Exception; Boolean)
        {
            CalcFormula = Exist ("Message Exception" WHERE ("Event No." = FIELD ("Event No."),
                                                           "Condition No." = FIELD ("Condition No.")));
            Caption = 'Exception';
            Description = 'WF0125';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Event No.", "Condition No.")
        {
            Clustered = true;
        }
        key(Key2; Blocked)
        {
        }
        key(Key3; "Condition No.")
        {
        }
    }

    fieldgroups
    {
    }
}

