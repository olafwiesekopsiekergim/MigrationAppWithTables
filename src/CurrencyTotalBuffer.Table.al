table 332 "Currency Total Buffer"
{
    Caption = 'Currency Total Buffer';

    fields
    {
        field(1; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(2; "Total Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Amount';
        }
        field(3; "Total Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Amount (LCY)';
        }
        field(4; Counter; Integer)
        {
            Caption = 'Counter';
        }
    }

    keys
    {
        key(Key1; "Currency Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

