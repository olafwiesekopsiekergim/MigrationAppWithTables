table 50010 "Fracht1 (Frachtkosten)"
{
    // P0007 16.02.16 CCBIE.ARE New object
    // 
    // c/gw/270406: - A15117 "Fracht- Verpackungskosten (neu)
    //                TABELLE HAT VOLLKOMMEN NEUE STRUKTUR
    //                TANGIERTE OBJEKTE...
    //                  ...Tabelle    311 Debitoren & Verkauf Einr.
    //                  ...Tabelle  50010 Fracht1 (Frachtkosten)
    //                  ...Tabelle  50012 Fracht1 (Verpackungskosten)
    //                  ...Form        41 Verkaufsangebot
    //                  ...Form        42 Verkaufsauftrag
    //                  ...Form       333 Debitoren & Verkauf Menü
    //                  ...Form       459 Debitoren & Verkauf Einr.
    //                  ...Form     50009 VK-Fracht Berechnung
    //                  ...Form     50062 Fracht1 (Frachtkosten)
    //                  ...Form     50065 Fracht1 (Verpackungskosten)
    //                  ...Codeunit 80005 Verkaufsoperationen
    // c/gw/230806: - A15505 "Modifikation Frachtkosten"
    //              - neues Feld:6 "Debitornr." Code20 Tablerelation zum Tabelle 18 "Debitor"
    //              - Primary geändert  jetzt "Debitornr.,Gewicht" vorher nur "Gewicht"
    //              - Code ergänzt in ...
    //                ... OnInsert
    //                ... OnModify
    //                ... OnDelete
    //                ... Ab-Wert (MW) per kg - OnValidate()
    //              - TANGIERTE OBJEKTE...
    //                ...Tabelle    50010 Fracht1 (Frachtkosten)
    //                ...Tabelle    50011 Fracht2
    //                ...Form       21    Debitorenkarte
    //                ...Form       41    Verkaufsangebot
    //                ...Form       42    Verkaufsauftrag
    //                ...Form       50009 VK-Fracht Berechnung
    //                ...Form       50062 Fracht1 (Frachtkosten)
    //                ...Form       50064 Fracht2 - Tabelle
    //                ...Codeunit   80005 Verkaufsoperationen


    fields
    {
        field(1; Gewicht; Decimal)
        {
            NotBlank = true;
        }
        field(2; "Bis-Wert (MW)"; Decimal)
        {
            AutoFormatType = 2;
        }
        field(3; "Ab-Wert (MW) per kg"; Decimal)
        {
            AutoFormatType = 2;
            Description = 'Eingabe nur bei schwerstem möglich';
        }
        field(6; "Debitornr."; Code[20])
        {
            Description = '-c-gw-230806: - A15505';
            TableRelation = Customer;
        }
        field(10; Bemerkung; Text[100])
        {
        }
    }

    keys
    {
        key(Key1; "Debitornr.", Gewicht)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

