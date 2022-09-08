table 1313 "Mini Activities Cue"
{
    Caption = 'Mini Activities Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Due Date Filter"; Date)
        {
            Caption = 'Due Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(3; "Overdue Date Filter"; Date)
        {
            Caption = 'Overdue Date Filter';
            FieldClass = FlowFilter;
        }
        field(4; "Ongoing Sales Invoices"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Invoice)));
            Caption = 'Ongoing Sales Invoices';
            FieldClass = FlowField;
        }
        field(5; "Ongoing Purchase Invoices"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER (Invoice)));
            Caption = 'Ongoing Purchase Invoices';
            FieldClass = FlowField;
        }
        field(6; "Sales This Month"; Decimal)
        {
            Caption = 'Sales This Month';
            DecimalPlaces = 0 : 0;
        }
        field(7; "Top 10 Customer Sales YTD"; Decimal)
        {
            AutoFormatType = 10;
            Caption = 'Top 10 Customer Sales YTD';
        }
        field(8; "Overdue Purch. Invoice Amount"; Decimal)
        {
            Caption = 'Overdue Purch. Invoice Amount';
            DecimalPlaces = 0 : 0;
        }
        field(9; "Overdue Sales Invoice Amount"; Decimal)
        {
            Caption = 'Overdue Sales Invoice Amount';
            DecimalPlaces = 0 : 0;
        }
        field(10; "Average Collection Days"; Decimal)
        {
            Caption = 'Average Collection Days';
            DecimalPlaces = 1 : 1;
        }
        field(11; "Ongoing Sales Quotes"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Quote)));
            Caption = 'Ongoing Sales Quotes';
            FieldClass = FlowField;
        }
        field(12; "Requests to Approve"; Integer)
        {
            CalcFormula = Count ("Approval Entry" WHERE ("Approver ID" = FIELD ("User ID Filter"),
                                                        Status = FILTER (Open)));
            Caption = 'Requests to Approve';
            FieldClass = FlowField;
        }
        field(13; "Sales Inv. - Pending Doc.Exch."; Integer)
        {
            CalcFormula = Count ("Sales Invoice Header" WHERE ("Document Exchange Status" = FILTER ("Sent to Document Exchange Service" | "Delivery Failed")));
            Caption = 'Sales Invoices - Pending Document Exchange';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Sales CrM. - Pending Doc.Exch."; Integer)
        {
            CalcFormula = Count ("Sales Cr.Memo Header" WHERE ("Document Exchange Status" = FILTER ("Sent to Document Exchange Service" | "Delivery Failed")));
            Caption = 'Sales Credit Memos - Pending Document Exchange';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            FieldClass = FlowFilter;
        }
        field(20; "My Incoming Documents"; Integer)
        {
            CalcFormula = Count ("Incoming Document");
            Caption = 'My Incoming Documents';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

