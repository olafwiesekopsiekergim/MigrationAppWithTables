table 2087640 "DS Time Sheet Link"
{

    fields
    {
        field(1; AppointmentId; BigInteger)
        {
        }
        field(2; ResourceNo; Code[20])
        {
        }
        field(3; "Time Sheet No."; Code[20])
        {
            Caption = 'Time Sheet No.';
            TableRelation = "Time Sheet Header";
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
    }

    keys
    {
        key(Key1; AppointmentId, ResourceNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

