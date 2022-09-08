table 5530 "Inventory Event Buffer"
{
    Caption = 'Inventory Event Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(9; "Source Line ID"; RecordID)
        {
            Caption = 'Source Line ID';
            Editable = false;
        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(11; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(12; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Editable = false;
            TableRelation = Location;
        }
        field(14; "Availability Date"; Date)
        {
            Caption = 'Availability Date';
            Editable = false;
        }
        field(15; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = 'Inventory,Purchase,Sale,,,Transfer,Component,Production,Service,Job,Forecast,Blanket Sales Order,Plan,Plan Revert,Assembly Order,Assembly Component';
            OptionMembers = Inventory,Purchase,Sale,,,Transfer,Component,Production,Service,Job,Forecast,"Blanket Sales Order",Plan,"Plan Revert","Assembly Order","Assembly Component";
        }
        field(20; "Remaining Quantity (Base)"; Decimal)
        {
            Caption = 'Remaining Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(21; Positive; Boolean)
        {
            Caption = 'Positive';
            Editable = false;
        }
        field(22; "Transfer Direction"; Option)
        {
            Caption = 'Transfer Direction';
            Editable = false;
            OptionCaption = 'Outbound,Inbound';
            OptionMembers = Outbound,Inbound;
        }
        field(23; "Reserved Quantity (Base)"; Decimal)
        {
            Caption = 'Reserved Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(29; "Action Message"; Option)
        {
            Caption = 'Action Message';
            Editable = false;
            OptionCaption = ' ,New,Change Qty.,Reschedule,Resched. & Chg. Qty.,Cancel';
            OptionMembers = " ",New,"Change Qty.",Reschedule,"Resched. & Chg. Qty.",Cancel;
        }
        field(31; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
        }
        field(32; "Forecast Type"; Option)
        {
            Caption = 'Forecast Type';
            Editable = false;
            OptionCaption = ',Sales,Component';
            OptionMembers = ,Sales,Component;
        }
        field(33; "Derived from Blanket Order"; Boolean)
        {
            Caption = 'Derived from Blanket Order';
            Editable = false;
        }
        field(34; "Ref. Order No."; Code[20])
        {
            Caption = 'Ref. Order No.';
            Editable = false;
        }
        field(35; "Orig. Quantity (Base)"; Decimal)
        {
            Caption = 'Orig. Quantity (Base)';
            Editable = false;
        }
        field(37; "Ref. Order Type"; Option)
        {
            Caption = 'Ref. Order Type';
            Editable = false;
            OptionCaption = ' ,Purchase,Prod. Order,Assembly,Transfer';
            OptionMembers = " ",Purchase,"Prod. Order",Assembly,Transfer;
        }
        field(38; "Ref. Order Line No."; Integer)
        {
            Caption = 'Ref. Order Line No.';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Availability Date", Type)
        {
        }
    }

    fieldgroups
    {
    }
}

