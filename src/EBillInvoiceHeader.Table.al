table 42015200 "E-Bill Invoice Header"
{
    Caption = 'E-Bill Invoice Header';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Sales Invoice,Sales Credit Memo,Service Invoice,Service Credit Memo';
            OptionMembers = "Sales Invoice","Sales Credit Memo","Service Invoice","Service Credit Memo";
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,To Send,Sent,Viewed,Printed,Paid,Rejected,Credited,Completed';
            OptionMembers = " ","To Send",Sent,Viewed,Printed,Paid,Rejected,Credited,Completed;
        }
        field(6; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(7; "Viewing Date"; Date)
        {
            Caption = 'Viewing Date';
        }
        field(8; "Printing Date"; Date)
        {
            Caption = 'Printing Date';
        }
        field(9; "Payment Date"; Date)
        {
            Caption = 'Payment Date';
        }
        field(10; "Rejection Date"; Date)
        {
            Caption = 'Rejection Date';
        }
        field(11; PDF; BLOB)
        {
            Caption = 'PDF';
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(13; Payable; Boolean)
        {
            Caption = 'Payable';
        }
        field(15; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(16; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
        }
        field(17; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(18; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(19; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(20; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

