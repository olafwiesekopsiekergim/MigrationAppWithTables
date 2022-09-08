table 5196 "To-do Interaction Language"
{
    Caption = 'To-do Interaction Language';

    fields
    {
        field(1; "To-do No."; Code[20])
        {
            Caption = 'To-do No.';
            TableRelation = "To-do";
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Attachment No."; Integer)
        {
            Caption = 'Attachment No.';
            TableRelation = Attachment;
        }
    }

    keys
    {
        key(Key1; "To-do No.", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

