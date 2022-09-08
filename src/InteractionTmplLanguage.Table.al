table 5103 "Interaction Tmpl. Language"
{
    Caption = 'Interaction Tmpl. Language';

    fields
    {
        field(1; "Interaction Template Code"; Code[10])
        {
            Caption = 'Interaction Template Code';
            Editable = false;
            TableRelation = "Interaction Template";
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
        }
    }

    keys
    {
        key(Key1; "Interaction Template Code", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

