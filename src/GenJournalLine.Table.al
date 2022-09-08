table 81 "Gen. Journal Line"
{
    // P0004 15.02.16 DEBIE.ARE NAV2015 Modus changes
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // :DMW14.03:1:01 #Neue Felder für Stücklistenbuchungen  BOM Document Type
    //                #                                      BOM Document No.
    //                #                                      BOM Document Line No.
    //                #                                      BOM lfd. Nr.
    // :DMW14.04:1:01 #corrected Table Relation in Field "Calcluation Group"
    // :DMW15.01.00.01:6:01 #Completed Captions
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.03.03:A007 27.07.12 DEMSR.SSZ
    //   #Corrected Table Relation at field 5013380 "BOM Entry No."
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // 
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW17.10.00.03:T500 07.08.2014  DEDRS.RKRA  Copy dimensions from application entry
    // 
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // dyn.OGL  25.02.2015  OGL      akq        Implementing dynamo OGL
    // ================================================================================
    // 
    // +--------------------------------------------------------------+
    // |                  Copyright MODUS Consult AG                  |
    // |                          Customizing                         |
    // +--------------------------------------------------------------+
    // Modul     Date      User      Description
    // MC        04.11.15  DT        Fields 50000/50005/50010 Vertreter/Sachbearbeiter/Provision
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.11.08   - New Fields added
    //                 - New Keys added
    //                   ID Applied-Entry
    //                   Pmt. Import Entry No.
    //                 - New Functions
    // INS  24.11.16       OPplus Installments
    // FA   01.01.17   Fixed Assets
    //                 - New Fields Scrapping and "Payment Discount FA Possible %" added
    //                 - Function GetFAVATSetup changed
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001523  22.03.2017  gbedv.ar    Correction Validate and Lookup "Applies-to Doc. No."

    Caption = 'Gen. Journal Line';
    Permissions = TableData "Data Exch. Field" = rimd;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner";
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account" WHERE ("Account Type" = CONST (Posting),
                                                                                          Blocked = CONST (false))
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Account Type" = CONST ("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Account Type" = CONST ("IC Partner")) "IC Partner";
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
        field(10; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(11; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account" WHERE ("Account Type" = CONST (Posting),
                                                                                               Blocked = CONST (false))
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Bal. Account Type" = CONST ("IC Partner")) "IC Partner";
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(13; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(14; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
        }
        field(15; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
        }
        field(16; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(17; "Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance (LCY)';
            Editable = false;
        }
        field(18; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(19; "Sales/Purch. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales/Purch. (LCY)';
        }
        field(20; "Profit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Profit (LCY)';
        }
        field(21; "Inv. Discount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Discount (LCY)';
        }
        field(22; "Bill-to/Pay-to No."; Code[20])
        {
            Caption = 'Bill-to/Pay-to No.';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor;
        }
        field(23; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Posting Group"
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Posting Group"
            ELSE
            IF ("Account Type" = CONST ("Fixed Asset")) "FA Posting Group";
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
        field(26; "Salespers./Purch. Code"; Code[10])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(29; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(30; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
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
        field(42; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(43; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(44; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(45; "VAT Posting"; Option)
        {
            Caption = 'VAT Posting';
            Editable = false;
            OptionCaption = 'Automatic VAT Entry,Manual VAT Entry';
            OptionMembers = "Automatic VAT Entry","Manual VAT Entry";
        }
        field(47; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
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
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(52; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(53; "Recurring Method"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Method';
            OptionCaption = ' ,F  Fixed,V  Variable,B  Balance,RF Reversing Fixed,RV Reversing Variable,RB Reversing Balance';
            OptionMembers = " ","F  Fixed","V  Variable","B  Balance","RF Reversing Fixed","RV Reversing Variable","RB Reversing Balance";
        }
        field(54; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(55; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
        }
        field(56; "Allocated Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Gen. Jnl. Allocation".Amount WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                   "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                   "Journal Line No." = FIELD ("Line No.")));
            Caption = 'Allocated Amt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(58; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(59; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(60; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(61; "EU 3-Party Trade"; Boolean)
        {
            Caption = 'EU 3-Party Trade';
            Editable = false;
        }
        field(62; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            InitValue = true;
        }
        field(63; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset,IC Partner';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset","IC Partner";
        }
        field(64; "Bal. Gen. Posting Type"; Option)
        {
            Caption = 'Bal. Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(65; "Bal. Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Bal. Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(66; "Bal. Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Bal. Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(67; "Bal. VAT Calculation Type"; Option)
        {
            Caption = 'Bal. VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(68; "Bal. VAT %"; Decimal)
        {
            Caption = 'Bal. VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(69; "Bal. VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Amount';
        }
        field(70; "Bank Payment Type"; Option)
        {
            AccessByPermission = TableData "Bank Account" = R;
            Caption = 'Bank Payment Type';
            OptionCaption = ' ,Computer Check,Manual Check,Clearing';
            OptionMembers = " ","Computer Check","Manual Check",Clearing;
        }
        field(71; "VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount';
        }
        field(72; "Bal. VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Base Amount';
        }
        field(73; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(75; "Check Printed"; Boolean)
        {
            AccessByPermission = TableData "Check Ledger Entry" = R;
            Caption = 'Check Printed';
            Editable = false;
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
        field(80; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(82; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(83; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(84; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(85; "Use Tax"; Boolean)
        {
            Caption = 'Use Tax';
        }
        field(86; "Bal. Tax Area Code"; Code[20])
        {
            Caption = 'Bal. Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(87; "Bal. Tax Liable"; Boolean)
        {
            Caption = 'Bal. Tax Liable';
        }
        field(88; "Bal. Tax Group Code"; Code[10])
        {
            Caption = 'Bal. Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(89; "Bal. Use Tax"; Boolean)
        {
            Caption = 'Bal. Use Tax';
        }
        field(90; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(91; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(92; "Bal. VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'Bal. VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(93; "Bal. VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'Bal. VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(95; "Additional-Currency Posting"; Option)
        {
            Caption = 'Additional-Currency Posting';
            Editable = false;
            OptionCaption = 'None,Amount Only,Additional-Currency Amount Only';
            OptionMembers = "None","Amount Only","Additional-Currency Amount Only";
        }
        field(98; "FA Add.-Currency Factor"; Decimal)
        {
            Caption = 'FA Add.-Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(99; "Source Currency Code"; Code[10])
        {
            Caption = 'Source Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(100; "Source Currency Amount"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Source Currency Amount';
            Editable = false;
        }
        field(101; "Source Curr. VAT Base Amount"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Source Curr. VAT Base Amount';
            Editable = false;
        }
        field(102; "Source Curr. VAT Amount"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Source Curr. VAT Amount';
            Editable = false;
        }
        field(103; "VAT Base Discount %"; Decimal)
        {
            Caption = 'VAT Base Discount %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(104; "VAT Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount (LCY)';
            Editable = false;
        }
        field(105; "VAT Base Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount (LCY)';
            Editable = false;
        }
        field(106; "Bal. VAT Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Amount (LCY)';
            Editable = false;
        }
        field(107; "Bal. VAT Base Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Base Amount (LCY)';
            Editable = false;
        }
        field(108; "Reversing Entry"; Boolean)
        {
            Caption = 'Reversing Entry';
            Editable = false;
        }
        field(109; "Allow Zero-Amount Posting"; Boolean)
        {
            Caption = 'Allow Zero-Amount Posting';
            Editable = false;
        }
        field(110; "Ship-to/Order Address Code"; Code[10])
        {
            Caption = 'Ship-to/Order Address Code';
            TableRelation = IF ("Account Type" = CONST (Customer)) "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Bill-to/Pay-to No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Order Address".Code WHERE ("Vendor No." = FIELD ("Bill-to/Pay-to No."))
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Bill-to/Pay-to No."))
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) "Order Address".Code WHERE ("Vendor No." = FIELD ("Bill-to/Pay-to No."));
        }
        field(111; "VAT Difference"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Difference';
            Editable = false;
        }
        field(112; "Bal. VAT Difference"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Difference';
            Editable = false;
        }
        field(113; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(114; "IC Direction"; Option)
        {
            Caption = 'IC Direction';
            OptionCaption = 'Outgoing,Incoming';
            OptionMembers = Outgoing,Incoming;
        }
        field(116; "IC Partner G/L Acc. No."; Code[20])
        {
            Caption = 'IC Partner G/L Acc. No.';
            TableRelation = "IC G/L Account";
        }
        field(117; "IC Partner Transaction No."; Integer)
        {
            Caption = 'IC Partner Transaction No.';
            Editable = false;
        }
        field(118; "Sell-to/Buy-from No."; Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor;
        }
        field(119; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(120; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(121; Prepayment; Boolean)
        {
            Caption = 'Prepayment';
        }
        field(122; "Financial Void"; Boolean)
        {
            Caption = 'Financial Void';
            Editable = false;
        }
        field(165; "Incoming Document Entry No."; Integer)
        {
            Caption = 'Incoming Document Entry No.';
            TableRelation = "Incoming Document";
        }
        field(170; "Creditor No."; Code[20])
        {
            Caption = 'Creditor No.';
            Numeric = true;
        }
        field(171; "Payment Reference"; Code[50])
        {
            Caption = 'Payment Reference';
            Numeric = true;
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
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Bank Account".Code WHERE ("Vendor No." = FIELD ("Account No."))
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Bal. Account No."))
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) "Vendor Bank Account".Code WHERE ("Vendor No." = FIELD ("Bal. Account No."));
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
        field(291; "Has Payment Export Error"; Boolean)
        {
            CalcFormula = Exist ("Payment Jnl. Export Error Text" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                        "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                        "Journal Line No." = FIELD ("Line No.")));
            Caption = 'Has Payment Export Error';
            Editable = false;
            FieldClass = FlowField;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(827; "Credit Card No."; Code[20])
        {
            Caption = 'Credit Card No.';
            TableRelation = IF ("Account Type" = CONST (Customer),
                                "Document Type" = FILTER (Payment | Refund),
                                "Bal. Account Type" = CONST ("Bank Account")) "DO Payment Credit Card" WHERE ("Customer No." = FIELD ("Account No."));
        }
        field(1001; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(1002; "Job Unit Price (LCY)"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 2;
            Caption = 'Job Unit Price (LCY)';
            Editable = false;
        }
        field(1003; "Job Total Price (LCY)"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Total Price (LCY)';
            Editable = false;
        }
        field(1004; "Job Quantity"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            Caption = 'Job Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(1005; "Job Unit Cost (LCY)"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 2;
            Caption = 'Job Unit Cost (LCY)';
            Editable = false;
        }
        field(1006; "Job Line Discount %"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Line Discount %';
        }
        field(1007; "Job Line Disc. Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Job Line Disc. Amount (LCY)';
            Editable = false;
        }
        field(1008; "Job Unit Of Measure Code"; Code[10])
        {
            Caption = 'Job Unit Of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(1009; "Job Line Type"; Option)
        {
            AccessByPermission = TableData Job = R;
            Caption = 'Job Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(1010; "Job Unit Price"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 2;
            Caption = 'Job Unit Price';
        }
        field(1011; "Job Total Price"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Total Price';
            Editable = false;
        }
        field(1012; "Job Unit Cost"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 2;
            Caption = 'Job Unit Cost';
            Editable = false;
        }
        field(1013; "Job Total Cost"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Total Cost';
            Editable = false;
        }
        field(1014; "Job Line Discount Amount"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Line Discount Amount';
        }
        field(1015; "Job Line Amount"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Line Amount';
        }
        field(1016; "Job Total Cost (LCY)"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Total Cost (LCY)';
            Editable = false;
        }
        field(1017; "Job Line Amount (LCY)"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            AutoFormatType = 1;
            Caption = 'Job Line Amount (LCY)';
            Editable = false;
        }
        field(1018; "Job Currency Factor"; Decimal)
        {
            Caption = 'Job Currency Factor';
        }
        field(1019; "Job Currency Code"; Code[10])
        {
            Caption = 'Job Currency Code';
        }
        field(1020; "Job Planning Line No."; Integer)
        {
            AccessByPermission = TableData Job = R;
            BlankZero = true;
            Caption = 'Job Planning Line No.';
        }
        field(1030; "Job Remaining Qty."; Decimal)
        {
            AccessByPermission = TableData Job = R;
            Caption = 'Job Remaining Qty.';
            DecimalPlaces = 0 : 5;
        }
        field(1200; "Direct Debit Mandate ID"; Code[35])
        {
            Caption = 'Direct Debit Mandate ID';
            TableRelation = IF ("Account Type" = CONST (Customer)) "SEPA Direct Debit Mandate" WHERE ("Customer No." = FIELD ("Account No."));
        }
        field(1220; "Data Exch. Entry No."; Integer)
        {
            Caption = 'Data Exch. Entry No.';
            Editable = false;
            TableRelation = "Data Exch.";
        }
        field(1221; "Payer Information"; Text[50])
        {
            Caption = 'Payer Information';
        }
        field(1222; "Transaction Information"; Text[100])
        {
            Caption = 'Transaction Information';
        }
        field(1223; "Data Exch. Line No."; Integer)
        {
            Caption = 'Data Exch. Line No.';
            Editable = false;
        }
        field(1224; "Applied Automatically"; Boolean)
        {
            Caption = 'Applied Automatically';
        }
        field(1700; "Deferral Code"; Code[10])
        {
            Caption = 'Deferral Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(1701; "Deferral Line No."; Integer)
        {
            Caption = 'Deferral Line No.';
        }
        field(5050; "Campaign No."; Code[20])
        {
            Caption = 'Campaign No.';
            TableRelation = Campaign;
        }
        field(5400; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Editable = false;
        }
        field(5600; "FA Posting Date"; Date)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Posting Date';
        }
        field(5601; "FA Posting Type"; Option)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Posting Type';
            OptionCaption = ' ,Acquisition Cost,Depreciation,Write-Down,Appreciation,Custom 1,Custom 2,Disposal,Maintenance';
            OptionMembers = " ","Acquisition Cost",Depreciation,"Write-Down",Appreciation,"Custom 1","Custom 2",Disposal,Maintenance;
        }
        field(5602; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            TableRelation = "Depreciation Book";
        }
        field(5603; "Salvage Value"; Decimal)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            AutoFormatType = 1;
            Caption = 'Salvage Value';
        }
        field(5604; "No. of Depreciation Days"; Integer)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            BlankZero = true;
            Caption = 'No. of Depreciation Days';
        }
        field(5605; "Depr. until FA Posting Date"; Boolean)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'Depr. until FA Posting Date';
        }
        field(5606; "Depr. Acquisition Cost"; Boolean)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'Depr. Acquisition Cost';
        }
        field(5609; "Maintenance Code"; Code[10])
        {
            Caption = 'Maintenance Code';
            TableRelation = Maintenance;
        }
        field(5610; "Insurance No."; Code[20])
        {
            Caption = 'Insurance No.';
            TableRelation = Insurance;
        }
        field(5611; "Budgeted FA No."; Code[20])
        {
            Caption = 'Budgeted FA No.';
            TableRelation = "Fixed Asset";
        }
        field(5612; "Duplicate in Depreciation Book"; Code[10])
        {
            Caption = 'Duplicate in Depreciation Book';
            TableRelation = "Depreciation Book";
        }
        field(5613; "Use Duplication List"; Boolean)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'Use Duplication List';
        }
        field(5614; "FA Reclassification Entry"; Boolean)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Reclassification Entry';
        }
        field(5615; "FA Error Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'FA Error Entry No.';
            TableRelation = "FA Ledger Entry";
        }
        field(5616; "Index Entry"; Boolean)
        {
            Caption = 'Index Entry';
        }
        field(5617; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
        }
        field(5618; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(50000; Vertreter; Code[20])
        {
        }
        field(50001; Zahlungsbedingung; Code[50])
        {
            CalcFormula = Lookup ("Payment Terms".Description WHERE (Code = FIELD ("Payment Terms Code")));
            FieldClass = FlowField;
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
        field(50020; ZahlungbedingungenAusgleich; Code[10])
        {
            CalcFormula = Lookup ("Sales Invoice Header"."Payment Terms Code" WHERE ("No." = FIELD ("Applies-to Doc. No.")));
            FieldClass = FlowField;
        }
        field(50025; "UST-ID Stamm"; Text[20])
        {
            CalcFormula = Lookup (Customer."VAT Registration No." WHERE ("No." = FIELD ("Account No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50401; d3_doc_id; Code[20])
        {
            CalcFormula = Lookup ("d3 Journal".d3_doc_id WHERE ("Source ID" = FIELD ("Applies-to Doc. No.")));
            Caption = 'd3 Dokument ID';
            Description = 'Anbindung an D3';
            Editable = true;
            FieldClass = FlowField;
        }
        field(5001900; "Transit Entry"; Boolean)
        {
            Caption = 'Transit Entry';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001901; "Payment File created"; Boolean)
        {
            Caption = 'Payment File created';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001902; "Payment Type"; Option)
        {
            Caption = 'Payment Type';
            Description = 'DYNPMT';
            OptionCaption = ' ,collection,,,direct debiting';
            OptionMembers = " ",collection,,,"direct debiting";
        }
        field(5001913; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
            Description = 'DYNPMT';
        }
        field(5001940; "Debit Date"; Date)
        {
            Caption = 'Debit Date';
            Description = 'DYNPMT';
        }
        field(5001941; "Date Pre-Notification"; Date)
        {
            Caption = 'Date Pre-Notification';
            Description = 'DYNPMT';
        }
        field(5001942; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            Description = 'DYNPMT';
            TableRelation = Mandate;
        }
        field(5001943; "Mandate invalid"; Boolean)
        {
            Caption = 'Mandate invalid';
            Description = 'DYNPMT';
        }
        field(5001944; "Debit Date expired"; Boolean)
        {
            Caption = 'Debit Date expired';
            Description = 'DYNPMT';
        }
        field(5001945; "Due Date SEPA"; Date)
        {
            Caption = 'Due Date SEPA';
            Description = 'DYNPMT';
        }
        field(5001946; "Mandate type"; Option)
        {
            Caption = 'Mandate type';
            Description = 'DYNPMT';
            OptionCaption = ' ,Core,B2B,Cor1';
            OptionMembers = " ",Core,B2B,Cor1;
        }
        field(5001947; "Creation Date Payment File"; Date)
        {
            Caption = 'Creation Date Payment File';
            Description = 'DYNPMT';
        }
        field(5001948; "Mandate debit type"; Option)
        {
            Caption = 'Mandat Debit type';
            Description = 'DYNPMT';
            OptionMembers = " ",FRST,RCUR,FNAL,OOFF;
        }
        field(5001949; "Line created manually"; Boolean)
        {
            Caption = 'Line created manually';
            Description = 'DYNPMT';
        }
        field(5001950; "Creditor-ID Vendor"; Code[35])
        {
            Caption = 'Creditor-ID (Vendor)';
            Description = 'DYNPMT';
        }
        field(5001951; "Created by"; Option)
        {
            Caption = 'Created by';
            Description = 'DYNPMT';
            OptionCaption = 'Manually,Debit Suggestion,SEPA Debit Suggestion';
            OptionMembers = Manually,"Debit Suggestion","SEPA Debit Suggestion";
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
            TableRelation = IF ("BOM Document Type" = FILTER (< "Construction Line")) "Sales Header"."No." WHERE ("Document Type" = FIELD ("BOM Document Type"))
            ELSE
            IF ("BOM Document Type" = FILTER ("Construction Line")) "Construction Header"."No." WHERE ("No." = FIELD ("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013370; "BOM Document Line No."; Integer)
        {
            Caption = 'BOM Document Line No.';
            Description = ':DMW14.03:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER (< "Construction Line")) "Sales Line"."Line No." WHERE ("Document Type" = FIELD ("BOM Document Type"),
                                                                                                                 "Document No." = FIELD ("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013380; "BOM Lfd. Nr."; Integer)
        {
            Caption = 'BOM Entry No.';
            Description = ':DMW14.03:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER ("Construction Line")) "Construction Line"."Entry No." WHERE ("Document No." = FIELD ("BOM Document No."));
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
        field(5157802; "Applied Account Type"; Option)
        {
            Caption = 'Applied Account Type';
            Description = 'EA';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(5157803; "Applied Account No."; Code[20])
        {
            Caption = 'Applied Account No.';
            Description = 'EA';
            TableRelation = IF ("Applied Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Applied Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Applied Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Applied Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(5157804; "Applied by"; Option)
        {
            Caption = 'Applied by';
            Description = 'EA';
            OptionCaption = ',Account,Bal. Account';
            OptionMembers = ,Account,"Bal. Account";
        }
        field(5157805; "ID Applied-Entry"; Integer)
        {
            Caption = 'ID Applied-Entry';
            Description = 'EA';
        }
        field(5157806; "Posting Payment Discount Amt."; Decimal)
        {
            Caption = 'Posting Payment Discount';
            Description = 'EA';
        }
        field(5157807; "Posting Payment Discount %"; Decimal)
        {
            Caption = 'Posting Payment Discount %';
            DecimalPlaces = 0 : 5;
            Description = 'EA';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5157808; "Allocated Application Amount"; Decimal)
        {
            CalcFormula = Sum ("Application Line Detail".Amount WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                      "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                      "Line No." = FIELD ("Line No.")));
            Caption = 'Allocated Application Amount';
            Description = 'EA';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157809; "Allocated Pmt. Disc. Amount"; Decimal)
        {
            CalcFormula = Sum ("Application Line Detail"."Posting Payment Discount" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                          "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                                          "Line No." = FIELD ("Line No.")));
            Caption = 'Allocated Pmt. Disc. Amount';
            Description = 'EA';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157810; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
            Description = 'EA';
        }
        field(5157811; "Suppress CurrCode Validation"; Boolean)
        {
            Caption = 'Suppress CurrCode Validation';
            Description = 'EA';
            Editable = false;
        }
        field(5157812; "Application Status"; Option)
        {
            BlankZero = true;
            Caption = 'Application Status';
            Description = 'EA';
            Editable = false;
            OptionCaption = ',Open,Accounted,Finished,System,To Complete';
            OptionMembers = " ",Open,Accounted,Finished,System,Complete;
        }
        field(5157813; Payback; Boolean)
        {
            Caption = 'Payback';
            Description = 'EA';
            Editable = false;
        }
        field(5157814; "Reopen-to ID"; Code[50])
        {
            Caption = 'Reopen-to ID';
            Description = 'EA';
        }
        field(5157815; "Payback Processed"; Boolean)
        {
            Caption = 'Payback processed';
            Description = 'EA';
            Editable = false;
        }
        field(5157840; "Bank Account No./IBAN Code"; Code[50])
        {
            Caption = 'Bank Account No./IBAN';
            Description = 'EA';
        }
        field(5157841; "Bank Branch Code/BIC-Code"; Code[20])
        {
            Caption = 'Bank Branch Code/BIC-Code';
            Description = 'EA';
        }
        field(5157842; "Check No."; Code[20])
        {
            Caption = 'Check No.';
            Description = 'EA';
        }
        field(5157843; "Original Currency Factor"; Decimal)
        {
            Caption = 'Original Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'PMT CC';
            MinValue = 0;
        }
        field(5157844; "Allocated Appln. Amount (LCY)"; Decimal)
        {
            CalcFormula = Sum ("Application Line Detail"."Amount (LCY)" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                              "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                              "Line No." = FIELD ("Line No.")));
            Caption = 'Allocated Application Amount (LCY)';
            Description = 'PMT CC';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157882; "Invoice Entrance Date"; Date)
        {
            Caption = 'Document Entrance Date';
            Description = 'TAX';
        }
        field(5157893; "Payment in Process"; Boolean)
        {
            Caption = 'Payment in Process';
            Description = 'PMT';
            Editable = false;
        }
        field(5157895; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
            Description = 'PMT';
            TableRelation = IF ("Applied Account Type" = CONST (Customer)) "Bank Account Mandate"."Mandate ID" WHERE ("Account Type" = CONST (Customer),
                                                                                                                   "Account No." = FIELD ("Applied Account No."))
            ELSE
            IF ("Applied Account Type" = CONST (Vendor)) "Bank Account Mandate"."Mandate ID" WHERE ("Account Type" = CONST (Vendor),
                                                                                                                                                                                                             "Account No." = FIELD ("Applied Account No."));
        }
        field(5157896; "PIP Account Type"; Option)
        {
            Caption = 'Payment in Process Account';
            Description = 'PMT';
            Editable = false;
            OptionCaption = ',Account,Bal. Account';
            OptionMembers = ,Account,"Bal. Account";
        }
        field(5157960; "Customer Reference No."; Code[23])
        {
            Caption = 'Customer Reference No.';
            CharAllowed = '0123456789';
            Description = 'PMT';
        }
        field(5292332; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292333; "Usage Job No."; Code[20])
        {
            Caption = 'Usage Job No.';
            TableRelation = Job;
        }
        field(5292334; "Usage Job Line Unique No."; Integer)
        {
            Caption = 'Usage Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Usage Job No."),
                                                                       "Unique No." = FIELD ("Usage Job Line Unique No."));
        }
        field(5292335; "Usage WBS"; Code[50])
        {
            Caption = 'Usage WBS';
        }
        field(5292336; "WIP Posting"; Boolean)
        {
            Caption = 'WIP Posting';
            Editable = false;
        }
        field(5292650; "Deduction (Amount)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Deduction (Amount)';
            Editable = false;
        }
        field(5370407; "dynamo Posting Type"; Option)
        {
            Description = 'DYN';
            OptionCaption = ' ,Unapply,dynamo-Created Entry';
            OptionMembers = " ",Unapply,"dynamo-Created Entry";
        }
        field(5370525; "Applies-to Entry No."; Integer)
        {
            Caption = 'Applies-to Entry No.';
            Description = 'DYNOGL';
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
        field(5483220; Scrapping; Boolean)
        {
            Caption = 'Scrapping';
            Description = 'FA';
        }
        field(5483221; "Payment Discount FA Possible %"; Decimal)
        {
            Caption = 'Payment Discount FA Possible %';
            Description = 'FA';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = "Balance (LCY)";
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", "Posting Date", "Document No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key3; "Account Type", "Account No.", "Applies-to Doc. Type", "Applies-to Doc. No.")
        {
        }
        key(Key4; "Document No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key5; "Journal Template Name", "Journal Batch Name", "Account Type", "Document Type")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key6; "Incoming Document Entry No.")
        {
        }
        key(Key7; "Journal Template Name", "Journal Batch Name", "Account Type", "Currency Code", "Account No.", "Amount (LCY)", "Payment Order No.", "Payment Type")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key8; "Journal Template Name", "Journal Batch Name", "Account Type", "Account No.", "Line No.")
        {
        }
        key(Key9; "Journal Template Name", "Journal Batch Name", "Account Type", "Mandate type", "Due Date SEPA", "Account No.", "Mandate No.")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key10; "Journal Template Name", "Journal Batch Name", "Due Date SEPA", "Account Type", "Account No.", "Line No.")
        {
        }
        key(Key11; "Journal Template Name", "Journal Batch Name", "Mandate No.")
        {
        }
        key(Key12; "Due Date SEPA", "Mandate debit type", "Mandate No.")
        {
        }
        key(Key13; "Journal Template Name", "Journal Batch Name", "Line created manually")
        {
        }
        key(Key14; "ID Applied-Entry")
        {
        }
        key(Key15; "Pmt. Import Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

