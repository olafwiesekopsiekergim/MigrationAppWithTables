table 5138373 "Exp Atlas Reg Export Container"
{
    Caption = 'Atlas Reg Export Container';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "AAK No."; Code[20])
        {
            Caption = 'AAK No.';
        }
        field(3; "No. Ware"; Code[20])
        {
            Caption = 'No. Goods';
        }
        field(4; "Line No. Ware"; Integer)
        {
            Caption = 'Line No. Kinds';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Nummer; Code[17])
        {
            Caption = 'Number';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Line No. Ware", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

