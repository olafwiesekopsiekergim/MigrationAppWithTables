table 5292338 "PR - Component Group"
{
    Caption = 'Component Group';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(100; "Sort No."; Code[20])
        {
            Caption = 'Sort No.';
        }
        field(101; Show; Boolean)
        {
            Caption = 'Show';
        }
        field(102; Level; Integer)
        {
            Caption = 'Level';
        }
        field(1000; "Link to No."; Integer)
        {
            Caption = 'Link to No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Link to No.", "Code")
        {
        }
        key(Key3; "Sort No.", Show)
        {
        }
        key(Key4; Level)
        {
        }
    }

    fieldgroups
    {
    }
}

