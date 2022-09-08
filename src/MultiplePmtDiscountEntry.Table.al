table 5483213 "Multiple Pmt. Discount Entry"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // MP   01.06.16   Multiple Pmt. Discount
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Multiple Pmt. Discount Entry';

    fields
    {
        field(1; "Account Type"; Option)
        {
            Caption = 'Account Type';
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
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
        field(7; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            Editable = false;
            TableRelation = "Gen. Journal Template";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            Editable = false;
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(10; "Document Date"; Date)
        {
            Caption = 'Document Date';
            Editable = false;
        }
        field(11; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Editable = false;
        }
        field(12; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(13; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
            Editable = false;
        }
        field(14; "Original Pmt. Disc. Possible"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Pmt. Disc. Possible';
            Editable = false;
        }
        field(15; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(20; "Value Date"; Date)
        {
            Caption = 'Value Date';
        }
        field(21; "Pmt. Discount Date 2"; Date)
        {
            Caption = 'Pmt. Discount Date 2';
        }
        field(22; "Pmt. Discount Date 3"; Date)
        {
            Caption = 'Pmt. Discount Date 3';
        }
        field(23; "Value Date Calculation"; DateFormula)
        {
            Caption = 'Value Date Calculation';
        }
        field(24; "Payment Discount % 2"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Payment Discount % 2';
            MaxValue = 100;
            MinValue = 0;
        }
        field(25; "Payment Discount % 3"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Payment Discount % 3';
            MaxValue = 100;
            MinValue = 0;
        }
        field(26; "Pmt. Discount Date 4"; Date)
        {
            Caption = 'Pmt. Discount Date 4';
        }
        field(27; "Pmt. Discount Date 5"; Date)
        {
            Caption = 'Pmt. Discount Date 5';
        }
        field(28; "Payment Discount % 4"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Payment Discount % 4';
            MaxValue = 100;
            MinValue = 0;
        }
        field(29; "Payment Discount % 5"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Payment Discount % 5';
            MaxValue = 100;
            MinValue = 0;
        }
        field(31; "Pmt. Disc. Possible 2"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Possible 2';
        }
        field(32; "Pmt. Disc. Possible 3"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Possible 3';
        }
        field(33; "Pmt. Disc. Possible 4"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Possible 4';
        }
        field(34; "Pmt. Disc. Possible 5"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Possible 5';
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

