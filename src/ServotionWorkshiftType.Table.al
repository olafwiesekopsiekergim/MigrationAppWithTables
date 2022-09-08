table 42014822 "Servotion Workshift Type"
{
    Caption = 'Workshift Type';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Workshift Start"; Boolean)
        {
            Caption = 'Workshift Start';
        }
        field(4; "Workshift Finish"; Boolean)
        {
            Caption = 'Workshift Finish';
        }
        field(5; Travel; Boolean)
        {
            Caption = 'Travel';
        }
        field(6; Work; Boolean)
        {
            Caption = 'Work';
        }
        field(7; Pausable; Boolean)
        {
            Caption = 'Pausable';
        }
        field(8; Worktime; Boolean)
        {
            Caption = 'Worktime';
        }
        field(9; Billable; Boolean)
        {
            Caption = 'Billable';
        }
        field(10; "Order"; Integer)
        {
            Caption = 'Order';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Order")
        {
        }
    }

    fieldgroups
    {
    }
}

