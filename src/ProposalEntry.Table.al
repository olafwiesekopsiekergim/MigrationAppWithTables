table 5001914 "Proposal Entry"
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

    Caption = 'Proposal Entry';

    fields
    {
        field(1; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Editable = false;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(3; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(6; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(7; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(8; "Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Remaining Amount';
            Editable = false;
        }
        field(9; "Original Amr. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Amr. (LCY)';
            Editable = false;
        }
        field(10; "Remaining Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Remaining Amt. (LCY)';
            Editable = false;
        }
        field(11; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = false;
        }
        field(12; Application; Boolean)
        {
            Caption = 'Application';
        }
        field(13; "Bank Document Entry No."; Integer)
        {
            Caption = 'Bank Document Entry No.';
            Editable = false;
            TableRelation = IF ("CAMT Import" = CONST (false)) "Bank Document"
            ELSE
            IF ("CAMT Import" = CONST (true)) "camt Bank Document";
        }
        field(14; Account; Code[20])
        {
            Caption = 'Account';
            Editable = false;
            TableRelation = IF ("Entry Type" = CONST (Customer)) Customer
            ELSE
            IF ("Entry Type" = CONST (Vendor)) Vendor;
        }
        field(15; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(16; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            Editable = false;
        }
        field(17; "CAMT Import"; Boolean)
        {
            Caption = 'CAMT Import';
        }
    }

    keys
    {
        key(Key1; "Bank Document Entry No.", "Entry Type", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Bank Document Entry No.", "Remaining Amount")
        {
        }
        key(Key3; "Bank Document Entry No.", "Document No.")
        {
        }
        key(Key4; "Bank Document Entry No.", Application)
        {
        }
    }

    fieldgroups
    {
    }
}

