table 5103630 "Workflow Task Field Protection"
{
    // WF0028  New Flowfield shows open tasks in form Process Field Protection.
    // 
    // WF3.01:
    // -------
    // WF0185  Changed Message Text1105103600.
    // 
    // WF3.01.01:
    // ----------
    // WF0232  New Flowfield for Field Security check on Workflow Task Field Protection
    //         only if Task Template is used in a certified Workflow.
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.02.01:
    // ----------
    // WF0280  Removed function MaintainChangeLog from Workflow Services.

    Caption = 'Task Field Protection';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Model,Message';
            OptionMembers = Model,Message;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'Task';
            NotBlank = true;
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(5; "Table Caption"; Text[250])
        {
            Caption = 'Table Caption';
            Editable = false;
        }
        field(6; "Field Caption"; Text[80])
        {
            Caption = 'Field Caption';
            Editable = false;
        }
        field(10; "Open Tasks"; Integer)
        {
            CalcFormula = Count ("Workflow Task" WHERE (Completed = CONST (false),
                                                       "Table No." = FIELD ("Table No."),
                                                       "Task Template No." = FIELD ("No."),
                                                       "Document Type" = CONST (Message)));
            Caption = 'Open Tasks';
            Description = 'WF0028';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Used in Certified Workflows"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Task Template No." = FIELD ("No."),
                                                       Status = CONST (Certified)));
            Caption = 'Used in Certified Workflows';
            Description = 'WF0232';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Table No.", "Field No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "Field No.")
        {
        }
    }

    fieldgroups
    {
    }
}

