table 42014854 "Servotion CC Res. Zone"
{
    Caption = 'CC Res. Zone';

    fields
    {
        field(1; "Computing Cache Entry No."; Integer)
        {
            Caption = 'Computing Cache Entry No.';
        }
        field(2; "Resource Zone Code"; Code[10])
        {
            Caption = 'Resource Zone Code';
        }
    }

    keys
    {
        key(Key1; "Computing Cache Entry No.", "Resource Zone Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

