table 5103605 "Message Buffer"
{
    // WF0037  Send Message Buffer periodically.
    // WF0040  HTML formatted SMTP E-Mail Notification.
    // WF0112  Send created Message Buffer after task creation.
    // 
    // WF3.01.02:
    // ----------
    // WF0252  Mail functionality corrected. Changed Length in fields 3 "To", 4 "CC", 14 "From" from Text[80] to Text[100].

    Caption = 'Message Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "To"; Text[100])
        {
            Caption = 'To';
            Description = 'WF0252';
        }
        field(4; CC; Text[100])
        {
            Caption = 'CC';
            Description = 'WF0252';
        }
        field(5; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(6; Body; Text[250])
        {
            Caption = 'Body';
        }
        field(7; "Attach File"; BLOB)
        {
            Caption = 'Attach File';
        }
        field(8; "Open Dialog"; Boolean)
        {
            Caption = 'Open Dialog';
        }
        field(9; "Message Processed"; Boolean)
        {
            Caption = 'Message processed';
        }
        field(10; "Workflow Task No."; Code[20])
        {
            Caption = 'Workflow Task No.';
        }
        field(11; "Message Type"; Option)
        {
            Caption = 'Message Type';
            Editable = false;
            OptionCaption = 'E-Mail,SMS';
            OptionMembers = "E-Mail",SMS;
        }
        field(12; "Delivery Date"; Date)
        {
            Caption = 'Delivery Date';
        }
        field(13; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
        }
        field(14; From; Text[100])
        {
            Caption = 'From';
            Description = 'WF0040,WF0252';
        }
        field(15; "Date Sent"; Date)
        {
            Caption = 'Sending Date';
            Description = 'WF0040';
        }
        field(16; "Time Sent"; Time)
        {
            Caption = 'Sending Time';
            Description = 'WF0040';
        }
        field(78; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
            Description = 'WF0112';
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Transaction No.", "Message Processed")
        {
        }
    }

    fieldgroups
    {
    }
}

