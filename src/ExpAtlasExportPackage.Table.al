table 5138352 "Exp Atlas Export Package"
{
    Caption = 'Atlas Export Package';

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
        field(3; "No. Ware"; Code[20])
        {
            Caption = 'No. Goods';
        }
        field(4; "Line No. Goods"; Integer)
        {
            Caption = 'Line No. Goods';
        }
        field(5; "Line No. Package"; Integer)
        {
            Caption = 'Line No. Package';
        }
        field(10; Anzahl; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 2;
        }
        field(11; "Lfd. Nummer"; Code[2])
        {
            Caption = 'Number';
            Editable = false;
        }
        field(12; Verpackungsart; Code[3])
        {
            Caption = 'Type of packages';
            Description = 'C0017';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = FILTER ('C0017'));
        }
        field(13; ZeichenNummer; Text[42])
        {
            Caption = 'Shipping marks';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Line No. Goods", "Line No. Package")
        {
            Clustered = true;
            SumIndexFields = Anzahl;
        }
    }

    fieldgroups
    {
    }
}

