table 5103611 "Workflow Line Predecessor"
{
    // WF0081 New Fields: Task Template No., Task Description
    // 
    // WF3.01:
    // -------
    // WF0185  Added DataCaptionFields "Workflow No.,Workflow Line No.".

    Caption = 'Workflow Line Predecessor';
    DataCaptionFields = "Workflow No.", "Workflow Line No.";

    fields
    {
        field(1; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
            NotBlank = true;
            TableRelation = "Workflow Header";
        }
        field(2; "Workflow Line No."; Integer)
        {
            Caption = 'Workflow Line No.';
            TableRelation = "Workflow Line"."Line No." WHERE ("No." = FIELD ("Workflow No."));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "Workflow Line"."Line No." WHERE ("No." = FIELD ("Workflow No."));
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Predecessor,Successor';
            OptionMembers = Predecessor,Successor;
        }
        field(5; "Condition not valid"; Boolean)
        {
            Caption = 'Condition not valid';
        }
        field(6; "Approval Result"; Option)
        {
            Caption = 'Approval Result';
            OptionCaption = ' ,Approved,Not Approved';
            OptionMembers = " ",Approved,"Not Approved";
        }
        field(7; Flexibility; Option)
        {
            Caption = 'Flexibility';
            Description = 'WF0081';
            OptionCaption = 'None,Selection,Cancel';
            OptionMembers = "None",Selection,Cancel;
        }
        field(8; "Predec./Succ.Task Template No."; Code[20])
        {
            CalcFormula = Lookup ("Workflow Line"."Task Template No." WHERE ("No." = FIELD ("Workflow No."),
                                                                            "Line No." = FIELD ("Line No.")));
            Caption = 'Predecessor/Successor Task Template No.';
            Description = 'WF0081';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Workflow Task"."No." WHERE ("Document Type" = CONST (Model));
        }
        field(9; "Predec./Succ. Task Description"; Text[100])
        {
            CalcFormula = Lookup ("Workflow Task".Description WHERE ("No." = FIELD ("Predec./Succ.Task Template No.")));
            Caption = 'Predecessor/Successor Task Description';
            Description = 'WF0081';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Task Template No."; Code[20])
        {
            CalcFormula = Lookup ("Workflow Line"."Task Template No." WHERE ("No." = FIELD ("Workflow No."),
                                                                            "Line No." = FIELD ("Workflow Line No.")));
            Caption = 'Task Template No.';
            Description = 'WF0081';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Workflow Task"."No." WHERE ("Document Type" = CONST (Model));
        }
        field(11; "Task Description"; Text[100])
        {
            CalcFormula = Lookup ("Workflow Task".Description WHERE ("No." = FIELD ("Task Template No.")));
            Caption = 'Task Description';
            Description = 'WF0081';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Workflow No.", "Workflow Line No.", Type, "Line No.", "Condition not valid")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

