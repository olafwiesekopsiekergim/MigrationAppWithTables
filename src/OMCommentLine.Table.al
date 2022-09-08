table 11102096 "OM - Comment Line"
{
    Caption = 'OM Comment Line';
    DataPerCompany = false;

    fields
    {
        field(1; "Comment Entry No."; Integer)
        {
            Caption = 'Comment Entry No.';
            TableRelation = "OM - Comment";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Text; Text[250])
        {
            Caption = 'Text';
        }
    }

    keys
    {
        key(Key1; "Comment Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

