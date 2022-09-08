table 5138354 "Exp Atlas Export Related Doc"
{
    Caption = 'Atlas Export Related Doc';

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
        field(4; "Line No. Ware"; Integer)
        {
            Caption = 'Line No. Kinds';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Qualifizierung; Text[3])
        {
            Caption = 'Qualifier';
            Description = 'I0136';
            Editable = false;
        }
        field(11; Typ; Code[4])
        {
            Caption = 'Type';
            Description = 'I0136';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(12; Referenz; Text[35])
        {
            Caption = 'Reference';
        }
        field(13; Zusatz; Text[35])
        {
            Caption = 'Addition';
        }
        field(14; "Datum der Ausstellung"; Date)
        {
            Caption = 'Issue date';
        }
        field(15; "Datum Gueltikeitsende"; Date)
        {
            Caption = 'Expiry date';
        }
        field(16; Detail; Text[10])
        {
            Caption = 'Detail';
        }
        field(17; Wert; Decimal)
        {
            Caption = 'Value';
            DecimalPlaces = 0 : 0;
        }
        field(18; Masseinheit; Text[10])
        {
            Caption = 'Unit of Meassure';
            Description = 'A0140';
        }
        field(19; Abschreibungsmenge; Decimal)
        {
            Caption = 'Deduction Quantity';
        }
        field(100; "Typ Textvalue"; Text[10])
        {
            Caption = 'Type Textvalue';
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

