table 99 "Item Vendor"
{
    // CSC8.00: - New Key "Vendor Item No."
    // 
    // #PMW16.00.02:T250 13.10.10 DEMSR.KHS
    //   Restricted Purchase
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #VRW17.00.00.02:T102 08.05.13 DEMSR.KHS
    //   Change comments for VR

    Caption = 'Item Vendor';

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
        field(6; "Lead Time Calculation"; DateFormula)
        {
            Caption = 'Lead Time Calculation';
        }
        field(7; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(5700; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(5012582; Approved; Boolean)
        {
            Caption = 'Approved';
            Description = '#PMW16.00.02:T250';
        }
        field(5034552; "Create Test Order on Receipt"; Boolean)
        {
            Caption = 'Create Test Order on Receipt';
            Description = '#NAV20100:A1000';
        }
        field(5034700; "Duty of Rating"; Boolean)
        {
            Caption = 'Duty of Rating';
            Description = '#VRW17.00:00.02:T102';
        }
    }

    keys
    {
        key(Key1; "Vendor No.", "Item No.", "Variant Code")
        {
            Clustered = true;
        }
        // key(Key2; "Item No.", "Variant Code", "Vendor No.")
        // {
        // }
        // key(Key3; "Vendor No.", "Vendor Item No.")
        // {
        // }
        // key(Key4; "Vendor Item No.")
        // {
        // }
    }

    fieldgroups
    {
    }
}

