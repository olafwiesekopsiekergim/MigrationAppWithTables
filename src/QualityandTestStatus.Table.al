table 5034609 "Quality and Test Status"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R462 12.08.11 DEMSR.KHS
    //   New field: Variant Code
    //   Field added to primary key
    // 
    // #QMW17.00 24.04.12 DEMSR.KHS
    //   Key added: Item No.,Vendor No.
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Quality and Test Status';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            NotBlank = true;
            TableRelation = Vendor;
        }
        field(4; "Inspection Severity Code"; Code[20])
        {
            Caption = 'Inspection Severity Code';
            TableRelation = "Inspection Severity";
        }
        field(5; "Current Test Type"; Code[20])
        {
            Caption = 'Current Test Type';
            TableRelation = "Test Type";
        }
        field(6; "Current Test No."; Integer)
        {
            Caption = 'Current Test No.';
        }
        field(5034550; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Vendor No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Vendor No.")
        {
        }
    }

    fieldgroups
    {
    }
}

