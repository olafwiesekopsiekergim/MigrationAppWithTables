table 5954 "Work-Hour Template"
{
    Caption = 'Work-Hour Template';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; Monday; Decimal)
        {
            Caption = 'Monday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(4; Tuesday; Decimal)
        {
            Caption = 'Tuesday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(5; Wednesday; Decimal)
        {
            Caption = 'Wednesday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(6; Thursday; Decimal)
        {
            Caption = 'Thursday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(7; Friday; Decimal)
        {
            Caption = 'Friday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(8; Saturday; Decimal)
        {
            Caption = 'Saturday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(9; Sunday; Decimal)
        {
            Caption = 'Sunday';
            DecimalPlaces = 0 : 5;
            MaxValue = 24;
            MinValue = 0;
        }
        field(10; "Total per Week"; Decimal)
        {
            Caption = 'Total per Week';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(42014822; "Monday Start"; Time)
        {
            Caption = 'Monday Start';
            Description = 'SNST1.0.0.0';
        }
        field(42014823; "Tuesday Start"; Time)
        {
            Caption = 'Tuesday Start';
            Description = 'SNST1.0.0.0';
        }
        field(42014824; "Wednesday Start"; Time)
        {
            Caption = 'Wednesday Start';
            Description = 'SNST1.0.0.0';
        }
        field(42014825; "Thursday Start"; Time)
        {
            Caption = 'Thursday Start';
            Description = 'SNST1.0.0.0';
        }
        field(42014826; "Friday Start"; Time)
        {
            Caption = 'Friday Start';
            Description = 'SNST1.0.0.0';
        }
        field(42014827; "Saturday Start"; Time)
        {
            Caption = 'Saturday Start';
            Description = 'SNST1.0.0.0';
        }
        field(42014828; "Sunday Start"; Time)
        {
            Caption = 'Sunday Start';
            Description = 'SNST1.0.0.0';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

