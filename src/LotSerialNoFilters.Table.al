table 5034696 "Lot-/Serial No. Filters"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.10.00.02:T103 05.02.14 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding


    fields
    {
        field(10; UserID; Code[50])
        {
        }
        field(20; "Item No. Filter"; Code[250])
        {
        }
        field(30; "Lot No. Filter"; Code[250])
        {
        }
        field(50; "Only Inventory Filter"; Boolean)
        {
        }
        field(60; "Expiration Date Filter"; Code[250])
        {
        }
        field(70; "Retest Date Filter"; Code[250])
        {
        }
        field(80; "Quarantine  Date Filter"; Code[250])
        {
        }
        field(90; "Location Filter"; Code[250])
        {
        }
        field(100; "Bin Filter"; Code[250])
        {
        }
        field(110; "Status Filter"; Code[20])
        {
        }
        field(5012400; "Trading Unit Filter"; Code[250])
        {
        }
    }

    keys
    {
        key(Key1; UserID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

