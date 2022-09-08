table 77849 "COMSOL TG Verwaltung"
{
    // P0012 29.02.16 DEBIE.NNE New object (transfer from 2009)

    DataPerCompany = false;

    fields
    {
        field(1; "PRIMÄRSCHLÜSSEL"; Code[1])
        {
        }
        field(5; "SN-Referenznummern"; Boolean)
        {
        }
        field(10; "Pos.-Nr. automatisch"; Boolean)
        {
        }
        field(12; "Pos.-Nr. default"; Code[5])
        {
        }
        field(15; "Einheiten umrechnen"; Boolean)
        {
        }
        field(20; "Gebietsaufteilung Kst<->Verk."; Boolean)
        {
        }
        field(30; "Provision VK2-Teilung"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "PRIMÄRSCHLÜSSEL")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

