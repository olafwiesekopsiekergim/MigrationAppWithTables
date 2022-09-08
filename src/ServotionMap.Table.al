table 42014827 "Servotion Map"
{
    Caption = 'Servotion Map';

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionMembers = " ","Service Header",Customer,"Ship-To Address",Location,Resource,"Company Information","Service Header Archive","Service Item Line";
        }
        field(2; "Source No."; Code[50])
        {
            Caption = 'Source No.';
        }
        field(3; "Source No. 2"; Code[50])
        {
            Caption = 'Source No. 2';
        }
        field(4; "Source No. 3"; Integer)
        {
            Caption = 'Source No. 3';
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source No.", "Source No. 2", "Source No. 3")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

