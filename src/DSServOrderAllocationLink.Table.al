table 2087633 "DS Serv. Order Allocation Link"
{
    Caption = 'DS Serv. Order Allocation Link';

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
        field(3; "Allocation Entry No."; Integer)
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
        key(Key2; "Allocation Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

