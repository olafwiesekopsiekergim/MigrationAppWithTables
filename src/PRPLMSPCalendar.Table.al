table 5292757 "PRPL - MSP Calendar"
{
    Caption = 'MSP Calendar';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Week Day"; Integer)
        {
            Caption = 'Week Day';
        }
        field(3; "Time From"; Time)
        {
            Caption = 'Time From';
        }
        field(10; "Time To"; Time)
        {
            Caption = 'Time To';
        }
        field(20; Offset; Decimal)
        {
            Caption = 'Offset';
        }
        field(90; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(100; "Base Calendar"; Boolean)
        {
            Caption = 'Base Calendar';
        }
        field(4800; "-- MSP"; Integer)
        {
            Caption = '-- MSP';
            Enabled = false;
        }
        field(4841; "MSP Base Calendar UID"; Code[10])
        {
            Caption = 'MSP Base Calendar UID';
            Description = 'ne';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Code", "Week Day", "Time From")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

