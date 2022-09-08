table 828 "DO Payment Credit Card Number"
{
    Caption = 'DO Payment Credit Card Number';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = "DO Payment Credit Card"."No.";
        }
        field(2; Data; BLOB)
        {
            Caption = 'Data';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

