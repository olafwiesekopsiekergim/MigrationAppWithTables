table 50006 "EAN-Nummern"
{
    // P0011 08.03.16 DEBIE.NNE New New functions SetItem, GetItem, GetCurrentItem.
    // P0011 26.02.16 DEBIE.NNE New object (transfer from 2009)
    // 
    // ...wo ist die Dokumentation Herr Held ?
    // c/rp/280698 Arbeit im Fremdmandant ermöglicht
    // c/rp/290698 EANSuchenFreie korrigiert (00001..99999)

    Permissions = TableData "EAN-Nummern" = rimd;

    fields
    {
        field(1; "Kundennr."; Code[20])
        {
            TableRelation = Customer."No.";
        }
        field(2; "Artikelnr."; Code[20])
        {
            TableRelation = Item;
        }
        field(10; Kundeninfo; Text[30])
        {
        }
        field(11; Bemerkung; Text[30])
        {
        }
        field(18; "EAN-Nr."; Code[5])
        {
            Numeric = true;
        }
        field(20; "EAN-Code"; Code[13])
        {
            Numeric = true;
        }
        field(70000; Einlesestatus; Text[100])
        {
        }
    }

    keys
    {
        key(Key1; "Kundennr.", "Artikelnr.")
        {
            Clustered = true;
        }
        key(Key2; "Kundennr.", "EAN-Nr.")
        {
        }
        key(Key3; "Kundennr.", "EAN-Code")
        {
        }
        key(Key4; "Artikelnr.", "EAN-Code")
        {
        }
    }

    fieldgroups
    {
    }
}

