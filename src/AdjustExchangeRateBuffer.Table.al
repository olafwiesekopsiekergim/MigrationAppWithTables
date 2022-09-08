table 331 "Adjust Exchange Rate Buffer"
{
    Caption = 'Adjust Exchange Rate Buffer';

    fields
    {
        field(1; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(2; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
        }
        field(3; AdjBase; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'AdjBase';
        }
        field(4; AdjBaseLCY; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'AdjBaseLCY';
        }
        field(5; AdjAmount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'AdjAmount';
        }
        field(6; TotalGainsAmount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'TotalGainsAmount';
        }
        field(7; TotalLossesAmount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'TotalLossesAmount';
        }
        field(8; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(10; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
        }
        field(11; Index; Integer)
        {
            Caption = 'Index';
        }
    }

    keys
    {
        key(Key1; "Currency Code", "Posting Group", "Dimension Entry No.", "Posting Date", "IC Partner Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

