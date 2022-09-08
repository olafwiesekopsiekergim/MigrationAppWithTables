table 5103653 "Workflow Task Log"
{
    // WF0101  Workflow Task Log.
    // WF0112  Send created Message Buffer after task creation.
    // 
    // WF3.01:
    // -------
    // WF0185  Modifications for function GetCaptionHeader in Form/Page "Workflow Task Log".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Workflow Task Log';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Model,Message';
            OptionMembers = Model,Message;
        }
        field(3; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(7; "Event No."; Integer)
        {
            Caption = 'Event No.';
        }
        field(8; After; Text[50])
        {
            Caption = 'After';
        }
        field(9; Before; Text[50])
        {
            Caption = 'Before';
        }
        field(10; "Change Date"; Date)
        {
            Caption = 'Change Date';
        }
        field(11; "Change Time"; Time)
        {
            Caption = 'Change Time';
        }
        field(12; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(13; "Automatically performed"; Boolean)
        {
            Caption = 'Automatically performed';
        }
        field(16; "Task Template No."; Code[20])
        {
            Caption = 'Task Template No.';
        }
        field(17; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
        }
        field(18; "Workflow ID"; Integer)
        {
            Caption = 'Workflow ID';
            Editable = false;
        }
        field(19; "Workflow Line No."; Integer)
        {
            Caption = 'Workflow Line No.';
        }
        field(78; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
            Description = 'WF0112';
        }
    }

    keys
    {
        key(Key1; "No.", "Document Type", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Change Date", "Change Time")
        {
        }
        key(Key3; "Task Template No.")
        {
        }
        key(Key4; "Workflow No.", "Workflow Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

