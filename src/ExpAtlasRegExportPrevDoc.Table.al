table 5138371 "Exp Atlas Reg Export Prev Doc"
{
    Caption = 'Atlas Reg Export Prev Doc';

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
            Caption = 'Line No. Ware';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Referenz; Text[35])
        {
            Caption = 'Reference';
        }
        field(11; Zusatz; Text[26])
        {
            Caption = 'Addition';
        }
        field(12; Typ; Code[3])
        {
            Caption = 'Typ';
            Description = 'C0014';
            TableRelation = "Exp Atlas Table Code".Code;
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

