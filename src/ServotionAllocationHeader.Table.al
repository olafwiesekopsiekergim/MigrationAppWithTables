table 42014857 "Servotion Allocation Header"
{
    Caption = 'Calculation Result';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; Created; DateTime)
        {
            Caption = 'Created';
        }
        field(3; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(4; Allocated; DateTime)
        {
            Caption = 'Allocated';
        }
        field(5; "Original Entry No."; Integer)
        {
            Caption = 'Original Entry No.';
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Computing,Editing,Computed,Allocated,Cancelled';
            OptionMembers = Computing,Editing,Computed,Allocated,Cancelled;
        }
        field(7; "Factor Set ID"; Integer)
        {
            Caption = 'Factor Set ID';
        }
        field(8; "Schedule Starting Date Time"; DateTime)
        {
            Caption = 'Schedule Starting Date Time';
        }
        field(9; "Schedule Finishing Date"; Date)
        {
            Caption = 'Schedule Finishing Date';
        }
        field(10; Runtime; Duration)
        {
            Caption = 'Runtime';
        }
        field(34; "License Check Error"; Text[250])
        {
            Caption = 'License Check Error';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

