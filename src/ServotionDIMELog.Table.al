table 42014840 "Servotion DIME Log"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(4; "Created Time"; Time)
        {
            Caption = 'Created Time';
        }
        field(5; Processed; Boolean)
        {
            Caption = 'Processed';
        }
        field(6; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(7; "Service Order Line No."; Integer)
        {
            Caption = 'Service Order Line No.';
        }
        field(8; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
        }
        field(9; "Serv. Order Alloc. Entry No."; Integer)
        {
            Caption = 'Serv. Order Alloc. Entry No.';
        }
        field(10; "Repair Status Code"; Code[20])
        {
            Caption = 'Repair Status Code';
        }
        field(11; "Function Name"; Text[250])
        {
            Caption = 'Function Name';
        }
        field(12; "Event Subscriber Name"; Text[250])
        {
            Caption = 'Event Subscriber Name';
        }
        field(14; "Delete Action"; Boolean)
        {
            Caption = 'Delete Action';
        }
        field(20; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
        }
        field(22; Latitude; Decimal)
        {
            Caption = 'Latitude';
        }
        field(23; Longitude; Decimal)
        {
            Caption = 'Longitude';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Delete Action", "Service Order No.")
        {
        }
        key(Key3; "Service Order No.")
        {
        }
        key(Key4; "Resource No.")
        {
        }
    }

    fieldgroups
    {
    }
}

