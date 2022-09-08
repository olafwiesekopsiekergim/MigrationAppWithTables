table 5001982 "Application Search Match Comp."
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

    Caption = 'Application Search Match Company';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Search Account Type"; Option)
        {
            Caption = 'Search Account Type';
            Editable = false;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(4; "Search Field"; Option)
        {
            Caption = 'Search Field';
            Editable = false;
            OptionCaption = 'Account No.,Document No.,External Document No.,Order No.,Reminder No. ';
            OptionMembers = "Account No.","Document No.","External Document No.","Order No.","Reminder No. ";
        }
        field(5; Priority; Integer)
        {
            Caption = 'Priority';
            Editable = false;
        }
        field(6; "End on Match"; Boolean)
        {
            Caption = 'End on Match';
            Editable = false;
        }
        field(7; "Use For Application"; Boolean)
        {
            Caption = 'Use For Application';
        }
        field(8; "Ledger Entry No."; Integer)
        {
            Caption = 'Ledger Entry No.';
            Editable = false;
            TableRelation = IF ("Search Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No." WHERE ("Entry No." = FIELD ("Ledger Entry No."))
            ELSE
            IF ("Search Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No." WHERE ("Entry No." = FIELD ("Ledger Entry No."));
        }
        field(9; "Remaining Amount"; Decimal)
        {
            Caption = 'Remaining Amount';
            Editable = false;
        }
        field(10; "Original Amount"; Decimal)
        {
            Caption = 'Original Amount';
            Editable = false;
        }
        field(11; "Payment Discount"; Decimal)
        {
            Caption = 'Payment Discount';
            Editable = false;
        }
        field(12; "Reminder Fee"; Decimal)
        {
            Caption = 'Reminder Fee';
            Editable = false;
        }
        field(13; Company; Text[30])
        {
            Caption = 'Company';
            Editable = false;
            TableRelation = Company.Name;
        }
        field(14; "Applicate Match"; Boolean)
        {
            Caption = 'Applicate Match';
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
        }
        field(21; Match; Boolean)
        {
            Caption = 'Match';
            Editable = false;
        }
        field(22; "Match No."; Code[20])
        {
            Caption = 'Match No.';
            Editable = false;
            TableRelation = IF ("Search Account Type" = CONST (Customer)) Customer."No." WHERE ("No." = FIELD ("Match No."))
            ELSE
            IF ("Search Account Type" = CONST (Vendor)) Vendor."No." WHERE ("No." = FIELD ("Match No."));
        }
        field(23; "Match Document No."; Code[35])
        {
            Caption = 'Match Document No.';
            Editable = false;
        }
        field(24; "Match Entry No."; Integer)
        {
            Caption = 'Match Entry No.';
            Editable = false;
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(31; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(32; "Document Date"; Date)
        {
            Caption = 'Document Date';
            Editable = false;
        }
        field(33; "Applies-to ID"; Code[35])
        {
            Caption = 'Applies-to ID';
            Editable = false;
        }
        field(100; "Banl Account Statement No."; Code[20])
        {
            Caption = 'Bank Account Statement No.';
            Editable = false;
        }
        field(101; "Bank Account Statement Line No"; Integer)
        {
            Caption = 'Bank Account Statement Line No.';
            Editable = false;
        }
        field(102; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = "Bank Account";
        }
        field(200; "Regard Reminder Fee"; Boolean)
        {
            Caption = 'Regard Reminder Fee';
            Editable = false;
        }
        field(201; "Reminder Fee Account"; Code[20])
        {
            Caption = 'Reminder Fee Account';
            TableRelation = "G/L Account";
        }
        field(202; "Reminder No."; Code[20])
        {
            Caption = 'Reminder No.';
            Editable = false;
            TableRelation = "Issued Reminder Header"."No." WHERE ("No." = FIELD ("Reminder No."));
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Priority)
        {
        }
        key(Key3; "Use For Application", Priority)
        {
        }
        key(Key4; Match)
        {
        }
    }

    fieldgroups
    {
    }
}

