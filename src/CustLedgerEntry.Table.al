table 21 "Cust. Ledger Entry"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.11.08   OPplus Granules
    //                 - New Fields added
    //                 - New Keys added
    // INS  24.11.16       OPplus Installments
    // -----------------------------------------------------
    // P0004 15.02.16 DEBIE.ARE NAV2015 Modus changes
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        New Key
    //                                        - "Global Dimension 2 Code","Document Type"
    // 
    // APTW:DMW15.01:58:01:01 #Advance Payment Management: new fields and a new key: Document No.,Document Type,Customer No.
    // :DMW15.01.00.01:6:01 #Completed Captions
    // 
    // #APTW:DMW17.10:T100 28.10.13 DEMSR.KHS
    //   Fill Advance Payment fields
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW18.00.00.02:T500 16.04.15 DEMSR.SSZ
    //   set "Sales (LCY)" = 0 if advance payment request because this amount must not be shown in several statistic reports
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================
    // 
    // +--------------------------------------------------------------+
    // |                  Copyright MODUS Consult AG                  |
    // |                          Customizing                         |
    // +--------------------------------------------------------------+
    // Modul     Date      User      Description
    // MC        04.11.15  DT        Fields 50000/50005/50010 Vertreter/Sachbearbeiter/Provision

    Caption = 'Cust. Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
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
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(13; Amount; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry".Amount WHERE ("Ledger Entry Amount" = CONST (true),
                                                                         "Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                         "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry".Amount WHERE ("Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                         "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Remaining Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Original Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                 "Entry Type" = FILTER ("Initial Entry"),
                                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Original Amt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Remaining Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Remaining Amt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Ledger Entry Amount" = CONST (true),
                                                                                 "Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales (LCY)';
        }
        field(19; "Profit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Profit (LCY)';
        }
        field(20; "Inv. Discount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Discount (LCY)';
        }
        field(21; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(22; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            TableRelation = "Customer Posting Group";
        }
        field(23; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(24; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(25; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(27; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(28; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(33; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(34; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(35; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(36; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(37; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(38; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
        }
        field(39; "Original Pmt. Disc. Possible"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Pmt. Disc. Possible';
            Editable = false;
        }
        field(40; "Pmt. Disc. Given (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Disc. Given (LCY)';
        }
        field(43; Positive; Boolean)
        {
            Caption = 'Positive';
        }
        field(44; "Closed by Entry No."; Integer)
        {
            Caption = 'Closed by Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(45; "Closed at Date"; Date)
        {
            Caption = 'Closed at Date';
        }
        field(46; "Closed by Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Closed by Amount';
        }
        field(47; "Applies-to ID"; Code[50])
        {
            Caption = 'Applies-to ID';
        }
        field(49; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(50; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(51; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(52; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Fixed Asset")) "Fixed Asset";
        }
        field(53; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
        }
        field(54; "Closed by Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Closed by Amount (LCY)';
        }
        field(58; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Debit Amount" WHERE ("Ledger Entry Amount" = CONST (true),
                                                                                 "Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Credit Amount" WHERE ("Ledger Entry Amount" = CONST (true),
                                                                                  "Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                  "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; "Debit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Debit Amount (LCY)" WHERE ("Ledger Entry Amount" = CONST (true),
                                                                                       "Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                       "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Debit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Credit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Credit Amount (LCY)" WHERE ("Ledger Entry Amount" = CONST (true),
                                                                                        "Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                        "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Credit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(63; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(64; "Calculate Interest"; Boolean)
        {
            Caption = 'Calculate Interest';
        }
        field(65; "Closing Interest Calculated"; Boolean)
        {
            Caption = 'Closing Interest Calculated';
        }
        field(66; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(67; "Closed by Currency Code"; Code[10])
        {
            Caption = 'Closed by Currency Code';
            TableRelation = Currency;
        }
        field(68; "Closed by Currency Amount"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Closed by Currency Amount';
        }
        field(73; "Adjusted Currency Factor"; Decimal)
        {
            Caption = 'Adjusted Currency Factor';
            DecimalPlaces = 0 : 15;
        }
        field(74; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DecimalPlaces = 0 : 15;
        }
        field(75; "Original Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry".Amount WHERE ("Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                         "Entry Type" = FILTER ("Initial Entry"),
                                                                         "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Original Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(77; "Remaining Pmt. Disc. Possible"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Remaining Pmt. Disc. Possible';
        }
        field(78; "Pmt. Disc. Tolerance Date"; Date)
        {
            Caption = 'Pmt. Disc. Tolerance Date';
        }
        field(79; "Max. Payment Tolerance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Max. Payment Tolerance';
        }
        field(80; "Last Issued Reminder Level"; Integer)
        {
            Caption = 'Last Issued Reminder Level';
        }
        field(81; "Accepted Payment Tolerance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Accepted Payment Tolerance';
        }
        field(82; "Accepted Pmt. Disc. Tolerance"; Boolean)
        {
            Caption = 'Accepted Pmt. Disc. Tolerance';
        }
        field(83; "Pmt. Tolerance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Tolerance (LCY)';
        }
        field(84; "Amount to Apply"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount to Apply';
        }
        field(85; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            TableRelation = "IC Partner";
        }
        field(86; "Applying Entry"; Boolean)
        {
            Caption = 'Applying Entry';
        }
        field(87; Reversed; Boolean)
        {
            BlankZero = true;
            Caption = 'Reversed';
        }
        field(88; "Reversed by Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Reversed by Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(89; "Reversed Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Reversed Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(90; Prepayment; Boolean)
        {
            Caption = 'Prepayment';
        }
        field(172; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(173; "Applies-to Ext. Doc. No."; Code[35])
        {
            Caption = 'Applies-to Ext. Doc. No.';
        }
        field(288; "Recipient Bank Account"; Code[10])
        {
            Caption = 'Recipient Bank Account';
            TableRelation = "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(289; "Message to Recipient"; Text[140])
        {
            Caption = 'Message to Recipient';
        }
        field(290; "Exported to Payment File"; Boolean)
        {
            Caption = 'Exported to Payment File';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(1200; "Direct Debit Mandate ID"; Code[35])
        {
            Caption = 'Direct Debit Mandate ID';
            TableRelation = "SEPA Direct Debit Mandate" WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(50000; Vertreter; Code[20])
        {
        }
        field(50005; Sachbearbeiter; Code[20])
        {
        }
        field(50010; "Provision %"; Decimal)
        {
        }
        field(50015; "Geschäftsbereich"; Code[20])
        {
        }
        field(50020; KST; Code[20])
        {
            CalcFormula = Lookup ("G/L Entry"."Global Dimension 1 Code" WHERE ("Document No." = FIELD ("Document No.")));
            FieldClass = FlowField;
        }
        field(50021; KTR; Code[20])
        {
            CalcFormula = Lookup ("G/L Entry"."Global Dimension 2 Code" WHERE ("Document No." = FIELD ("Document No."),
                                                                              "Global Dimension 2 Code" = FILTER (<> '')));
            FieldClass = FlowField;
        }
        field(50025; Debitorenname; Text[50])
        {
            CalcFormula = Lookup (Customer.Name WHERE ("No." = FIELD ("Customer No.")));
            FieldClass = FlowField;
        }
        field(50030; Mahnstufe; Integer)
        {
        }
        field(5001900; "Debit Date"; Date)
        {
            Caption = 'Debit Date';
            Description = 'DYNPMT';
        }
        field(5001901; "Date Pre-Notification"; Date)
        {
            Caption = 'Date Pre-Notification';
            Description = 'DYNPMT';
        }
        field(5001902; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            Description = 'DYNPMT';
        }
        field(5001903; "Due Date SEPA"; Date)
        {
            Caption = 'Due Date SEPA';
            Description = 'DYNPMT';
        }
        field(5001904; "Mandate debit type"; Option)
        {
            Caption = 'Mandat Debit type';
            Description = 'DYNPMT';
            OptionMembers = " ",FRST,RCUR,FNAL,OOFF;
        }
        field(5013500; "Advance Payment"; Boolean)
        {
            Caption = 'Advance Payment';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013510; "Advance Payment Old"; Boolean)
        {
            Caption = 'Advance Payment Old';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013520; "Advance Payment No."; Code[20])
        {
            Caption = 'Advance Payment No.';
            Description = 'APTW:DMW15.01:58:01:01';
            TableRelation = IF ("Advance Payment Type" = FILTER (> " " & < "Advance Payment Request Purchase")) "Adv. Payment Plan Header Sale"."No."
            ELSE
            IF ("Advance Payment Type" = FILTER (> "Alloc. Adv. Paym. Req. Sale")) "Adv. Payment Plan Header Pur."."No.";
        }
        field(5013530; "Advance Payment Type"; Option)
        {
            Caption = 'Advance Payment Type';
            Description = 'APTW:DMW15.01:58:01:01';
            OptionCaption = ' ,Advance Payment Request Sale,Advance Payment Received,Advance Payment Debt,Partial Invoice Sale,Closing Invoice Sale,Alloc. Adv. Paym. Received,Alloc. Adv. Paym. Req. Sale,Advance Payment Request Purchase,Advance Payment Made,Advance Payment Receivable,Partial Invoice Purchase,Closing Invoice Purchase,Alloc. Adv. Paym. Made,Alloc. Adv. Paym. Req. Purchase';
            OptionMembers = " ","Advance Payment Request Sale","Advance Payment Received","Advance Payment Debt","Partial Invoice Sale","Closing Invoice Sale","Alloc. Adv. Paym. Received","Alloc. Adv. Paym. Req. Sale","Advance Payment Request Purchase","Advance Payment Made","Advance Payment Receivable","Partial Invoice Purchase","Closing Invoice Purchase","Alloc. Adv. Paym. Made","Alloc. Adv. Paym. Req. Purchase";
        }
        field(5013540; "Adv. Payment Sequential No."; Integer)
        {
            Caption = 'Adv. Payment Sequential No.';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013550; Secured; Boolean)
        {
            Caption = 'Secured';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013560; Allocate; Boolean)
        {
            Caption = 'Allocate';
            Description = 'APTW:DMW15.01:58:01:01';
            InitValue = true;
        }
        field(5013570; "Allocation Amount"; Decimal)
        {
            Caption = 'Allocation Amount';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013580; "Related to Adv. Paym. Entry"; Integer)
        {
            Caption = 'Related to Advance Payment Entry';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013595; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'APTW:DMW15.01:58:01:01';
            TableRelation = Job;
        }
        field(5157802; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
            Description = 'EA';
            Editable = false;
        }
        field(5157803; "Original Pmt. Discount %"; Decimal)
        {
            Caption = 'Original Pmt. Discount %';
            Description = 'EA';
            Editable = false;
        }
        field(5157804; "Orig. Pmt. Disc.Possible (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Pmt. Disc. Possible (LCY)';
            Description = 'EA';
            Editable = false;
        }
        field(5157805; "Reopen-to ID"; Code[20])
        {
            Caption = 'Reopen-to ID';
            Description = 'EA';
        }
        field(5157806; Payback; Boolean)
        {
            Caption = 'Payback';
            Description = 'EA';
            Editable = false;
        }
        field(5157807; "Posted on"; Date)
        {
            Caption = 'Posted on';
            Description = 'EA';
        }
        field(5157842; "Association No."; Code[20])
        {
            Caption = 'Association No.';
            Description = 'EXT';
        }
        field(5157862; "Entry Comment"; Boolean)
        {
            CalcFormula = Exist ("Ledger Entry Comment Line" WHERE ("Table Name" = CONST (Customer),
                                                                   "No." = FIELD ("Customer No."),
                                                                   "Entry No." = FIELD ("Entry No.")));
            Caption = 'Entry Comment';
            Description = 'VAL';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157863; "Search Amount (LCY)"; Decimal)
        {
            Caption = 'Search Amount (LCY)';
            Description = 'VAL';
        }
        field(5157895; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
            Description = 'PMT';
            TableRelation = "Bank Account Mandate"."Mandate ID" WHERE ("Account Type" = CONST (Customer),
                                                                       "Account No." = FIELD ("Customer No."));
        }
        field(5483207; "Installment Show Control"; Boolean)
        {
            Caption = 'Installment Show Control';
            Description = 'INS';
        }
        field(5483208; "Installment Entry"; Boolean)
        {
            Caption = 'Installment Entry';
            Description = 'INS';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Customer No.", "Posting Date", "Currency Code")
        {
            SumIndexFields = "Sales (LCY)", "Profit (LCY)", "Inv. Discount (LCY)";
        }
        key(Key3; "Customer No.", "Currency Code", "Posting Date")
        {
            Enabled = false;
        }
        key(Key4; "Document No.")
        {
        }
        key(Key5; "External Document No.")
        {
        }
        key(Key6; "Customer No.", Open, Positive, "Due Date", "Currency Code")
        {
        }
        key(Key7; Open, "Due Date")
        {
        }
        key(Key8; "Document Type", "Customer No.", "Posting Date", "Currency Code")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Sales (LCY)", "Profit (LCY)", "Inv. Discount (LCY)";
        }
        key(Key9; "Salesperson Code", "Posting Date")
        {
        }
        key(Key10; "Closed by Entry No.")
        {
        }
        key(Key11; "Transaction No.")
        {
        }
        key(Key12; "Customer No.", Open, Positive, "Calculate Interest", "Due Date")
        {
            Enabled = false;
        }
        key(Key13; "Customer No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "Currency Code")
        {
            Enabled = false;
            SumIndexFields = "Sales (LCY)", "Profit (LCY)", "Inv. Discount (LCY)";
        }
        key(Key14; "Customer No.", Open, "Global Dimension 1 Code", "Global Dimension 2 Code", Positive, "Due Date", "Currency Code")
        {
            Enabled = false;
        }
        key(Key15; Open, "Global Dimension 1 Code", "Global Dimension 2 Code", "Due Date")
        {
            Enabled = false;
        }
        key(Key16; "Document Type", "Customer No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "Currency Code")
        {
            Enabled = false;
        }
        key(Key17; "Customer No.", "Applies-to ID", Open, Positive, "Due Date")
        {
        }
        key(Key18; "Document Type", "External Document No.", "Customer No.")
        {
        }
        key(Key19; "Customer No.", "Document No.")
        {
        }
        key(Key20; "Due Date SEPA", Open, Positive, "Customer No.", "Currency Code")
        {
        }
        key(Key21; Open, "Mandate No.")
        {
        }
        key(Key22; "Customer No.", "Document Type", Open)
        {
        }
        key(Key23; "Global Dimension 2 Code", "Document Type")
        {
        }
        key(Key24; "Customer No.", "Advance Payment", "Advance Payment No.", "Advance Payment Type")
        {
        }
        key(Key25; "Document No.", "Document Type", "Customer No.")
        {
        }
        key(Key26; Open, "Customer No.", "Document Date")
        {
        }
        key(Key27; Open, "Document No.", "Customer No.")
        {
        }
        key(Key28; "Customer No.", "Reopen-to ID", Open)
        {
        }
        key(Key29; "Customer No.", "Posting Date")
        {
        }
        key(Key30; "Association No.", Open, "Document Date")
        {
        }
        key(Key31; "Association No.", Open, "Document No.")
        {
        }
        key(Key32; "Document Date", "Document No.")
        {
        }
        key(Key33; "Document No.", "Customer No.")
        {
        }
        key(Key34; "Search Amount (LCY)")
        {
        }
        key(Key35; "Association No.", "Customer No.", Open, Positive, "Due Date", "Currency Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, "Customer No.", "Posting Date", "Document Type", "Document No.")
        {
        }
        fieldgroup(Brick; "Document No.", Description, "Remaining Amt. (LCY)", "Due Date")
        {
        }
    }
}

