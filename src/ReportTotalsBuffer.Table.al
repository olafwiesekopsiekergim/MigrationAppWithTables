table 1150 "Report Totals Buffer"
{
    Caption = 'Report Totals Buffer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(3; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(4; "Amount Formatted"; Text[30])
        {
            Caption = 'Amount Formatted';
        }
        field(5; "Font Bold"; Boolean)
        {
            Caption = 'Font Bold';
        }
        field(6; "Font Underline"; Boolean)
        {
            Caption = 'Font Underline';
        }
        field(7; "Font Italics"; Boolean)
        {
            Caption = 'Font Italics';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

