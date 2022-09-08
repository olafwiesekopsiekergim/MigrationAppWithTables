table 10 "Shipment Method"
{
    // P0008 29.02.16 CCBIE.ARE New Field 50010 "Print Checklist"
    // P0006 15.02.16 CCBIE.ARE New fields 50001 Fracht, 50003 Frachtberechnungsart

    Caption = 'Shipment Method';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(50001; Fracht; Boolean)
        {
            Caption = 'Fracht';
            Description = 'P0006';
        }
        field(50003; Frachtberechnungsart; Option)
        {
            Caption = 'Frachtberechnungsart';
            Description = 'P0006';
            OptionMembers = " ","bis Rampe";
        }
        field(50010; "Print Checklist"; Boolean)
        {
            Caption = 'Print Checklist';
            Description = 'P0008';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

