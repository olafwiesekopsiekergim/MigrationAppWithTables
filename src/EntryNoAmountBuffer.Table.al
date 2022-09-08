table 386 "Entry No. Amount Buffer"
{
    Caption = 'Entry No. Amount Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(3; Amount2; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount2';
        }
        field(4; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
        }
        field(5; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(6; "End Date"; Date)
        {
            Caption = 'End Date';
        }
    }

    keys
    {
        key(Key1; "Business Unit Code", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

