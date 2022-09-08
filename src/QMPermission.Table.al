table 5034620 "QM Permission"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed, comments removed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Replace Var names UserID and SID
    //   delete obsolete brackets
    //   correct indentation
    //   parameter OnInsert changed to IsInsert
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW16.00.02.05:T507 31.05.11 DEMSR.KHS
    //   Check Trading Unit No. changes
    // 
    // #PMW17.00.00.01:T506 08.04.13 DEMSR.KHS
    //   Re-activate Trading Unit No. option in "Action Type"

    Caption = 'QM Permission';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(4; "Action Type"; Option)
        {
            Caption = 'Action Type';
            Description = '#QMW16.00.02.01:T501,#PMW17.00.00.01:T506';
            OptionCaption = ' ,Status Change,Expiration Date Change,Entry Date Change,External Lot No. Change,Quarantine Date Change,Retest Date Change,Warranty Date Change,Lot Number Change,Trading Unit Number Change,Serial No. Change,,,,,,,,,,,,,,,,,Test Order Release,,,,,,,,,,,,,,,,,,,,,,Prod. Order Release,,,,,,,,,,,,,,,,Stability Test Certification';
            OptionMembers = " ","Status Change","Expiration Date Change","Entry Date Change","External Lot No. Change","Quarantine Date Change","Retest Date Change","Warranty Date Change","Lot Number Change","Trading Unit Number Change","Serial No. Change",,,,,,,,,,,,,,,,,"Test Order Release",,,,,,,,,,,,,,,,,,,,,,"Prod. Order Release",,,,,,,,,,,,,,,,"Stability Test Certification";
        }
        field(5; Allowed; Boolean)
        {
            Caption = 'Allowed';
        }
        field(10; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; "Role ID"; Code[50])
        {
            Caption = 'Role ID';
            TableRelation = "Permission Set";
        }
        field(15; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(16; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(17; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(20; "From Status"; Code[20])
        {
            Caption = 'From Status';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(22; "To Status"; Code[20])
        {
            Caption = 'To Status';
            TableRelation = "Lot-/ Serial No. Status";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Action Type", "Item No.", "Variant Code", "Item Category Code", "From Status", "To Status")
        {
        }
    }

    fieldgroups
    {
    }
}

