table 5034610 "Test Property Status"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R029 25.08.10 DEMSR.KHS
    //   New Object, Frequently Measurement of Properties in a Test Order
    // 
    // #QMW16.00.03:R290 13.07.11 DEMSR.KHS
    //   Added fields
    //     "Current Test Type"
    //     "Inspection Severity Code"
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Property Status';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            TableRelation = "Test Property";
        }
        field(5; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            NotBlank = true;
            TableRelation = Vendor;
        }
        field(8; "Current Test No."; Integer)
        {
            Caption = 'Current Test No.';
        }
        field(100; "Current Test Type"; Code[20])
        {
            Caption = 'Current Test Type';
            Description = '#QMW16.00.03:R290';
        }
        field(110; "Inspection Severity Code"; Code[20])
        {
            Caption = 'Inspection Severity Code';
            Description = '#QMW16.00.03:R290';
            TableRelation = "Inspection Severity";
        }
    }

    keys
    {
        key(Key1; "Item No.", "Test Property Code", "Vendor No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

