table 2087638 "DS Job Planning Line Link"
{
    Caption = 'DS Job Planning Line Link';

    fields
    {
        field(1; "Appointment Id"; Integer)
        {
            Caption = 'Appointment Id';
        }
        field(2; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource."No.";
        }
        field(3; "Job Planning Line Line No."; Integer)
        {
            Caption = 'Allocation Entry No.';
        }
    }

    keys
    {
        key(Key1; "Appointment Id", "Resource No.")
        {
            Clustered = true;
        }
        key(Key2; "Job Planning Line Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

