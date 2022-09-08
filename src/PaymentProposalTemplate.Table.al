table 5157901 "Payment Proposal Template"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Proposal Template';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ',Customer,Vendor,G/L Account';
            OptionMembers = ,Customer,Vendor,"G/L Account";
        }
        field(2; Name; Code[8])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Account Filter 1"; Text[250])
        {
            Caption = 'Account Filter 1';
        }
        field(6; "Account Filter 2"; Text[250])
        {
            Caption = 'Account Filter 2';
        }
        field(7; "Account Filter 3"; Text[250])
        {
            Caption = 'Account Filter 3';
        }
        field(8; "Account Filter 4"; Text[250])
        {
            Caption = 'Account Filter 4';
        }
        field(9; "Ledger Entry Filter 1"; Text[250])
        {
            Caption = 'Ledger Entry Filter 1';
        }
        field(10; "Ledger Entry Filter 2"; Text[250])
        {
            Caption = 'Ledger Entry Filter 2';
        }
        field(11; "Include All"; Boolean)
        {
            Caption = 'Include All';
        }
        field(12; "Association Payment"; Boolean)
        {
            Caption = 'Association Payment';
        }
        field(13; "Cust. / Vend. Linking"; Boolean)
        {
            Caption = 'Cust. / Vend. Linking';
        }
        field(14; "Bal. Account Type"; Option)
        {
            Caption = 'Account Type';
            InitValue = "Bank Account";
            OptionCaption = 'G/L Account,,,Bank Account';
            OptionMembers = "G/L Account",,,"Bank Account";
        }
        field(15; "Bal. Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(16; "Use Payment Type Code"; Code[10])
        {
            Caption = 'Use Payment Type Code';
            TableRelation = "Payment Type Code";
        }
        field(17; "With Backlog"; Boolean)
        {
            Caption = 'With Backlog';
        }
        field(18; DiscountOption; Option)
        {
            Caption = 'DiscountOption';
            OptionCaption = 'Always Discount,As Entered,,,Always in Period,None';
            OptionMembers = "Always Discount","Entered Date","Next Date","Last Date","Always in Period","None";
        }
        field(22; "Summarize Per Pmt. Head"; Boolean)
        {
            Caption = 'Summarize per Pmt. Head';
        }
        field(23; "Only settled Accounts"; Boolean)
        {
            Caption = 'Only settled Accounts';
        }
        field(24; "Attend SEPA Due Date at DD"; Boolean)
        {
            Caption = 'Attend SEPA Due Date at Direct Debit';
        }
        field(25; "Line Sorting"; Option)
        {
            Caption = 'Line Sorting';
            OptionCaption = 'Due Date,Document Date,Document No.,External Document No.';
            OptionMembers = DueDate,DocDate,DocNo,ExtDocNo;
        }
        field(26; "Include on Hold"; Boolean)
        {
            Caption = 'Include on Hold';
        }
        field(27; "Pmt. Suggestion No. Series"; Code[10])
        {
            Caption = 'Pmt. Suggestion No. Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; Type, Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

