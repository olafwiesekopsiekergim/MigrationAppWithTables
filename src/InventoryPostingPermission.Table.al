table 5034625 "Inventory Posting Permission"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:X002 20.10.10 DEMSR.KHS
    //   Inventory Posting Permission
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    //   Variable UserID Set to 50 Chars
    // 
    // #QMW17.00:207 24.01.13 DEMSR.KHS
    //   Add Whse. Transfer to Inventory Posting: Entry Type extended by "Whse. Transfer"
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   replace VAR UserID by UserID1
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Inventory Posting Permission';

    fields
    {
        field(1; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Description = '#QMW17.00:207';
            OptionCaption = ' ,Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output,Whse. Transfer';
            OptionMembers = " ",Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output,"Whse. Transfer";
        }
        field(2; "Action Type"; Option)
        {
            Caption = 'Action Type';
            OptionCaption = ' ,Inbound,Outbound';
            OptionMembers = " ",Inbound,Outbound;
        }
        field(3; "Lot-/Serial No. Status"; Code[20])
        {
            Caption = 'Lot-/Serial No. Status';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = '#QMW17.00:104';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; "Role ID"; Code[50])
        {
            Caption = 'Role ID';
            Description = '#QMW17.00:104';
            TableRelation = "Permission Set";
        }
        field(11; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(12; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(13; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(15; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(16; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Location Code"),
                                            "Zone Code" = FIELD("Zone Code"));
        }
        field(17; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
            TableRelation = Zone.Code WHERE("Location Code" = FIELD("Location Code"));
        }
        field(20; "Posting Allowed"; Boolean)
        {
            Caption = 'Posting Allowed';
        }
        field(25; "Item Trkg. Assignment Allowed"; Boolean)
        {
            Caption = 'Item Tracking Assignment Allowed';
        }
    }

    keys
    {
        key(Key1; "Entry Type", "Action Type", "Lot-/Serial No. Status", "Item No.", "Variant Code", "Item Category Code", "Location Code", "Zone Code", "Bin Code", "User ID", "Role ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

