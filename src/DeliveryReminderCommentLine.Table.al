table 5005275 "Delivery Reminder Comment Line"
{
    Caption = 'Delivery Reminder Comment Line';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Delivery Reminder,Issued Delivery Reminder';
            OptionMembers = "Delivery Reminder","Issued Delivery Reminder";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

