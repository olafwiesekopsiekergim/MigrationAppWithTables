table 5138369 "Exp Atlas Reg Export Seal"
{
    Caption = 'Atlas Reg Export Seal';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "AAK No."; Code[20])
        {
            Caption = 'AAK No.';
            TableRelation = "Exp Atlas Export Order";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Zeichen; Code[20])
        {
            Caption = 'Sealing party';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

