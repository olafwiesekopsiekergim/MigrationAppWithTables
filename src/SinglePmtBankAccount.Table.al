table 5157900 "Single Pmt. Bank Account"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Single Pmt. Bank Account';

    fields
    {
        field(1; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Entry"
            ELSE
            IF ("Account Type" = CONST (Customer)) "Cust. Ledger Entry"
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Ledger Entry";
            ValidateTableRelation = false;
        }
        field(3; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            Editable = false;
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(10; "Bank Code"; Code[10])
        {
            Caption = 'Bank Code';
            NotBlank = true;
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Bank Account".Code WHERE ("Vendor No." = FIELD ("Account No."));
        }
        field(12; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
        }
        field(13; "Bank Branch No."; Code[20])
        {
            Caption = 'Bank Branch No.';
        }
        field(14; "Bank Account No."; Code[34])
        {
            Caption = 'Bank Account No.';
        }
        field(15; "Bank BIC Code"; Code[20])
        {
            Caption = 'BIC-Code';
        }
        field(16; "Bank IBAN Code"; Code[50])
        {
            Caption = 'IBAN';
        }
        field(17; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(18; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(19; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(20; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(21; City; Text[30])
        {
            Caption = 'City';
        }
        field(22; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(23; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(24; "Bank Country/Region Code"; Code[10])
        {
            Caption = 'Bank Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(30; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Gen. Journal Template";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(31; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(32; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(33; "Bank Account Owner"; Text[50])
        {
            Caption = 'Alternative Account Owner';
        }
        field(34; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
        }
        field(78; "Mandate ID"; Code[40])
        {
            Caption = 'Mandate Id';
        }
        field(79; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
            Description = 'SEPA DD';
        }
        field(80; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            TableRelation = "Payment Type Code";
        }
        field(5157898; "Mandate Type"; Option)
        {
            Caption = 'SEPA Type';
            Description = 'PMT';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(5157899; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            Description = 'PMT';
            InitValue = "Recurrent Payment";
            OptionCaption = 'One-off Payment,Recurrent Payment';
            OptionMembers = "One-off Payment","Recurrent Payment";
        }
        field(5157900; "Mandate Is Electronic"; Boolean)
        {
            Caption = 'e-Mandate';
            Description = 'PMT';
        }
        field(5157901; "Mandate On Behalf of Owner"; Boolean)
        {
            Caption = 'On Behalf of Owner';
            Description = 'PMT';
        }
        field(5157902; "Mandate Last Used"; Date)
        {
            Caption = 'Last Used';
            Description = 'PMT';
        }
        field(5157903; "Mandate Status"; Option)
        {
            BlankZero = true;
            Caption = 'Status of Mandate';
            Description = 'PMT';
            InitValue = FRST;
            OptionCaption = ' ,First,Recurring,Final';
            OptionMembers = " ",FRST,RCUR,FNAL;
        }
    }

    keys
    {
        key(Key1; "Account Type", "Entry No.", "Journal Template Name", "Journal Batch Name", "Line No.", "Document Type", "Document No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

