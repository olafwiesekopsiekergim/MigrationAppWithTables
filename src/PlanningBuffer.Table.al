table 99000846 "Planning Buffer"
{
    Caption = 'Planning Buffer';

    fields
    {
        field(1; "Buffer No."; Integer)
        {
            Caption = 'Buffer No.';
        }
        field(2; Date; Date)
        {
            Caption = 'Date';
        }
        field(3; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Requisition Line,Planned Prod. Order Comp.,Firm Planned Prod. Order Comp.,Released Prod. Order Comp.,Planning Comp.,Sales Order,Planned Prod. Order,Planning Line,Req. Worksheet Line,Firm Planned Prod. Order,Released Prod. Order,Purchase Order,Quantity at Inventory,Service Order,Transfer,Job Order,Assembly Order,Assembly Order Line,Production Forecast-Sales,Production Forecast-Component';
            OptionMembers = "Requisition Line","Planned Prod. Order Comp.","Firm Planned Prod. Order Comp.","Released Prod. Order Comp.","Planning Comp.","Sales Order","Planned Prod. Order","Planning Line","Req. Worksheet Line","Firm Planned Prod. Order","Released Prod. Order","Purchase Order","Quantity at Inventory","Service Order",Transfer,"Job Order","Assembly Order","Assembly Order Line","Production Forecast-Sales","Production Forecast-Component";
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(6; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Gross Requirement"; Decimal)
        {
            Caption = 'Gross Requirement';
            DecimalPlaces = 0 : 5;
        }
        field(10; "Planned Receipts"; Decimal)
        {
            Caption = 'Planned Receipts';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Scheduled Receipts"; Decimal)
        {
            Caption = 'Scheduled Receipts';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Buffer No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", Date)
        {
        }
    }

    fieldgroups
    {
    }
}

