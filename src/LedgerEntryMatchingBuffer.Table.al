table 1248 "Ledger Entry Matching Buffer"
{
    Caption = 'Ledger Entry Matching Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(3; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(9; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(10; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(11; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(12; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(20; "Remaining Amount"; Decimal)
        {
            Caption = 'Remaining Amount';
        }
        field(21; "Remaining Amt. Incl. Discount"; Decimal)
        {
            Caption = 'Remaining Amt. Incl. Discount';
        }
        field(22; "Pmt. Discount Due Date"; Date)
        {
            Caption = 'Pmt. Discount Due Date';
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Account Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

