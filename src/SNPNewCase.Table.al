table 42015100 "SNP New Case"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Case No."; Code[20])
        {
            Caption = 'Case No.';
        }
        field(3; "Creation Date"; DateTime)
        {
            Caption = 'Creation Date';
        }
        field(4; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
        }
        field(5; "Service Item Description"; Text[50])
        {
            Caption = 'Service Item Description';
        }
        field(6; "Service Item Serial No."; Code[20])
        {
            Caption = 'Service Item Serial No.';
        }
        field(7; Symptom; Code[20])
        {
            Caption = 'Symptom';
        }
        field(8; "Fault Comment"; Text[250])
        {
            Caption = 'Fault Comment';
        }
        field(9; "Picture 1"; BLOB)
        {
            Caption = 'Picture 1';
        }
        field(10; "Picture 2"; BLOB)
        {
            Caption = 'Picture 2';
        }
        field(11; "Picture 3"; BLOB)
        {
            Caption = 'Picture 3';
        }
        field(12; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

