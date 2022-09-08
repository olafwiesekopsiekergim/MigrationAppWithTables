table 5351557 "CESS - XML Parser Buffer"
{
    Caption = 'Sanscreen XML Parser Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(1000; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(1010; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(1020; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(1030; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(1040; Hit; Boolean)
        {
            Caption = 'Hit';
        }
        field(1050; ProtocolId; Text[30])
        {
            Caption = 'Protocol Id';
            Description = 'ID vom SanScreen System';
            Editable = false;
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

