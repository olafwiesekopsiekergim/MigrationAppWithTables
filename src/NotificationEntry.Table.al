table 1511 "Notification Entry"
{
    Caption = 'Notification Entry';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'New Record,Approval,Overdue';
            OptionMembers = "New Record",Approval,Overdue;
        }
        field(4; "Recipient User ID"; Code[50])
        {
            Caption = 'Recipient User ID';
        }
        field(5; "Triggered By Record"; RecordID)
        {
            Caption = 'Triggered By Record';
        }
        field(6; "Link Target Page"; Integer)
        {
            Caption = 'Link Target Page';
            TableRelation = "Page Metadata".ID;
        }
        field(7; "Custom Link"; Text[250])
        {
            Caption = 'Custom Link';
            ExtendedDatatype = URL;
        }
        field(8; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
            Editable = false;
        }
        field(9; "Created Date-Time"; DateTime)
        {
            Caption = 'Created Date-Time';
            Editable = false;
        }
        field(10; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
            TableRelation = User."User Name";
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
        key(Key2; "Created Date-Time")
        {
        }
    }

    fieldgroups
    {
    }
}

