table 1510 "Notification Template"
{
    Caption = 'Notification Template';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Notification Body"; BLOB)
        {
            Caption = 'Notification Body';
        }
        field(3; "Notification Header"; BLOB)
        {
            Caption = 'Notification Header';
        }
        field(4; "Notification Footer"; BLOB)
        {
            Caption = 'Notification Footer';
        }
        field(5; "Notification Method"; Option)
        {
            Caption = 'Notification Method';
            OptionCaption = 'E-mail,Note';
            OptionMembers = "E-mail",Note;
        }
        field(6; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'New Record,Approval,Overdue';
            OptionMembers = "New Record",Approval,Overdue;
        }
        field(8; Default; Boolean)
        {
            Caption = 'Default';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

