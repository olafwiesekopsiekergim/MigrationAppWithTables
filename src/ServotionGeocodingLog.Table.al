table 42014862 "Servotion Geocoding Log"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
        }
        field(3; "Source No."; Text[250])
        {
            Caption = 'Source No.';
            NotBlank = true;
        }
        field(4; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
        }
        field(5; "Log Time"; Time)
        {
            Caption = 'Log Time';
        }
        field(6; "Source No. 2"; Text[250])
        {
            Caption = 'Source No. 2';
        }
        field(7; "Log Date"; Date)
        {
            Caption = 'Log Date';
        }
        field(8; "Error Code"; Text[250])
        {
            Caption = 'Error Code';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Log Date")
        {
        }
    }

    fieldgroups
    {
    }
}

