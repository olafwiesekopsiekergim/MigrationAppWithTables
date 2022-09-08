table 5151 "Integration Record"
{
    Caption = 'Integration Record';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(2; "Page ID"; Integer)
        {
            Caption = 'Page ID';
        }
        field(3; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(5150; "Integration ID"; Guid)
        {
            Caption = 'Integration ID';
        }
        field(5151; "Deleted On"; DateTime)
        {
            Caption = 'Deleted On';
        }
        field(5152; "Modified On"; DateTime)
        {
            Caption = 'Modified On';
        }
    }

    keys
    {
        key(Key1; "Integration ID")
        {
            Clustered = true;
        }
        key(Key2; "Record ID")
        {
        }
        key(Key3; "Page ID", "Deleted On")
        {
        }
        key(Key4; "Page ID", "Modified On")
        {
        }
    }

    fieldgroups
    {
    }
}

