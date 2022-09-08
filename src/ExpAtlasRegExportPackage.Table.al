table 5138372 "Exp Atlas Reg Export Package"
{
    Caption = 'Atlas Reg Export Package';

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
        field(10; Anzahl; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 2;
        }
        field(11; Nummer; Code[2])
        {
            Caption = 'Number';
        }
        field(12; Verpackungsart; Code[3])
        {
            Caption = 'Type of packages';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = FILTER ('C0017'));
        }
        field(13; ZeichenNummer; Text[42])
        {
            Caption = 'Shipping marks';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Line No. Ware", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Anzahl;
        }
    }

    fieldgroups
    {
    }
}

