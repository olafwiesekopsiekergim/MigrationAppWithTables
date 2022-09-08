table 5001934 "Retoure Entry"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================


    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = "Bank Account";
        }
        field(3; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
            TableRelation = "Bank Acc. Reconciliation"."Statement No." WHERE ("Bank Account No." = FIELD ("Bank Account No."));
        }
        field(4; "Statement Line No."; Integer)
        {
            Caption = 'Statement Line No.';
        }
        field(5; "Document No."; Code[35])
        {
            Caption = 'Document No.';
        }
        field(6; "Transaction Date"; Date)
        {
            Caption = 'Transaction Date';
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Statement Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Statement Amount';
        }
        field(9; "Retoure Fee"; Decimal)
        {
            Caption = 'Fees';
        }
        field(10; "CAMT Import"; Boolean)
        {
            Caption = 'CAMT Import';
        }
        field(11; "End-To-End-ID"; Code[35])
        {
            Caption = 'End-To-End-ID';
        }
        field(12; "Import Journal Entry No."; Integer)
        {
            Caption = 'Import Journal Entry No.';
            Editable = false;
        }
        field(20; "Transaction Code"; Code[3])
        {
            Caption = 'Transaction Code';
            TableRelation = "Transaction Code";
        }
        field(21; "Text Code Supplement"; Text[3])
        {
            Caption = 'Text Code Supplement';
            TableRelation = "Text Code Supplement";
        }
        field(22; "Retoure Document Type"; Option)
        {
            Caption = 'Retoure Document Type';
            InitValue = Refund;
            OptionCaption = ' ,,Invoice,,,,Refund';
            OptionMembers = " ",,Invoice,,,,Refund;
        }
        field(23; "Fee Document Type"; Option)
        {
            Caption = 'Fee Document Type';
            InitValue = Refund;
            OptionCaption = ' ,,Invoice,,,,Refund';
            OptionMembers = " ",,Invoice,,,,Refund;
        }
        field(24; "Post Fees"; Option)
        {
            Caption = 'Post Fees';
            OptionCaption = ' ,G/L Account,Customer (1 Entry),Customer (2 Entries)';
            OptionMembers = " ","G/L Account","Customer (1 Entry)","Customer (2 Entries)";
        }
        field(25; "Retoure Fee Account"; Code[20])
        {
            Caption = 'Reminder Fee Account';
            TableRelation = "G/L Account";
        }
        field(26; "Block Mandate"; Boolean)
        {
            Caption = 'Block Mandate';
        }
        field(27; "Apply New"; Boolean)
        {
            Caption = 'Apply New';
        }
        field(28; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(30; "Refers-to Account Type"; Option)
        {
            Caption = 'Refers-to Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(31; "Refers-to Entry No."; Integer)
        {
            Caption = 'Refers-to Entry No.';
            TableRelation = IF ("Refers-to Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No."
            ELSE
            IF ("Refers-to Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No.";
        }
        field(32; "Refers-to Doc. Type"; Option)
        {
            Caption = 'Refers-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(33; "Refers-to Doc. No."; Code[35])
        {
            Caption = 'Refers-to Doc. No.';
        }
        field(34; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            TableRelation = Mandate;
        }
        field(35; "Refers-to Transaction No."; Integer)
        {
            Caption = 'Refers-to Transaction No.';
        }
        field(36; "Refers-to Account No."; Code[20])
        {
            Caption = 'Refers-to Account No.';
            TableRelation = IF ("Refers-to Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Refers-to Account Type" = CONST (Vendor)) Vendor;
        }
        field(40; "Retoure Account Type"; Option)
        {
            Caption = 'Retoure Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(41; "Retoure Entry No."; Integer)
        {
            Caption = 'Retoure Entry No.';
            TableRelation = IF ("Retoure Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No."
            ELSE
            IF ("Retoure Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No.";
        }
        field(42; "Retoure Doc. Type"; Option)
        {
            Caption = 'Retoure Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(43; "Retoure Doc. No."; Code[35])
        {
            Caption = 'Retoure Doc. No.';
        }
        field(44; "Applied Entry No."; Integer)
        {
            Caption = 'Applied Entry No.';
            TableRelation = IF ("Retoure Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No."
            ELSE
            IF ("Retoure Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No.";
        }
        field(50; "Fee Account Type"; Option)
        {
            Caption = 'Fee Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(51; "Fee Entry No."; Integer)
        {
            Caption = 'Fee  Entry No.';
            TableRelation = IF ("Fee Account Type" = CONST ("G/L Account")) "G/L Entry"."Entry No."
            ELSE
            IF ("Fee Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No."
            ELSE
            IF ("Fee Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No.";
        }
        field(52; "Fee Doc. Type"; Option)
        {
            Caption = 'Refers-to Doc. Type (Fee)';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(53; "Fee Doc. No."; Code[35])
        {
            Caption = 'Refers-to Doc. No. (Fee)';
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

