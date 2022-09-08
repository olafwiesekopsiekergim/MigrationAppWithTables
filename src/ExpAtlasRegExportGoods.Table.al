table 5138370 "Exp Atlas Reg Export Goods"
{
    Caption = 'Atlas Reg Export Goods';

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
        field(3; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
        }
        field(4; AusfuhrWare; Code[20])
        {
            Caption = 'Export goods';
            TableRelation = "Exp Atlas Goods Template"."No.";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(6; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Editable = false;
        }
        field(7; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(8; "Source Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Line No.';
            Editable = false;
        }
        field(10; Positionsnummer; Code[3])
        {
            Caption = 'Goods Item Number';
        }
        field(11; "Nummer (KN8)"; Code[8])
        {
            Caption = 'Customs code identification (KN8)';
            TableRelation = "Tariff Number";
        }
        field(12; "Nummer (TARIC)"; Code[2])
        {
            Caption = 'Customs code identification (TARIC)';
        }
        field(13; "Nummer (erster Zusatz)"; Code[4])
        {
            Caption = 'Customs code identification (first addition)';
        }
        field(14; "Nummer (zweiter Zusatz)"; Code[4])
        {
            Caption = 'Customs code identification (second addition)';
        }
        field(15; "Nummer (nationale Angabe)"; Code[4])
        {
            Caption = 'Customs code identification (national addition)';
        }
        field(16; Bezeichnung; Text[250])
        {
            Caption = 'Goods description';
        }
        field(17; "Registriernummer Fremdsystem"; Code[70])
        {
            Caption = 'Registration number third-party System (Additional export information)';
        }
        field(18; Vermerk; Text[70])
        {
            Caption = 'Additional information';
        }
        field(19; Ursprungsbundesland; Code[2])
        {
            Caption = 'Source Area';
            Description = 'A1270';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(20; Eigenmasse; Decimal)
        {
            Caption = 'Unit net weight';
            DecimalPlaces = 3 : 3;
        }
        field(21; Rohmasse; Decimal)
        {
            Caption = 'Unit gross weight';
            DecimalPlaces = 3 : 3;
        }
        field(22; "Eigenmasse (Basis)"; Decimal)
        {
            Caption = 'Unit net weight (Base)';
            DecimalPlaces = 3 : 3;
            Description = 'je Basiseinheit';
        }
        field(23; "Rohmasse (Basis)"; Decimal)
        {
            Caption = 'Unit gross weight (Base)';
            DecimalPlaces = 3 : 3;
            Description = 'je Basiseinheit';
        }
        field(30; "Verfahren angemeldetes"; Code[2])
        {
            Caption = 'Customs procedure declared';
            Description = 'A0124';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(31; "Verfahren vorangegangenes"; Code[2])
        {
            Caption = 'Customs procedure previous';
            Description = 'A0125';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(32; "Verfahren weiteres"; Code[3])
        {
            Caption = 'Customs procedure additional';
            Description = 'A0126';
            TableRelation = "Exp Atlas Table Code".Code;
        }
        field(40; "Aussenhandelsstatistik Menge"; Decimal)
        {
            Caption = '1st Specified tariff Quantity';
            DecimalPlaces = 0 : 3;
        }
        field(41; "Aussenhandelsstatistik Wert"; Decimal)
        {
            Caption = 'Statistical Value';
        }
        field(50; "Vorpapier Typ"; Code[6])
        {
            Caption = 'Previous Document Type';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = FILTER ('A0101'));
        }
        field(51; "Gefahrgutnummer (UNDG)"; Code[4])
        {
            Caption = 'Dangerous Godds No. (UNDG)';
            Description = 'C0101';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(52; "Zahlungsweise Bef.-Kosten"; Code[1])
        {
            Caption = 'Form of payment forwarding charges';
            Description = 'C0116';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(60; "Manually generated"; Boolean)
        {
            Caption = 'Manually generated';
            Editable = false;
        }
        field(100; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(101; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(200; "Lieferbedingung Incoterm Code"; Code[10])
        {
            Caption = 'Delivery condition Incoterm Code';
            Description = 'A1840';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(201; "Lieferbedingung Text"; Text[140])
        {
            Caption = 'Delivery condition Text';
        }
        field(202; "Lieferbedingung Ort"; Text[35])
        {
            Caption = 'Delivery condition City Name';
        }
        field(300; "GV Art"; Code[2])
        {
            Caption = 'Type of business transaction';
            Description = 'A1150';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(500; "Empfaenger TIN"; Code[17])
        {
            Caption = 'Consignee Customs registration number';
        }
        field(501; "Empfaenger Ident. Art"; Code[1])
        {
            Caption = 'Consignee Ident. Type';
            Description = 'A0027';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(502; "Empfaenger Name"; Text[50])
        {
            Caption = 'Consignee Name';
        }
        field(503; "Empfaenger Name 2"; Text[50])
        {
            Caption = 'Consignee Name 2';
        }
        field(504; "Empfaenger Kontakt"; Text[50])
        {
            Caption = 'Consignee Contact';
        }
        field(505; "Empfaenger Adresse"; Text[50])
        {
            Caption = 'Consignee Address';
        }
        field(506; "Empfaenger Adresse 2"; Text[50])
        {
            Caption = 'Consignee Address 2';
        }
        field(507; "Empfaenger Post Code"; Code[20])
        {
            Caption = 'Consignee Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(508; "Empfaenger Ort"; Text[35])
        {
            Caption = 'Consignee City Name';
        }
        field(509; "Empfaenger Laendercode"; Code[10])
        {
            Caption = 'Consignee Country Code';
            Description = 'I0800';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(510; "Empfaenger Niederlassungsnr"; Code[4])
        {
            Caption = 'Consignee Branchno.';
        }
        field(600; "Endverwender TIN"; Code[17])
        {
            Caption = 'Enduser Customs registration number';
        }
        field(601; "Endverwender Ident. Art"; Code[1])
        {
            Caption = 'Enduser Ident. Type';
            Description = 'A1340';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(602; "Endverwender Name"; Text[50])
        {
            Caption = 'Enduser Name';
        }
        field(603; "Endverwender Name 2"; Text[50])
        {
            Caption = 'Enduser Name 2';
        }
        field(604; "Endverwender Kontakt"; Text[50])
        {
            Caption = 'Enduser Contact';
        }
        field(605; "Endverwender Adresse"; Text[50])
        {
            Caption = 'Enduser Address';
        }
        field(606; "Endverwender Adresse 2"; Text[50])
        {
            Caption = 'Enduser Address2';
        }
        field(607; "Endverwender Post Code"; Code[20])
        {
            Caption = 'Enduser Post Code';
            Description = '9 Stellen beim Zoll';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(608; "Endverwender Ort"; Text[35])
        {
            Caption = 'Enduser City Name';
        }
        field(609; "Endverwender Laendercode"; Code[10])
        {
            Caption = 'Enduser Country Code';
            Description = 'I0808';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(610; "Endverwender Niederlassungsnr"; Code[4])
        {
            Caption = 'Enduser Branchno.';
        }
        field(700; "Warenbez. Erg 1"; Text[250])
        {
            Caption = 'Goodsdescr. Ext. 1';
            Description = 'Vorankündigung';
        }
        field(701; "Warenbez. Erg 2"; Text[250])
        {
            Caption = 'Goodsdescr. Ext. 2';
            Description = 'Vorankündigung';
        }
        field(702; "Ursprungsland Laendercode"; Code[2])
        {
            Caption = 'Country Code of Origin';
            Description = 'I0804; Ursprungsland Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(703; Schaetzwert; Code[1])
        {
            Caption = 'Estimated Value';
            Description = 'A0027; Schätzwert Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(704; "Zahlungsfall NA1"; Code[1])
        {
            Caption = 'Payment Case NA1';
            Description = 'A0144; Zahlungsfall "Nicht-Anhang I" Vorankündigung';
            TableRelation = "Exp Atlas Table Code".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(705; AnpassungsKoef; Decimal)
        {
            Caption = 'Anpassungskoeffizient';
            DecimalPlaces = 4 : 4;
            Description = 'Anpassungskoeffizient Vorankündigung';
        }
        field(706; "Anteilswert A"; Decimal)
        {
            Caption = 'Unit Value A';
            DecimalPlaces = 2 : 2;
            Description = 'Anteilswert A Vorankündigung';
        }
        field(707; "Anteilswert B"; Decimal)
        {
            Caption = 'Unit Value B';
            DecimalPlaces = 2 : 2;
            Description = 'Anteilswert B Vorankündigung';
        }
        field(708; "Anteilswert C"; Decimal)
        {
            Caption = 'Unit Value C';
            DecimalPlaces = 2 : 2;
            Description = 'Anteilswert C Vorankündigung';
        }
        field(709; "Anteilswert D"; Decimal)
        {
            Caption = 'Unit Value D';
            DecimalPlaces = 2 : 2;
            Description = 'Anteilswert D Vorankündigung';
        }
        field(1000; "Beend. ZL Anz. Positionen"; Integer)
        {
            Caption = 'Beend. ZL Anz. Positionen';
        }
        field(1001; "Beend. ZL Bewilligungsnr"; Code[12])
        {
            Caption = 'Beend. ZL Bewilligungsnr';
        }
        field(1002; "Beend. ZL Bezugsnummer"; Code[35])
        {
            Caption = 'Beend. ZL Bezugsnummer';
        }
        field(2000; "Beend. AVUV Anz. Positionen"; Integer)
        {
            Caption = 'Beend. AVUV Anz. Positionen';
        }
        field(2001; "Beend. AVUV Bewilligungsnr"; Code[12])
        {
            Caption = 'Beend. AVUV Bewilligungsnr';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Rohmasse;
        }
    }

    fieldgroups
    {
    }
}

