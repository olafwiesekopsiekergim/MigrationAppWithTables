table 5292360 "PR - Job Order Network Line"
{
    Caption = 'Job Order Network Line';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(11; Level; Integer)
        {
            Caption = 'Level';
        }
        field(20; "Supplied by"; Text[80])
        {
            Caption = 'Supplied by';
        }
        field(30; "Demanded by"; Text[80])
        {
            Caption = 'Demanded by';
        }
        field(40; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(41; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(45; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(46; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
        }
        field(50; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(79; "Routing Status"; Option)
        {
            Caption = 'Routing Status';
            OptionCaption = ' ,Planned,In Progress,Finished';
            OptionMembers = " ",Planned,"In Progress",Finished;
        }
        field(80; "BOM Status"; Option)
        {
            Caption = 'BOM Status';
            OptionCaption = ' ,Open,Released,Closed';
            OptionMembers = " ",Offen,Freigegeben,Abgeschlossen;
        }
        field(81; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 2 : 5;
        }
        field(82; "Posted Quantity"; Decimal)
        {
            Caption = 'Posted Quantity';
        }
        field(90; Warning; Boolean)
        {
            Caption = 'Warning';
        }
        field(100; "Attached to Entry No."; Integer)
        {
            Caption = 'Attached to Entry No.';
        }
        field(101; "Control Level"; Integer)
        {
            Caption = 'Control Level';
        }
        field(102; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
        }
        field(103; Unfolded; Boolean)
        {
            Caption = 'Unfolded';
        }
        field(104; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
        }
        field(105; "No. of Entries"; Integer)
        {
            Caption = 'Count';
        }
        field(106; Name; Text[80])
        {
            Caption = 'Name';
        }
        field(109; Lookup; Boolean)
        {
            Caption = 'Lookup';
        }
        field(110; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(112; "Item Availability"; Boolean)
        {
            Caption = 'Item Availability';
        }
        field(200; "For Type"; Integer)
        {
            Caption = 'For Type';
        }
        field(201; "For Subtype"; Integer)
        {
            Caption = 'For Subtype';
        }
        field(202; "For ID"; Code[20])
        {
            Caption = 'For ID';
        }
        field(203; "For Batch Name"; Code[20])
        {
            Caption = 'For Batch Name';
        }
        field(204; "For Prod. Order Line"; Integer)
        {
            Caption = 'For Prod. Order Line';
        }
        field(205; "For Ref. No."; Integer)
        {
            Caption = 'For Ref. No.';
        }
        field(300; "From Type"; Integer)
        {
            Caption = 'From Type';
        }
        field(301; "From Subtype"; Integer)
        {
            Caption = 'From Subtype';
        }
        field(302; "From ID"; Code[20])
        {
            Caption = 'From ID';
        }
        field(303; "From Batch Name"; Code[20])
        {
            Caption = 'From Batch Name';
        }
        field(304; "From Prod. Order Line"; Integer)
        {
            Caption = 'From Prod. Order Line';
        }
        field(305; "From Ref. No."; Integer)
        {
            Caption = 'From Ref. No.';
        }
        field(306; "From Operation No."; Code[10])
        {
            Caption = 'From Operation No.';
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,Service,Item,General,Traveling,Machine Center,Work Center';
            OptionCaption = ' ,Service,Item,General,Traveling,Machine Center,Work Center';
            OptionMembers = " ",Service,Item,General,Traveling,"Machine Center","Work Center";
        }
        field(1011; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST (Service)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Traveling)) Resource
            ELSE
            IF (Type = CONST (General)) "PR - General Component"
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(1100; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(2010; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(2021; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(2050; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

