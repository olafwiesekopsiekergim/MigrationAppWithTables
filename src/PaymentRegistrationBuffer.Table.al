table 981 "Payment Registration Buffer"
{
    Caption = 'Payment Registration Buffer';

    fields
    {
        field(1; "Ledger Entry No."; Integer)
        {
            Caption = 'Ledger Entry No.';
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(3; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(6; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(7; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(8; "Remaining Amount"; Decimal)
        {
            Caption = 'Remaining Amount';
        }
        field(9; "Payment Made"; Boolean)
        {
            Caption = 'Payment Made';
        }
        field(10; "Date Received"; Date)
        {
            Caption = 'Date Received';
        }
        field(11; "Amount Received"; Decimal)
        {
            Caption = 'Amount Received';
        }
        field(12; "Original Remaining Amount"; Decimal)
        {
            Caption = 'Original Remaining Amount';
        }
        field(13; "Rem. Amt. after Discount"; Decimal)
        {
            Caption = 'Rem. Amt. after Discount';
        }
        field(14; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
        }
    }

    keys
    {
        key(Key1; "Ledger Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Due Date")
        {
        }
    }

    fieldgroups
    {
    }
}

