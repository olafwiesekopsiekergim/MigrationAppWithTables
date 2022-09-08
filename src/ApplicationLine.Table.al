table 5157803 "Application Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    // EXT  01.11.08   Extended Application (Extension)
    // VAL  01.11.08   Views and Lists
    // GLOE 01.11.08   Gen.Ledger Open Entries
    // -----------------------------------------------------

    Caption = 'Application Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            NotBlank = true;
            TableRelation = "Gen. Journal Template";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(4; "Account No."; Code[20])
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
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Original Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Amount';
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(13; "Orig. Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Remaining Amount';
        }
        field(14; "Orig. Remaining Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Orig. Remaining Amt. (LCY)';
        }
        field(16; "Appln. Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Appln. Remaining Amount';
        }
        field(22; "Sell-to/Buy-from No."; Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
        }
        field(23; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            Editable = false;
        }
        field(24; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(25; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(30; "Payment Discount Allowed"; Boolean)
        {
            Caption = 'Payment Discount Allowed';
            Editable = false;
        }
        field(34; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(35; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(38; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(39; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
        }
        field(40; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(48; "Applies-to ID"; Code[50])
        {
            Caption = 'Applies-to ID';
        }
        field(50; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(51; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            NotBlank = true;
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(62; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            InitValue = true;
        }
        field(74; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
        }
        field(76; "Document Date"; Date)
        {
            Caption = 'Document Date';
            ClosingDates = true;
        }
        field(77; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(78; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = " ",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(79; "Source No."; Code[20])
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
        field(80; "Pmt. Discount Possible"; Decimal)
        {
            Caption = 'Pmt. Discount possible';
        }
        field(81; "Posting Applied Amount"; Decimal)
        {
            Caption = 'Posting Applied Amount';
        }
        field(82; "Posting Payment Discount"; Decimal)
        {
            Caption = 'Posting Payment Discount';
        }
        field(83; "Orig. Payment Discount %"; Decimal)
        {
            Caption = 'Orig. Payment Discount %';
        }
        field(84; "ID Applied-Entry"; Integer)
        {
            Caption = 'ID Applied-Entry';
            Editable = false;
        }
        field(85; "Absolute Amount"; Decimal)
        {
            Caption = 'Absolute Amount';
        }
        field(86; "Bank Document No."; Integer)
        {
            Caption = 'Bank Document No.';
        }
        field(87; Color; Integer)
        {
            Caption = 'Color';
        }
        field(88; "Pmt. Disc. % Original"; Decimal)
        {
            Caption = 'Pmt. Disc. % Original';
            DecimalPlaces = 0 : 5;
        }
        field(89; "Payment Text"; Text[50])
        {
            Caption = 'Payment Text';
        }
        field(90; "Pmt. Disc. Given (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Given (LCY)';
        }
        field(91; "Original Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Amt. (LCY)';
            Editable = false;
        }
        field(92; "Reminder Level"; Integer)
        {
            CalcFormula = Max ("Reminder/Fin. Charge Entry"."Reminder Level" WHERE ("Customer Entry No." = FIELD ("ID Applied-Entry"),
                                                                                   Type = CONST (Reminder)));
            Caption = 'Reminder Level';
            Editable = false;
            FieldClass = FlowField;
        }
        field(93; "Association Sort Code"; Code[20])
        {
            Caption = 'Association Sort Code';
        }
        field(94; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
        }
        field(95; "Entry Comment"; Boolean)
        {
            Caption = 'Entry Comment';
            Editable = false;
        }
        field(96; "Sales/Purch. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales/Purch. (LCY)';
        }
        field(97; "Account Name"; Text[100])
        {
            Caption = 'Account Name';
        }
        field(98; "Application Amt. 2"; Decimal)
        {
            Caption = 'Application Amt. 2';
            Editable = false;
        }
        field(99; "Pmt. Disc. Tolerance Date"; Date)
        {
            Caption = 'Pmt. Disc. Tolerance Date';
        }
        field(100; "Max. Payment Tolerance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Max. Payment Tolerance';
        }
        field(101; "Appln. Currency Factor"; Decimal)
        {
            Caption = 'Appln. Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
            MinValue = 0;
        }
        field(102; "Posting Applied Amt. (LCY)"; Decimal)
        {
            Caption = 'Posting Applied Amount (LCY)';
            Description = 'PMT CC';
        }
        field(103; "Posting Payment Disc. (LCY)"; Decimal)
        {
            Caption = 'Posting Payment Discount (LCY)';
            Description = 'PMT CC';
        }
        field(104; "Appln. Remaining Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Appln. Remaining Amount (LCY)';
            Description = 'PMT CC';
        }
        field(110; "Original Applies-to ID"; Code[50])
        {
            Caption = 'Original Applies-to ID';
        }
        field(111; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(112; "Original Amount (FCY)"; Decimal)
        {
            Caption = 'Original Amount (FCY)';
            Editable = false;
        }
        field(113; "Bank Fee Amount"; Decimal)
        {
            Caption = 'Bank Fee Amount';
        }
        field(114; "Currency Gain/Loss Amount"; Decimal)
        {
            Caption = 'Currency Gain/Loss Amount';
        }
        field(115; "Orig. Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Posting Applied Amount", "Posting Payment Discount", "Posting Applied Amt. (LCY)";
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Posting Date", "Document No.")
        {
        }
        key(Key3; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Absolute Amount")
        {
        }
        key(Key4; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Account Type", "Account No.")
        {
        }
        key(Key5; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Document No.", "Posting Date")
        {
        }
        key(Key6; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Orig. Remaining Amount")
        {
        }
        key(Key7; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Document Date")
        {
        }
        key(Key8; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "External Document No.")
        {
        }
        key(Key9; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Association Sort Code", "Document Date")
        {
        }
        key(Key10; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Due Date", "Document No.")
        {
        }
        key(Key11; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Pmt. Discount Date", "Document No.")
        {
        }
    }

    fieldgroups
    {
    }
}

