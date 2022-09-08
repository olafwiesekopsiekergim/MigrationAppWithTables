table 5157906 "OPplus AZV Pmt. Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // AZV  13.01.10   OPplus DTAZV
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'OPplus AZV Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Update Version"; Code[10])
        {
            Caption = 'Update Version';
            Editable = false;
        }
        field(4; "Pmt. File Path DTAZV"; Code[250])
        {
            Caption = 'Pmt. File Path DTAZV';
        }
        field(17; "File Supplement DTAZV"; Code[10])
        {
            Caption = 'File Supplement DTAZV';
            Description = 'AZV: Dateiendung';
        }
        field(18; "Max. Amt. EU Standard"; Decimal)
        {
            Caption = 'Max. Amt. EU Standard Transmission';
            Description = 'AZV: Höchstbetrag für eine EU-Standardüberweisung';
        }
        field(19; "Reporting Limit (LCY)"; Decimal)
        {
            Caption = 'Reporting Limit (LCY)';
            Description = 'AZV-Meldewesen: Grenzbetrag Meldung Bundesbank';
        }
        field(20; "Default Charges"; Option)
        {
            Caption = 'Default Charges';
            Description = 'AZV: Bevorzugte Gebührenregelung (00,01,02)';
            OptionCaption = 'Share,Orderer,Beneficiary';
            OptionMembers = Split,Orderer,Beneficiary;
        }
        field(21; "Default Trading Type"; Option)
        {
            Caption = 'Default Trading Type';
            Description = 'AZV-Meldewesen: Standard-Handelsart (Dienstleistung,Kapital,Transit)';
            OptionCaption = 'Transit Trade,Service,Capital Trade';
            OptionMembers = Transit,Service,Capital;
        }
        field(22; "Default Service No."; Code[10])
        {
            Caption = 'Default Service No.';
            Description = 'AZV-Meldewesen: Standard-Leistungsnummer lt. LV Bundesbank';
            TableRelation = "Bundesbank Code";
        }
        field(23; "Prefer EU-Standard"; Boolean)
        {
            Caption = 'EU Standard Transmission preferred';
            Description = 'AZV: Nach Möglichkeit Standard-EU-Überweisungen erstellen?';
        }
        field(24; "Bundesbank-Report"; Boolean)
        {
            Caption = 'Report to Bundesbank';
            Description = 'AZV-Meldewesen: Legt fest, ob beim Erstellen des ZVs automatisch AWV-Meldesätze angelegt werden.';
        }
        field(25; Bundesland; Code[10])
        {
            Caption = 'Federal State';
            Description = 'AZV-Meldewesen: lt. Verzeichnis Bundesbank';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Bundesland));
        }
        field(26; "Company No."; Code[10])
        {
            Caption = 'Company No.';
            Description = 'AZV-Meldewesen: wird zugeteilt';
        }
        field(27; Contact; Code[16])
        {
            Caption = 'Contact';
            Description = 'AZV-Meldewesen: Telefonnummer Kontakperson im Unternehmen';
        }
        field(28; "URL Bundesbank"; Text[250])
        {
            Caption = 'Homepage Bundesbank Reporting System';
            Description = 'AZV-Meldewesen: URL Service-Seite der Bundesbank';
        }
        field(29; "Separate Reports"; Boolean)
        {
            Caption = 'Reports per document';
            Description = 'AZV-Meldewesen: Pro Zahlungszeile ein Meldesatz oder einen pro Beleg?';
        }
        field(30; "Default Instruction"; Code[10])
        {
            Caption = 'Default Instruction Code';
            Description = 'AZV-Meldewesen: Vorbelegung Weisungsschlüssel';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = CONST ('DTAZV'));
        }
        field(31; "Instruction Code EURPmt"; Code[10])
        {
            Caption = 'Instr. Code Euro Pmt.';
            Description = 'AZV: Weisungsschlüssel Euro-Gegenwertzahlung';
        }
        field(32; "Orderer Is Not Payer"; Boolean)
        {
            Caption = 'Orderer Is Not Payer';
            Description = 'AZV: Auftraggeber ist nicht Zahlungspflichtiger';
        }
        field(33; "Bundesbank Statistics Only"; Boolean)
        {
            Caption = 'Statistics only';
            Description = 'AZV: Meldung auf statistische Angaben beschränken';
        }
        field(34; "URL Bundesbank Country List"; Text[250])
        {
            Caption = 'URL Bundesbank Country List';
            Description = 'AZV-Meldewesen: URL Länderliste der Bundesbank';
        }
        field(35; "Autocorrect EU Standard"; Boolean)
        {
            Caption = 'Autocorrect EU Standard Transmission';
            Description = 'AZV: bei Wechsel auf EU-Standard automatisch Standardwerte eintragen';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

