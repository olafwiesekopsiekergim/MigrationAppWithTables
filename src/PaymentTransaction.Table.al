table 5157819 "Payment Transaction"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.10.12   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Transaction';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Pmt. Transaction No."; Code[50])
        {
            Caption = 'Pmt. Transaction No.';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ',Incoming,Outgoing';
            OptionMembers = ,Incoming,Outgoing;
        }
        field(4; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            Description = 'PMT';
            TableRelation = "Payment Method";
        }
        field(5; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(7; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
        }
        field(8; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(9; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
        field(10; "Date / Time"; DateTime)
        {
            Caption = 'Date / Time';
        }
        field(11; "Your Reference"; Text[50])
        {
            Caption = 'Your Reference';
        }
        field(12; "Order No."; Code[35])
        {
            Caption = 'Order No.';
        }
        field(13; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(14; "External Document No. 2"; Code[35])
        {
            Caption = 'External Document No. 2';
        }
        field(15; "External Document No. 3"; Code[35])
        {
            Caption = 'External Document No. 3';
        }
        field(16; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(17; "No. of Log Entries"; Integer)
        {
            CalcFormula = Count ("Payment Transaction Entry" WHERE ("Payment Transaction Entry No." = FIELD ("Entry No.")));
            Caption = 'No. of Log Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Assigned Amount"; Decimal)
        {
            CalcFormula = Sum ("Payment Transaction Entry".Amount WHERE ("Payment Transaction Entry No." = FIELD ("Entry No.")));
            Caption = 'Assigned Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Assigned Amount (LCY)"; Decimal)
        {
            CalcFormula = Sum ("Payment Transaction Entry"."Amount (LCY)" WHERE ("Payment Transaction Entry No." = FIELD ("Entry No.")));
            Caption = 'Assigned Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Pmt. Service Provider"; Code[10])
        {
            Caption = 'Pmt. Service Provider';
        }
        field(21; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Pmt. Transaction No.")
        {
        }
        key(Key3; "Order No.")
        {
        }
        key(Key4; "External Document No.")
        {
        }
        key(Key5; "External Document No. 2")
        {
        }
        key(Key6; "External Document No. 3")
        {
        }
    }

    fieldgroups
    {
    }
}

