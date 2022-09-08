table 347 "Close Income Statement Buffer"
{
    Caption = 'Close Income Statement Buffer';

    fields
    {
        field(1; "Closing Date"; Date)
        {
            Caption = 'Closing Date';
        }
        field(2; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Closing Date", "G/L Account No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

