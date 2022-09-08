table 5138363 "Exp Atlas Goods Template"
{
    Caption = 'Atlas Goods Template';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Code"; Code[2])
        {
            Caption = 'Code';
            Description = 'Ursprungsbundesland, bei CalcWareLine';
        }
        field(3; "Supplementary Units"; Boolean)
        {
            Caption = 'Supplementary Units';
        }
        field(5; "Aggregation Code 2"; Code[20])
        {
            Caption = 'Aggregation Code 2';
            Description = '2. Verdichtungscode (angem. Verfahren), bei CalcWareLine';
        }
        field(6; "Aggregation Code 3"; Code[20])
        {
            Caption = 'Aggregation Code 3';
            Description = '3. Verdichtungscode (vorang. Verfahren), bei CalcWareLine';
        }
        field(10; "Nummer (KN8)"; Code[8])
        {
            Caption = 'Customs code identification (KN8)';
            TableRelation = "Tariff Number";
            ValidateTableRelation = false;
        }
        field(11; "Nummer (TARIC)"; Code[2])
        {
            Caption = 'Customs code identification (TARIC)';
        }
        field(12; "Nummer (erster Zusatz)"; Code[4])
        {
            Caption = 'Customs code identification (first addition)';
        }
        field(13; "Nummer (zweiter Zusatz)"; Code[4])
        {
            Caption = 'Customs code identification (second addition)';
        }
        field(14; "Nummer (nationale Angabe)"; Code[4])
        {
            Caption = 'Customs code identification (national addition)';
        }
        field(15; Bezeichnung; Text[250])
        {
            Caption = 'Goods description';
        }
        field(16; "Registriernummer Fremdsystem"; Code[70])
        {
            Caption = 'Registration number third-party System (Additional export information)';
        }
        field(17; Vermerk; Text[70])
        {
            Caption = 'Additional information';
        }
        field(18; Ursprungsbundesland; Code[2])
        {
            Caption = 'Source Area';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A1270'));
        }
        field(19; "Eigenmasse (Basis)"; Decimal)
        {
            Caption = 'Unit net weight (Base)';
            DecimalPlaces = 3 : 3;
            Description = 'je Basiseinheit';
        }
        field(20; "Rohmasse (Basis)"; Decimal)
        {
            Caption = 'Unit gross weight (Base)';
            DecimalPlaces = 3 : 3;
            Description = 'je Basiseinheit';
        }
        field(21; "Verfahren angemeldetes"; Code[2])
        {
            Caption = 'Customs procedure declared';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0124'));
        }
        field(22; "Verfahren vorangegangenes"; Code[2])
        {
            Caption = 'Customs procedure previous';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0125'));
        }
        field(23; "Verfahren weiteres"; Code[3])
        {
            Caption = 'Customs procedure additional';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0126'));
        }
        field(24; "Aussenhandelsstatistik Menge"; Decimal)
        {
            Caption = '1st Specified tariff Quantity';
            DecimalPlaces = 3 : 3;
        }
        field(25; "Aussenhandelsstatistik Wert"; Decimal)
        {
            Caption = 'Statistical Value';
        }
        field(26; "Vorpapier Typ"; Code[6])
        {
            Caption = 'Previous Document Type';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = CONST ('A0101'));
        }
        field(51; "Gefahrgutnummer (UNDG)"; Code[4])
        {
            Caption = 'Dangerous Goods No. (UNDG)';
            Description = 'C0101';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(60; "No of Related Items"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Exp Atlas Goods Templ ItemLink" WHERE ("Source Type" = CONST (27),
                                                                        "Goods Template" = FIELD ("No.")));
            Caption = 'No of Related Items';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(110; Correction; Boolean)
        {
            Caption = 'Correction';
            Description = 'Kennzeichen für Gutschrift in der Codeunit "Calcwareline"';
        }
    }

    keys
    {
        key(Key1; "No.", "Code", "Aggregation Code 2", "Aggregation Code 3")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

