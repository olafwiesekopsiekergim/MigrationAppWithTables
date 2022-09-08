table 5001904 "Payment Regulation Buffer"
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

    Caption = 'Payment Regulation Buffer';

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
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
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
            IF ("Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
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
            MaxValue = 100;
            MinValue = 0;
        }
        field(11; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(13; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(14; "Debit Amount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Debit Amount';
        }
        field(15; "Credit Amount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Credit Amount';
        }
        field(16; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
        }
        field(17; "Balance (LCY)"; Decimal)
        {
            Caption = 'Balance (LCY)';
        }
        field(18; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 4 : 4;
            MinValue = 0;
        }
        field(19; "Sales/Purch. (LCY)"; Decimal)
        {
            Caption = 'Sales/Purch. (LCY)';
        }
        field(20; "Profit (LCY)"; Decimal)
        {
            Caption = 'Profit (LCY)';
        }
        field(21; "Inv. Discount (LCY)"; Decimal)
        {
            Caption = 'Inv. Discount (LCY)';
        }
        field(22; "Sell-to/Buy-from No."; Code[20])
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
        field(23; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Posting Group"
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Posting Group";
        }
        field(24; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
        }
        field(25; "Project Code"; Code[20])
        {
            Caption = 'Project Code';
        }
        field(26; "Sellto/Buy-from No."; Code[10])
        {
            Caption = 'Sellto/Buy-from No.';
            TableRelation = "Salesperson/Purchaser";
        }
        field(29; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(30; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
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
            Caption = 'VAT Amount';
        }
        field(45; "VAT Posting"; Option)
        {
            Caption = 'VAT Posting';
            OptionCaption = 'Automatic VAT Entry,Manual VAT Entry';
            OptionMembers = "Automatic VAT Entry","Manual VAT Entry";
        }
        field(47; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(48; "Applies-to ID"; Code[20])
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
            OptionCaption = ',F  Fixed,V  Variable,B  Balance,RF Reversing Fixed,RV Reversing Variable,RB Reversing Balance';
            OptionMembers = ,"F  Fixed","V  Variable","B  Balance","RF Reversing Fixed","RV Reversing Variable","RB Reversing Balance";
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
            CalcFormula = Sum ("Gen. Jnl. Allocation".Amount WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                   "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                   "Journal Line No." = FIELD ("Line No.")));
            Caption = 'Allocated Amt. (LCY)';
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
            OptionCaption = 'Normal VAR,Reverse Charge VAT,Full VAT';
            OptionMembers = "Normal VAR","Reverse Charge VAT","Full VAT";
        }
        field(61; "EU Third Country Trading"; Boolean)
        {
            Caption = 'EU Third Country Trading';
        }
        field(62; "Allow Application"; Boolean)
        {
            Caption = 'Allow Application';
            InitValue = true;
        }
        field(63; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
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
            OptionCaption = 'Normal VAR,Reverse Charge VAT,Full VAT';
            OptionMembers = "Normal VAR","Reverse Charge VAT","Full VAT";
        }
        field(68; "Balance VAT %"; Decimal)
        {
            Caption = 'Balance VAT %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(69; "Balance VAT Amount"; Decimal)
        {
            Caption = 'Balance VAT Amount';
        }
        field(70; "Bank Payment Type"; Option)
        {
            Caption = 'Bank Payment Type';
            OptionCaption = ' ,Computer Check,Manual Check,Disk Clearing';
            OptionMembers = " ","Computer Check","Manual Check","Disk Clearing";
        }
        field(71; "VAT Base Amount"; Decimal)
        {
            Caption = 'VAT Base Amount';
        }
        field(72; "Bal. VAT Base Amount"; Decimal)
        {
            Caption = 'Bal. VAT Base Amount';
        }
        field(73; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(75; "Check Printed"; Boolean)
        {
            Caption = 'Check Printed';
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
            OptionCaption = ' ,Customer,Vendor,Bank Account';
            OptionMembers = " ",Customer,Vendor,"Bank Account";
        }
        field(79; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Source Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
        }
        field(5001902; "Payment Type"; Option)
        {
            Caption = 'Payment Type';
            OptionCaption = 'Collection,Debiting';
            OptionMembers = Collection,Debiting;
        }
        field(5001903; "Disk Type"; Option)
        {
            Caption = 'Disk Type';
            OptionCaption = 'Invoice,Credit Memo';
            OptionMembers = Invoice,"Credit Memo";
        }
        field(5001904; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
        }
        field(5001906; "Drawee Bank"; Code[20])
        {
            Caption = 'Drawee Bank';
        }
        field(5001907; "Payment Curreny"; Code[10])
        {
            Caption = 'Payment Curreny';
        }
        field(5001908; "Instruction Code 1"; Code[2])
        {
            Caption = 'Instruction Code 1';
        }
        field(5001909; "Payment Type Code"; Code[2])
        {
            Caption = 'Payment Type Code';
        }
        field(5001910; "Charges Code"; Option)
        {
            Caption = 'Charges Code';
            OptionCaption = 'Transf. clients/other beneficiaries,all charges client,all charges recipient ';
            OptionMembers = "Transf. clients/other beneficiaries","all charges client","all charges recipient ";
        }
        field(5001911; "Currency Amount"; Decimal)
        {
            Caption = 'Currency Amount';
        }
        field(5001912; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
        }
        field(5001915; "Instruction Currency"; Option)
        {
            Caption = 'Instruction Currency';
            OptionCaption = 'Amount in foreign currency,Amount in DM,Amount in EURO';
            OptionMembers = "Amount in foreign currency","Amount in DM","Amount in EURO";
        }
        field(5001916; "Instruction Code 2"; Code[2])
        {
            Caption = 'Instruction Code 2';
        }
        field(5001917; "Instruction Currencycode"; Code[10])
        {
            Caption = 'Instruction Currencycode';
        }
        field(5001918; "EU-Payment"; Option)
        {
            Caption = 'EU-Payment';
            OptionCaption = ' ,EU-Standard,EU-Expresstransfer';
            OptionMembers = " ","EU-Standard","EU-Expresstransfer";
        }
        field(5001940; "Debit Date"; Date)
        {
            Caption = 'Debit Date';
        }
        field(5001941; "Date Pre-Notification"; Date)
        {
            Caption = 'Date Pre-Notification';
        }
        field(5001942; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            TableRelation = Mandate;
        }
        field(5001943; "Mandate invalid"; Boolean)
        {
            Caption = 'Mandate invalid';
        }
        field(5001944; "Debit Date expired"; Boolean)
        {
            Caption = 'Debit Date expired';
        }
        field(5001945; "Due Date SEPA"; Date)
        {
            Caption = 'Due Date SEPA';
        }
        field(5001946; "Mandate type"; Option)
        {
            Caption = 'Mandate type';
            OptionCaption = ' ,Core,B2B,Cor1';
            OptionMembers = " ",Core,B2B,Cor1;
        }
        field(5001948; "Mandate Debit type"; Option)
        {
            Caption = 'Mandat Debit type';
            OptionMembers = " ",FRST,RCUR,FNAL,OOFF;
        }
        field(5001951; "Created by"; Option)
        {
            Caption = 'Created by';
            OptionCaption = 'Manually,Debit Suggestion,SEPA Debit Suggestion';
            OptionMembers = Manually,"Debit Suggestion","SEPA Debit Suggestion";
        }
        field(5001990; "Order by Amount"; Decimal)
        {
        }
        field(5001991; "DD Block No."; Integer)
        {
        }
        field(5001992; "No. of Entries"; Integer)
        {
        }
        field(5001993; "Payment Amount"; Decimal)
        {
        }
        field(5001994; "Due Date SEPA Original"; Date)
        {
            Caption = 'Due Date SEPA Original';
        }
        field(5001995; "No. of Entries (positive)"; Integer)
        {
        }
        field(5001996; "No. of Entries (negative)"; Integer)
        {
        }
        field(5001997; "No. Entries for Avis"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "Disk Type", "Account Type", "Payment Type", "Account No.", "Amount (LCY)", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Disk Type", "Account Type", "Account No.", "Drawee Bank", "Payment Curreny", "Instruction Code 1", "Instruction Code 2", "Payment Type Code", "Charges Code", "Currency Code", "Instruction Currencycode", "Execution Date")
        {
            SumIndexFields = "Currency Amount";
        }
        key(Key3; "Line No.")
        {
        }
        key(Key4; "Account Type", "Mandate type", "Due Date SEPA", "Account No.", "Mandate No.")
        {
            SumIndexFields = Amount;
        }
        key(Key5; "Due Date SEPA", "Mandate type", "Mandate Debit type", "Mandate No.", "Order by Amount")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = Amount;
        }
        key(Key6; "Due Date SEPA", "Mandate type", "Mandate Debit type", "Mandate No.", "DD Block No.")
        {
        }
        key(Key7; "Mandate type", "Mandate No.", "Order by Amount")
        {
        }
        key(Key8; "Due Date SEPA", "Mandate type", "Mandate Debit type", "Mandate No.", "No. of Entries")
        {
        }
    }

    fieldgroups
    {
    }
}

