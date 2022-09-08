table 5157804 "Application Line Detail"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Application detail line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            NotBlank = true;
            TableRelation = "Gen. Journal Template";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            NotBlank = true;
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "ID Applied-Entry"; Integer)
        {
            Caption = 'ID Applied-Entry';
        }
        field(5; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(6; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Account Type" = CONST ("Fixed Asset")) "Fixed Asset";
        }
        field(7; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(8; "Applies-to Doc. No."; Code[50])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(9; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(10; "Posting Payment Discount"; Decimal)
        {
            Caption = 'Posting Payment Discount';
        }
        field(11; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            Editable = false;
        }
        field(12; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = " ",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(13; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Source Type" = CONST ("Fixed Asset")) "Fixed Asset";
        }
        field(14; "Payment Text"; Text[50])
        {
            Caption = 'Payment Text';
        }
        field(15; "Pmt. Discount %"; Decimal)
        {
            Caption = 'Pmt. Discount %';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
        }
        field(17; "External Document No."; Code[50])
        {
            Caption = 'External Document No.';
        }
        field(18; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
            Description = 'PMT CC';
        }
        field(19; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
        }
        field(20; "Original Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            Description = 'PMT CC';
            TableRelation = Currency;
        }
        field(21; "Remaining Amount (LCY)"; Decimal)
        {
            Caption = 'Remaining Amount (LCY)';
            Description = 'PMT CC';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.", "ID Applied-Entry")
        {
            Clustered = true;
            SumIndexFields = Amount, "Posting Payment Discount", "Amount (LCY)";
        }
        key(Key2; "ID Applied-Entry")
        {
        }
    }

    fieldgroups
    {
    }
}

