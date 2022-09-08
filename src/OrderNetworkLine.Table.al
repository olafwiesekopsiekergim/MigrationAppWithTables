table 5012719 "Order Network Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:109 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.01:T500 13.11.13 DEMSR.IST
    //   Field "Source Name" expanded from 30 to 50
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.00.04:T500 08.07.15 DEMSR.IST
    //   Field "Pay. Source Name" expanded to text 50
    // 
    // #AMPW17.00:T118 19.08.13 DEMSR.SSZ
    //   #Reunion of DM and PX Order Network objects

    Caption = 'Order Network Line';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Supplied by"; Text[80])
        {
            Caption = 'Supplied by';
        }
        field(3; "Demanded by"; Text[80])
        {
            Caption = 'Demanded by';
        }
        field(8; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(9; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
        }
        field(11; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(13; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(14; Level; Integer)
        {
            Caption = 'Level';
        }
        field(20; "For Type"; Integer)
        {
            Caption = 'For Type';
        }
        field(21; "For Subtype"; Integer)
        {
            Caption = 'For Subtype';
        }
        field(22; "For ID"; Code[20])
        {
            Caption = 'For ID';
        }
        field(23; "For Batch Name"; Code[10])
        {
            Caption = 'For Batch Name';
        }
        field(24; "For Prod. Order Line"; Integer)
        {
            Caption = 'For Prod. Order Line';
        }
        field(25; "For Ref. No."; Integer)
        {
            Caption = 'For Ref. No.';
        }
        field(26; "From Type"; Integer)
        {
            Caption = 'From Type';
        }
        field(27; "From Subtype"; Integer)
        {
            Caption = 'From Subtype';
        }
        field(28; "From ID"; Code[20])
        {
            Caption = 'From ID';
        }
        field(29; "From Batch Name"; Code[10])
        {
            Caption = 'From Batch Name';
        }
        field(30; "From Prod. Order Line"; Integer)
        {
            Caption = 'From Prod. Order Line';
        }
        field(31; "From Ref. No."; Integer)
        {
            Caption = 'From Ref. No.';
        }
        field(32; "For Routing No."; Code[20])
        {
            Caption = 'For Routing No.';
        }
        field(33; "For Operation No."; Code[10])
        {
            Caption = 'For Operation No.';
        }
        field(34; "From Routing No."; Code[20])
        {
            Caption = 'From Routing No.';
        }
        field(35; "From Operation No."; Code[10])
        {
            Caption = 'From Operation No.';
        }
        field(40; "Demand Date"; Date)
        {
            Caption = 'Demand Date';
        }
        field(41; "Planned Date"; Date)
        {
            Caption = 'Planned Date';
        }
        field(42; Name; Text[80])
        {
            Caption = 'Name';
        }
        field(43; Warning; Boolean)
        {
            Caption = 'Warning';
        }
        field(44; "Include Warning"; Boolean)
        {
            Caption = 'Include Warning';
        }
        field(45; "Warning Mark"; Boolean)
        {
            Caption = 'Warning Mark';
        }
        field(46; "Supplied Quantitiy"; Decimal)
        {
            Caption = 'Supplied Quantitiy';
            DecimalPlaces = 0 : 5;
        }
        field(100; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(101; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Work Center,Machine Center';
            OptionMembers = " ",Item,"Work Center","Machine Center";
        }
        field(110; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(111; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(112; "Item Availability"; Boolean)
        {
            Caption = 'Item Availability';
        }
        field(200; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor;
        }
        field(201; "Source Name"; Text[50])
        {
            Caption = 'Source Name';
            Description = '#PXW17.10.00.01:T500';
        }
        field(202; "Pay. Source No."; Code[20])
        {
            Caption = 'Pay. Source No.';
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor;
        }
        field(203; "Pay. Source Name"; Text[50])
        {
            Caption = 'Pay. Source Name';
        }
        field(204; "Responsible Person Code"; Code[10])
        {
            Caption = 'Responsible Person Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(205; "Responsible Person"; Text[50])
        {
            Caption = 'Responsible Person';
        }
        field(206; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(207; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor';
            OptionMembers = " ",Customer,Vendor;
        }
        field(1000; "Attached to Entry No."; Integer)
        {
            Caption = 'Attached to Entry No.';
        }
        field(1001; "Control Level"; Integer)
        {
            Caption = 'Control Level';
        }
        field(1002; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
        }
        field(1003; Unfolded; Boolean)
        {
            Caption = 'Unfolded';
        }
        field(1004; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
        }
        field(5013400; "Routing Status"; Option)
        {
            Caption = 'Routing Status';
            Description = '#AMPW17.00:T118';
            OptionCaption = ' ,Planned,In Progress,Finished';
            OptionMembers = " ",Planned,"In Progress",Finished;
        }
        field(5013401; "BOM Status"; Option)
        {
            Caption = 'BOM Status';
            Description = '#AMPW17.00:T118';
            OptionCaption = ' ,Open,Released,Closed';
            OptionMembers = " ",Offen,Freigegeben,Abgeschlossen;
        }
        field(5013402; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 2 : 5;
            Description = '#AMPW17.00:T118';
        }
        field(5013403; "Posted Quantity"; Decimal)
        {
            Caption = 'Posted Quantity';
            Description = '#AMPW17.00:T118';
        }
        field(5013404; "From Checklist Type"; Code[20])
        {
            Caption = 'From Checklist Type';
            Description = '#AMPW17.00:T118';
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

