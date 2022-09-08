table 5103621 "Workflow Task Tracking"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Task Tracking';

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
        field(3; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
            NotBlank = true;
        }
        field(4; Read; Boolean)
        {
            Caption = 'Read';
        }
        field(5; "Date Read"; Date)
        {
            Caption = 'Date Read';
        }
        field(6; "Time Read"; Time)
        {
            Caption = 'Time Read';
        }
        field(7; Notified; Boolean)
        {
            Caption = 'Notified';
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

