table 160 "Res. Capacity Entry"
{
    Caption = 'Res. Capacity Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(3; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            TableRelation = "Resource Group";
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; Capacity; Decimal)
        {
            Caption = 'Capacity';
            DecimalPlaces = 0 : 5;
        }
        field(42014822; "Start Time"; Time)
        {
            Caption = 'Start Time';
            Description = 'SNAD1.0.0.0';
        }
        field(42014823; "Finish Date"; Date)
        {
            Caption = 'Finish Date';
            Description = 'SNAD1.0.0.0';
        }
        field(42014824; "Finish Time"; Time)
        {
            Caption = 'Finish Time';
            Description = 'SNAD1.0.0.0';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Resource No.", Date)
        {
            SumIndexFields = Capacity;
        }
        key(Key3; "Resource Group No.", Date)
        {
            SumIndexFields = Capacity;
        }
        key(Key4; "Resource No.", Date, "Start Time")
        {
        }
    }

    fieldgroups
    {
    }
}

