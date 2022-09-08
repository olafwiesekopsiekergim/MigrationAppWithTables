table 5157897 "Payment Proposal Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // EXT  01.11.08   Extended Application (Extension)
    // VAL  01.11.08   Views and Lists
    // AZV  01.13.10   OPplus DTAZV
    //                 - New Functions added
    //                 - OnDeleteTrigger changed
    // -----------------------------------------------------

    Caption = 'Payment Proposal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            NotBlank = true;
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            NotBlank = true;
        }
        field(3; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
        }
        field(4; "ID Applied-Entry"; Integer)
        {
            Caption = 'ID Applied-Entry';
        }
        field(5; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(6; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            NotBlank = true;
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(7; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(8; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(9; "Original Remaining Amount"; Decimal)
        {
            Caption = 'Original Remaining Amount';
            Editable = false;
        }
        field(10; "Posting Payment Discount"; Decimal)
        {
            Caption = 'Posting Payment Discount';
            Editable = true;
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
        field(15; "Original Pmt. Discount %"; Decimal)
        {
            Caption = 'Original Pmt. Discount %';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(16; "Payment Discount Allowed"; Boolean)
        {
            Caption = 'Payment Discount Allowed';
            Editable = false;
        }
        field(17; "Appln. Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Appln. Remaining Amount';
        }
        field(21; "Original Amount"; Decimal)
        {
            Caption = 'Original Amount';
        }
        field(22; "Posting Applied Amount"; Decimal)
        {
            Caption = 'Posting Applied Amount';
            Editable = true;
        }
        field(23; "Payment Description"; Text[50])
        {
            Caption = 'Payment Description';
        }
        field(24; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(25; "Discount Date"; Date)
        {
            Caption = 'Discount Date';
        }
        field(26; "Orig. Posting Date"; Date)
        {
            Caption = 'Orig. Posting Date';
        }
        field(27; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(28; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(29; "Payment Discount Possible"; Decimal)
        {
            Caption = 'Payment Discount Possible';
            Editable = false;
        }
        field(30; "Pmt. Account Type"; Option)
        {
            Caption = 'Pmt. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(31; "Pmt. Account No."; Code[20])
        {
            Caption = 'Pmt. Account No.';
            TableRelation = IF ("Pmt. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Pmt. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Pmt. Account Type" = CONST (Vendor)) Vendor;
        }
        field(32; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            Editable = false;
            TableRelation = "Payment Type Code";
        }
        field(33; "Orig. Payment Method"; Code[10])
        {
            Caption = 'Orig. Payment Method';
            Editable = false;
            TableRelation = "Payment Method";
        }
        field(34; Counter; Decimal)
        {
            Caption = 'Counter';
            Editable = false;
            InitValue = 1;
        }
        field(35; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(36; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(37; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(38; "Sell-to/Buy-from No."; Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
        }
        field(39; "Orig. Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(40; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(41; Color; Integer)
        {
            Caption = 'Color';
            Editable = false;
        }
        field(42; "Pmt. Disc. % Original"; Decimal)
        {
            Caption = 'Pmt. Disc. % Original';
            DecimalPlaces = 0 : 5;
        }
        field(43; "Reminder Level"; Integer)
        {
            CalcFormula = Max ("Reminder/Fin. Charge Entry"."Reminder Level" WHERE ("Customer Entry No." = FIELD ("ID Applied-Entry"),
                                                                                   Type = CONST (Reminder)));
            Caption = 'Reminder Level';
            Editable = false;
            FieldClass = FlowField;
        }
        field(44; "Association Sort Code"; Code[20])
        {
            Caption = 'Association Sort Code';
        }
        field(45; "Entry Comment"; Boolean)
        {
            Caption = 'Entry Comment';
            Editable = false;
        }
        field(46; "Sales/Purch. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales/Purch. (LCY)';
            Editable = false;
        }
        field(47; "Orig. Document No."; Code[20])
        {
            Caption = 'Orig. Document No.';
        }
        field(48; "Pmt. Disc. Given (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Given (LCY)';
            Editable = false;
        }
        field(49; "Original Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Amt. (LCY)';
            Editable = false;
        }
        field(50; "Pmt. Posting Date"; Date)
        {
            Caption = 'Pmt. Posting Date';
        }
        field(51; "Pmt. Currency Code"; Code[10])
        {
            Caption = 'Pmt. Currency Code';
            TableRelation = Currency;
        }
        field(52; "Payment allowed"; Boolean)
        {
            Caption = 'Payment allowed';
            Editable = false;
        }
        field(53; "Discount allowed"; Boolean)
        {
            Caption = 'Pmt. Discount allowed';
            Editable = false;
        }
        field(54; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            Editable = false;
            InitValue = true;
        }
        field(55; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(56; "Pmt. Disc. Tolerance Date"; Date)
        {
            Caption = 'Pmt. Disc. Tolerance Date';
            Editable = false;
        }
        field(57; "Pmt. Amount (LCY)"; Decimal)
        {
            Caption = 'Pmt. Amount (LCY)';
        }
        field(58; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
        field(59; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            Description = 'PMT CC';
            Editable = false;
        }
        field(95; "Orig. Remaining Amt. (LCY)"; Decimal)
        {
            Caption = 'Orig. Remaining Amt. (LCY)';
            Editable = false;
        }
        field(96; "Payment Amount Sum"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Posting Applied Amount" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                      "Journal Batch Name" = FIELD ("Journal Batch Name")));
            Caption = 'Payment Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(97; "Pmt. Amount (LCY) Sum"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Pmt. Amount (LCY)" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                 "Journal Batch Name" = FIELD ("Journal Batch Name")));
            Caption = 'Payment Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157960; "Customer Reference No."; Code[23])
        {
            Caption = 'Customer Reference No.';
            CharAllowed = '0123456789';
            Description = 'PMT';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Original Remaining Amount", "Posting Payment Discount", "Posting Applied Amount", Counter, "Pmt. Amount (LCY)";
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", "Payment Type Code")
        {
            SumIndexFields = "Posting Applied Amount", "Pmt. Amount (LCY)";
        }
        key(Key3; "ID Applied-Entry")
        {
        }
        key(Key4; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "ID Applied-Entry")
        {
        }
        key(Key5; "Journal Template Name", "Journal Batch Name", "Due Date")
        {
        }
        key(Key6; "Journal Template Name", "Journal Batch Name", "External Document No.")
        {
        }
        key(Key7; "Journal Template Name", "Journal Batch Name", "Applies-to Doc. No.")
        {
        }
        key(Key8; "Journal Template Name", "Journal Batch Name", "Document Date")
        {
        }
    }

    fieldgroups
    {
    }
}

