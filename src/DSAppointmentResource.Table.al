table 2087632 "DS Appointment Resource"
{
    Caption = 'DS Appointment Resource';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = "DS Appointment"."Entry No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Resource No."; Text[50])
        {
            Caption = 'Resource No.';
        }
        field(11; "Resource Name"; Text[100])
        {
            Caption = 'Resource Name';
        }
        field(12; "Display Name"; Text[100])
        {
            Caption = 'Display Name';
        }
        field(13; "Alternative Resource"; Boolean)
        {
            Caption = 'Alternative Resource';
        }
        field(14; "Resource Type"; Text[100])
        {
        }
        field(15; "Source Type"; Text[10])
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

