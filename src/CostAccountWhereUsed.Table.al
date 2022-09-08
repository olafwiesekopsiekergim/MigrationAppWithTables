table 5000001 "Cost Account Where-Used"
{
    Caption = 'Cost Account Where-Used';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(3; "Table Name"; Text[150])
        {
            Caption = 'Table Name';
        }
        field(5; "Field Name"; Text[150])
        {
            Caption = 'Field Name';
        }
        field(6; Line; Text[250])
        {
            Caption = 'Line';
        }
        field(7; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
        }
        field(8; "Cost Account Name"; Text[50])
        {
            Caption = 'Cost Account Name';
        }
        field(9; "Key 1"; Text[50])
        {
            Caption = 'Key 1';
        }
        field(10; "Key 2"; Text[50])
        {
            Caption = 'Key 2';
        }
        field(11; "Key 3"; Text[50])
        {
            Caption = 'Key 3';
        }
        field(12; "Key 4"; Text[50])
        {
            Caption = 'Key 4';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Table Name")
        {
        }
    }

    fieldgroups
    {
    }
}

