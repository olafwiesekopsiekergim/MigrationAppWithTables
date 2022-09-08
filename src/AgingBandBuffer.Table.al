table 47 "Aging Band Buffer"
{
    Caption = 'Aging Band Buffer';

    fields
    {
        field(1; "Currency Code"; Code[20])
        {
            Caption = 'Currency Code';
        }
        field(2; "Column 1 Amt."; Decimal)
        {
            Caption = 'Column 1 Amt.';
        }
        field(3; "Column 2 Amt."; Decimal)
        {
            Caption = 'Column 2 Amt.';
        }
        field(4; "Column 3 Amt."; Decimal)
        {
            Caption = 'Column 3 Amt.';
        }
        field(5; "Column 4 Amt."; Decimal)
        {
            Caption = 'Column 4 Amt.';
        }
        field(6; "Column 5 Amt."; Decimal)
        {
            Caption = 'Column 5 Amt.';
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

