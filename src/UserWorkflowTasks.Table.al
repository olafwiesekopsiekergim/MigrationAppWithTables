table 5103654 "User Workflow Tasks"
{
    // WF0169  New key "User ID,Workflow Task No.,Delivery Date" for function GetNewTasks.
    // 
    // WF3.01:
    // -------
    // WF0193  Added missing Caption ENG in field "User ID".
    // WF0213  Code/Performance optimization.
    // WF0220  Corrected TeamFilter if user "Is not Member".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.02:
    // -------
    // WF0270  Removed TeamFilter length limitation (Text[250] -> Text).

    Caption = 'User Workflow Tasks ';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WF0193,WFNAV7';
            Editable = false;
            NotBlank = true;
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Delivery Date"; Date)
        {
            Caption = 'Delivery Date';
            Editable = false;
        }
        field(3; "Workflow Task No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Workflow Task"."No.";
            //This property is currently not supported
            //TestTableRelation = true;
            ValidateTableRelation = true;
        }
        field(4; "Open Workflow Portal"; Boolean)
        {
            Caption = 'Open Workflow Portal';
            Editable = false;
        }
        field(5; "Run automatically"; Boolean)
        {
            Caption = 'Run automatically';
            Editable = false;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = 'Model,Message';
            OptionMembers = Model,Message;
        }
    }

    keys
    {
        key(Key1; "User ID", "Delivery Date", "Workflow Task No.")
        {
            Clustered = true;
        }
        key(Key2; "User ID", "Workflow Task No.", "Delivery Date")
        {
        }
    }

    fieldgroups
    {
    }
}

