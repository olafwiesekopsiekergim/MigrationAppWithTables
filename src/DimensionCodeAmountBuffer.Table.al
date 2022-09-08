table 375 "Dimension Code Amount Buffer"
{
    Caption = 'Dimension Code Amount Buffer';

    fields
    {
        field(1; "Line Code"; Code[20])
        {
            Caption = 'Line Code';
        }
        field(2; "Column Code"; Code[20])
        {
            Caption = 'Column Code';
        }
        field(3; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
    }

    keys
    {
        key(Key1; "Line Code", "Column Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

