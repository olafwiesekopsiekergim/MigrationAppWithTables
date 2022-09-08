table 5646 "Depreciation Table Buffer"
{
    Caption = 'Depreciation Table Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "No. of Days in Period"; Integer)
        {
            Caption = 'No. of Days in Period';
        }
        field(3; "Period Depreciation %"; Decimal)
        {
            Caption = 'Period Depreciation %';
            DecimalPlaces = 1 : 1;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

