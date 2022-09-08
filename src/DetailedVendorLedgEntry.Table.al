table 380 "Detailed Vendor Ledg. Entry"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - New Fields added
    // -----------------------------------------------------
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // :DMW15.01.00.01:6:01 #Completed Captions
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Detailed Vendor Ledg. Entry';
    DataCaptionFields = "Vendor No.";
    Permissions = TableData "Detailed Vendor Ledg. Entry" = m;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Vendor Ledger Entry No."; Integer)
        {
            Caption = 'Vendor Ledger Entry No.';
            TableRelation = "Vendor Ledger Entry";
        }
        field(3; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = ',Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain,Payment Discount,Payment Discount (VAT Excl.),Payment Discount (VAT Adjustment),Appln. Rounding,Correction of Remaining Amount,Payment Tolerance,Payment Discount Tolerance,Payment Tolerance (VAT Excl.),Payment Tolerance (VAT Adjustment),Payment Discount Tolerance (VAT Excl.),Payment Discount Tolerance (VAT Adjustment)';
            OptionMembers = ,"Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain","Payment Discount","Payment Discount (VAT Excl.)","Payment Discount (VAT Adjustment)","Appln. Rounding","Correction of Remaining Amount","Payment Tolerance","Payment Discount Tolerance","Payment Tolerance (VAT Excl.)","Payment Tolerance (VAT Adjustment)","Payment Discount Tolerance (VAT Excl.)","Payment Discount Tolerance (VAT Adjustment)";
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(7; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(8; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(9; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(10; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(11; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(12; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(13; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
        }
        field(14; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(15; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(16; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
        }
        field(17; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
        }
        field(18; "Debit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount (LCY)';
        }
        field(19; "Credit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount (LCY)';
        }
        field(20; "Initial Entry Due Date"; Date)
        {
            Caption = 'Initial Entry Due Date';
        }
        field(21; "Initial Entry Global Dim. 1"; Code[20])
        {
            Caption = 'Initial Entry Global Dim. 1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(22; "Initial Entry Global Dim. 2"; Code[20])
        {
            Caption = 'Initial Entry Global Dim. 2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(24; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(25; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(29; "Use Tax"; Boolean)
        {
            Caption = 'Use Tax';
        }
        field(30; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(31; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(35; "Initial Document Type"; Option)
        {
            Caption = 'Initial Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applied Vend. Ledger Entry No."; Integer)
        {
            Caption = 'Applied Vend. Ledger Entry No.';
        }
        field(37; Unapplied; Boolean)
        {
            Caption = 'Unapplied';
        }
        field(38; "Unapplied by Entry No."; Integer)
        {
            Caption = 'Unapplied by Entry No.';
            TableRelation = "Detailed Vendor Ledg. Entry";
        }
        field(39; "Remaining Pmt. Disc. Possible"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Remaining Pmt. Disc. Possible';
        }
        field(40; "Max. Payment Tolerance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Max. Payment Tolerance';
        }
        field(41; "Tax Jurisdiction Code"; Code[10])
        {
            Caption = 'Tax Jurisdiction Code';
            Editable = false;
            TableRelation = "Tax Jurisdiction";
        }
        field(42; "Application No."; Integer)
        {
            Caption = 'Application No.';
            Editable = false;
        }
        field(43; "Ledger Entry Amount"; Boolean)
        {
            Caption = 'Ledger Entry Amount';
            Editable = false;
        }
        field(5013500; "Advance Payment"; Boolean)
        {
            Caption = 'Advance Payment';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013520; "Advance Payment No."; Code[20])
        {
            Caption = 'Advance Payment No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = IF ("Advance Payment Type" = FILTER (> " " & < "Advance Payment Request Purchase")) "Adv. Payment Plan Header Sale"."No."
            ELSE
            IF ("Advance Payment Type" = FILTER (> "Alloc. Adv. Paym. Req. Sale")) "Adv. Payment Plan Header Pur."."No.";
        }
        field(5013530; "Advance Payment Type"; Option)
        {
            Caption = 'Advance Payment Type';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = ' ,Advance Payment Request Sale,Advance Payment Received,Advance Payment Debt,Partial Invoice Sale,Closing Invoice Sale,Alloc. Adv. Paym. Received,Alloc. Adv. Paym. Req. Sale,Advance Payment Request Purchase,Advance Payment Made,Advance Payment Receivable,Partial Invoice Purchase,Closing Invoice Purchase,Alloc. Adv. Paym. Made,Alloc. Adv. Paym. Req. Purchase';
            OptionMembers = " ","Advance Payment Request Sale","Advance Payment Received","Advance Payment Debt","Partial Invoice Sale","Closing Invoice Sale","Alloc. Adv. Paym. Received","Alloc. Adv. Paym. Req. Sale","Advance Payment Request Purchase","Advance Payment Made","Advance Payment Receivable","Partial Invoice Purchase","Closing Invoice Purchase","Alloc. Adv. Paym. Made","Alloc. Adv. Paym. Req. Purchase";
        }
        field(5013540; "Adv. Payment Sequential No."; Integer)
        {
            Caption = 'Adv. Payment Sequential No.';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013550; Secured; Boolean)
        {
            Caption = 'Secured';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013580; "Related to Adv. Paym. Entry"; Integer)
        {
            Caption = 'Related to Advance Payment Entry';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013590; "Advance Payment Allocation No."; Integer)
        {
            Caption = 'Advance Payment Allocation No.';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013595; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = Job;
        }
        field(5157802; "VAT Entry Global Dim. 1"; Code[20])
        {
            Caption = 'VAT Entry Global Dim. 1';
            Description = 'EA';
        }
        field(5157803; "VAT Entry Global Dim. 2"; Code[20])
        {
            Caption = 'VAT Entry Global Dim. 2';
            Description = 'EA';
        }
        field(5157804; "VAT Entry No."; Integer)
        {
            Caption = 'VAT Entry No.';
            Description = 'EA';
        }
        field(5157805; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Description = 'EA';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Vendor Ledger Entry No.", "Posting Date")
        {
        }
        key(Key3; "Vendor Ledger Entry No.", "Entry Type", "Posting Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = "Amount (LCY)";
        }
        key(Key4; "Ledger Entry Amount", "Vendor Ledger Entry No.", "Posting Date")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount (LCY)", "Debit Amount", "Credit Amount", "Debit Amount (LCY)", "Credit Amount (LCY)";
        }
        key(Key5; "Initial Document Type", "Entry Type", "Vendor No.", "Currency Code", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Posting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key6; "Vendor No.", "Currency Code", "Initial Entry Global Dim. 1", "Initial Entry Global Dim. 2", "Initial Entry Due Date", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key7; "Document No.", "Document Type", "Posting Date")
        {
        }
        key(Key8; "Applied Vend. Ledger Entry No.", "Entry Type")
        {
        }
        key(Key9; "Transaction No.", "Vendor No.", "Entry Type")
        {
        }
        key(Key10; "Application No.", "Vendor No.", "Entry Type")
        {
        }
        key(Key11; "Advance Payment", "Advance Payment No.", "Advance Payment Type", "Adv. Payment Sequential No.", "Entry Type")
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", "Vendor Ledger Entry No.", "Vendor No.", "Posting Date", "Document Type", "Document No.")
        {
        }
    }
}

