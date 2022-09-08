table 17 "G/L Entry"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - New Field added
    // GLOE 01.11.08   Gen. Ledger Open Entries
    //                 - New Fields added
    //                 - New Keys added
    // VAL  01.11.08   Views and Lists
    //                 - New Field added
    // TAX  01.11.08   Tax and Balance
    //                 - New Field added
    // -----------------------------------------------------
    // PR01 PRODUKT.01 01.09.11 DENUE.ALAN Integration cc|project
    //                                     New Key:
    //                                     - Job No.,Job Line Unique No.,Posting Date,WIP Posting
    // 
    // :DMW14.03:1:01 #New field for posting BOM: "BOM Document Type"
    //            #New key with all new fields           BOM Document No.
    //            #                                      BOM Document Line No.
    //            #                                      BOM lfd. Nr.
    //            #Fields for calculation of posted BOM's
    //            #                                      Calculation Group
    //            #                                      belongs to CalcGroup blank
    //            #               New key for calculation of posted Construction:
    //            #               BOM Document Type,BOM Document No.,Calculation Group,Belongs to Calc.option blank
    // APTW:DMW15.01:58:01:01 #Advance Payment Management
    // APTW17.00.00.01:A001 05.08.2013 DEMSR.SSZ
    //   #Key was missed
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // 
    // #DMW16.00.03.01:A007 17.11.11 DEMSR.SSZ
    //   #Fields and Key from :DMW13.60:1:02 deleted
    // #DMW16.00.03.03:A007 27.07.12 DEMSR.SSZ
    //   #Corrected Table Relation at field 5013380 "BOM Entry No."
    // 
    // #APTW:DMW17.10:T100 28.10.13 DEMSR.KHS
    //   Fill Advance Payment fields
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn.OGL  25.02.2015  OGL      akq        Implementing dynamo OGL
    // ================================================================================

    Caption = 'G/L Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
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
        field(10; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST("Bank Account")) "Bank Account"
            ELSE
            IF ("Bal. Account Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Bal. Account Type" = CONST("IC Partner")) "IC Partner";
        }
        field(17; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(23; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(24; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
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
        field(29; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
        }
        field(30; "Prior-Year Entry"; Boolean)
        {
            Caption = 'Prior-Year Entry';
        }
        field(41; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(42; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(43; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(45; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
        }
        field(46; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(47; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(48; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(49; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(50; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(51; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner";
        }
        field(52; "Transaction No."; Integer)
        {
            Caption = 'Transaction No.';
        }
        field(53; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
        }
        field(54; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
        }
        field(55; "Document Date"; Date)
        {
            Caption = 'Document Date';
            ClosingDates = true;
        }
        field(56; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(57; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = " ",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(58; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST(Customer)) Customer
            ELSE
            IF ("Source Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST("Bank Account")) "Bank Account"
            ELSE
            IF ("Source Type" = CONST("Fixed Asset")) "Fixed Asset";
        }
        field(59; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(60; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(61; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(62; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(63; "Use Tax"; Boolean)
        {
            Caption = 'Use Tax';
        }
        field(64; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(65; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(68; "Additional-Currency Amount"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Additional-Currency Amount';
        }
        field(69; "Add.-Currency Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Add.-Currency Debit Amount';
        }
        field(70; "Add.-Currency Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Add.-Currency Credit Amount';
        }
        field(71; "Close Income Statement Dim. ID"; Integer)
        {
            Caption = 'Close Income Statement Dim. ID';
        }
        field(72; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            TableRelation = "IC Partner";
        }
        field(73; Reversed; Boolean)
        {
            Caption = 'Reversed';
        }
        field(74; "Reversed by Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Reversed by Entry No.';
            TableRelation = "G/L Entry";
        }
        field(75; "Reversed Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Reversed Entry No.';
            TableRelation = "G/L Entry";
        }
        field(76; "G/L Account Name"; Text[50])
        {
            CalcFormula = Lookup("G/L Account".Name WHERE("No." = FIELD("G/L Account No.")));
            Caption = 'G/L Account Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5400; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
        }
        field(5600; "FA Entry Type"; Option)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Entry Type';
            OptionCaption = ' ,Fixed Asset,Maintenance';
            OptionMembers = " ","Fixed Asset",Maintenance;
        }
        field(5601; "FA Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'FA Entry No.';
            TableRelation = IF ("FA Entry Type" = CONST("Fixed Asset")) "FA Ledger Entry"
            ELSE
            IF ("FA Entry Type" = CONST(Maintenance)) "Maintenance Ledger Entry";
        }
        field(50000; Dimesionscode; Code[10])
        {
            CalcFormula = Lookup("Dimension Set Entry"."Dimension Value Code" WHERE("Dimension Code" = FILTER('INTERNER-AUFTRAG'),
                                                                                     "Dimension Set ID" = FIELD("Dimension Set ID")));
            FieldClass = FlowField;
        }
        field(5013350; "BOM Document Type"; Option)
        {
            Caption = 'BOM Document Type';
            Description = ':DMW14.03:1:01';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,Document BOM Line,Construction Line';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,"Document BOM Line","Construction Line";
        }
        field(5013360; "BOM Document No."; Code[20])
        {
            Caption = 'BOM Document No.';
            Description = ':DMW14.03:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER(< "Construction Line")) "Sales Header"."No." WHERE("Document Type" = FIELD("BOM Document Type"))
            ELSE
            IF ("BOM Document Type" = FILTER("Construction Line")) "Construction Header"."No." WHERE("No." = FIELD("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013370; "BOM Document Line No."; Integer)
        {
            Caption = 'BOM Document Line No.';
            Description = ':DMW14.03:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER(< "Construction Line")) "Sales Line"."Line No." WHERE("Document Type" = FIELD("BOM Document Type"),
                                                                                                                 "Document No." = FIELD("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013380; "BOM Entry No."; Integer)
        {
            Caption = 'BOM Entry No.';
            Description = ':DMW14.03:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER("Construction Line")) "Construction Line"."Entry No." WHERE("Document No." = FIELD("BOM Document No."));
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
            TableRelation = IF ("Advance Payment Type" = FILTER(> " " & < "Advance Payment Request Purchase")) "Adv. Payment Plan Header Sale"."No."
            ELSE
            IF ("Advance Payment Type" = FILTER(> "Alloc. Adv. Paym. Req. Sale")) "Adv. Payment Plan Header Pur."."No.";
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
        field(5013560; "Realized VAT"; Boolean)
        {
            Caption = 'Realized VAT';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013570; "Opposite Sign"; Boolean)
        {
            Caption = 'Opposite Sign';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013580; "Related to Adv. Paym. Entry"; Integer)
        {
            Caption = 'Related to Advance Payment Entry';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5013590; "Advance Payment Allocation No."; Integer)
        {
            Caption = 'Advance Payment Allocation No.';
            Description = 'APTW:DMW15.01:58:01:01';
        }
        field(5157802; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
            Description = 'EA';
            Editable = false;
        }
        field(5157803; "Orig. Currency Code"; Code[10])
        {
            Caption = 'Orig. Currency Code';
            Description = 'EA';
            Editable = false;
        }
        field(5157804; "Original Amount (FCY)"; Decimal)
        {
            Caption = 'Original Amount (FCY)';
            Description = 'EA';
            Editable = false;
        }
        field(5157805; "Posted at"; Date)
        {
            Caption = 'Posted on';
            Description = 'EA';
        }
        field(5157806; "Applying Entry_OPP"; Boolean)
        {
            Caption = 'Applying Entry';
            Description = 'GLOE';
        }
        field(5157807; "Amount to Apply_OPP"; Decimal)
        {
            Caption = 'Amount to Apply';
            Description = 'GLOE';
        }
        field(5157852; "Date Filter_OPP"; Date)
        {
            Caption = 'Date Filter';
            Description = 'GLOE';
            FieldClass = FlowFilter;
        }
        field(5157853; "Remaining Amount_OPP"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Gen. Ledg. Entry".Amount WHERE("Gen. Ledger Entry No." = FIELD("Entry No."),
                                                                        "Posting Date" = FIELD("Date Filter_OPP")));
            Caption = 'Remaining Amount';
            Description = 'GLOE';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157854; "Applies-to Doc. Type_OPP"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            Description = 'GLOE';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(5157855; "Applies-to Doc. No._OPP"; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            Description = 'GLOE';
        }
        field(5157856; Open_OPP; Boolean)
        {
            Caption = 'Open';
            Description = 'GLOE';
        }
        field(5157857; "Closed by Entry No._OPP"; Integer)
        {
            Caption = 'Closed by Entry No.';
            Description = 'GLOE';
            TableRelation = "G/L Entry";
        }
        field(5157858; "Closed at Date_OPP"; Date)
        {
            Caption = 'Closed at Date';
            Description = 'GLOE';
        }
        field(5157859; "Closed by Amount_OPP"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Closed by Amount';
            Description = 'GLOE';
        }
        field(5157860; "Applies-to ID_OPP"; Code[50])
        {
            Caption = 'Applies-to ID';
            Description = 'GLOE';
        }
        field(5157861; Positive_OPP; Boolean)
        {
            Caption = 'Positive';
            Description = 'GLOE';
        }
        field(5157862; "Entry Comment"; Boolean)
        {
            CalcFormula = Exist("Ledger Entry Comment Line" WHERE("Table Name" = CONST("G/L Account"),
                                                                   "No." = FIELD("G/L Account No."),
                                                                   "Entry No." = FIELD("Entry No.")));
            Caption = 'Entry Comment';
            Description = 'VAL';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157882; "Invoice Entrance Date"; Date)
        {
            Caption = 'Document Entrance Date';
            Description = 'TAX';
        }
        field(5292332; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE("Job No." = FIELD("Job No."),
                                                                       "Unique No." = FIELD("Job Line Unique No."));
        }
        field(5292333; "WIP Posting"; Boolean)
        {
            Caption = 'WIP Posting';
            Editable = false;
        }
        field(5370525; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(5370526; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(5370527; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(5370528; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(5370529; Positive; Boolean)
        {
            Caption = 'Positive';
        }
        field(5370530; "Closed by Entry No."; Integer)
        {
            Caption = 'Closed by Entry No.';
            TableRelation = "G/L Entry";
        }
        field(5370531; "Closed at Date"; Date)
        {
            Caption = 'Closed at Date';
        }
        field(5370532; "Closed by Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Closed by Amount';
        }
        field(5370533; "Applies-to ID"; Code[50])
        {
            Caption = 'Applies-to ID';
        }
        field(5370534; "Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed G/L Entry".Amount WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                 "Posting Date" = FIELD("Date Filter")));
            Caption = 'Remaining Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370535; "Add.-Currency Rem. Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed G/L Entry"."Additional Currency Amount" WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                                       "Posting Date" = FIELD("Date Filter")));
            Caption = 'Remaining Amt. (ACY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370536; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5370537; "Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed G/L Entry"."Amount (FCY)" WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                         "Entry Type" = FILTER("Initial Entry" | "Realized Loss" | "Realized Gain"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "OE Switch" = FILTER("Switch to OE" | " ")));
            Caption = 'Amount (FCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370538; "Closed by Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Closed by Amount (FCY)';
            Editable = false;
        }
        field(5370539; "Debit Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed G/L Entry"."Debit Amount (FCY)" WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                               "Entry Type" = FILTER(<> Application),
                                                                               "Posting Date" = FIELD("Date Filter")));
            Caption = 'Debit Amount (FCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370540; "Credit Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed G/L Entry"."Credit Amount (FCY)" WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                                "Entry Type" = FILTER(<> Application),
                                                                                "Posting Date" = FIELD("Date Filter")));
            Caption = 'Credit Amount (FCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370541; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DecimalPlaces = 0 : 15;
        }
        field(5370542; "Remaining Amt. (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed G/L Entry"."Amount (FCY)" WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                         "Posting Date" = FIELD("Date Filter")));
            Caption = 'Restbetrag (FW)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370543; "Applying Entry"; Boolean)
        {
            Caption = 'Applying Entry';
        }
        field(5370544; "Amount to Apply"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount to Apply';
        }
        field(5370545; "Original Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed G/L Entry".Amount WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                 "Entry Type" = CONST("Initial Entry"),
                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                 "OE Switch" = FILTER("Switch to OE" | " ")));
            Caption = 'Original Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370546; "Original Amt. (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed G/L Entry"."Amount (FCY)" WHERE("G/L Entry No." = FIELD("Entry No."),
                                                                         "Entry Type" = CONST("Initial Entry"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "OE Switch" = FILTER("Switch to OE" | " ")));
            Caption = 'Original Amt. (FCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370547; "Amount to Apply (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount to Apply (FCY)';
        }
        field(5370548; "OE Application Post"; Boolean)
        {
            Caption = 'OE Application post';
        }
        field(5370549; "Adjusted Currency Factor"; Decimal)
        {
            Caption = 'Adjusted Currency Factor';
            DecimalPlaces = 0 : 15;
        }
        field(5370550; "dynamo-Created Entry"; Boolean)
        {
            Caption = 'dynamo-Created Entry';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "G/L Account No.", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount", "VAT Amount";
        }
        key(Key3; "G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount", "VAT Amount";
        }
        key(Key4; "G/L Account No.", "Business Unit Code", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount";
        }
        key(Key5; "G/L Account No.", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date")
        {
            SumIndexFields = Amount, "Debit Amount", "Credit Amount", "Additional-Currency Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount";
        }
        key(Key6; "Document No.", "Posting Date")
        {
        }
        key(Key7; "Transaction No.")
        {
        }
        key(Key8; "IC Partner Code")
        {
        }
        key(Key9; "G/L Account No.", "Job No.", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key10; "Posting Date", "G/L Account No.", "Dimension Set ID")
        {
            SumIndexFields = Amount;
        }
        key(Key11; "G/L Account No.", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Close Income Statement Dim. ID", "Posting Date")
        {
        }

        key(Key13; "Posting Date", "Document Type", "Document No.", "Transaction No.", "Advance Payment", "Advance Payment Old", "Advance Payment No.", "Advance Payment Type", "Adv. Payment Sequential No.")
        {
            SumIndexFields = Amount, "Additional-Currency Amount";
        }
        key(Key14; "Job No.", "Job Line Unique No.", "Posting Date", "WIP Posting")
        {
        }
        key(Key15; "G/L Account No.", "Applies-to ID_OPP", Open_OPP, Positive_OPP)
        {
        }
        key(Key16; "Document No.", "Document Type", "G/L Account No.")
        {
        }
        key(Key17; "Closed by Entry No._OPP")
        {
        }
        key(Key18; "G/L Account No.", Open_OPP, "Posting Date")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, "G/L Account No.", "Posting Date", "Document Type", "Document No.")
        {
        }
    }
}

