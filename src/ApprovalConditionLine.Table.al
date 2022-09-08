table 5103646 "Approval Condition Line"
{
    // WF3.01:
    // -------
    // WF0191  Added TableRelation in field "No.".

    Caption = 'Approval Condition Line';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0191';
            TableRelation = "Approval Condition";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Text; Text[80])
        {
            Caption = 'Text';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

