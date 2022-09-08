table 5001902 "Payment Ledger Entry"
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

    Caption = 'Payment Ledger Entry';
    Permissions = TableData "Payment Line" = rd,
                  TableData "Payment Bank Information" = rd,
                  TableData "Payment Bank Information Line" = rd;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            Editable = false;
            TableRelation = "Bank Account";
        }
        field(3; "Bank Ledger Entry No."; Integer)
        {
            Caption = 'Bank Ledger Entry No.';
            Editable = false;
            TableRelation = "Bank Account Ledger Entry";
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
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
        field(7; Text; Text[50])
        {
            Caption = 'Text';
            Editable = false;
        }
        field(8; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            DecimalPlaces = 2 : 2;
        }
        field(9; "Payment Date"; Date)
        {
            Caption = 'Payment Date';
            Editable = false;
        }
        field(10; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
            Editable = false;
        }
        field(13; "Posting State"; Option)
        {
            Caption = 'Posting State';
            Editable = false;
            OptionCaption = ',Created,Cancelled,Posted,Corrected';
            OptionMembers = ,Created,Cancelled,Posted,Corrected;
        }
        field(14; "Original State"; Option)
        {
            Caption = 'Original State';
            Editable = false;
            OptionCaption = ' ,Created,Cancelled,Posted,Corrected';
            OptionMembers = " ",Created,Cancelled,Posted,Corrected;
        }
        field(15; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(16; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            Editable = false;
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(17; Open; Boolean)
        {
            Caption = 'Open';
            Editable = false;
        }
        field(18; "Statement Status"; Option)
        {
            Caption = 'Statement Status';
            Editable = false;
            OptionCaption = 'Open,Regulation Bank Ledger Entry,,Closed';
            OptionMembers = Open,"Regulation Bank Ledger Entry",,Closed;
        }
        field(19; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
            Editable = false;
            TableRelation = "Bank Acc. Reconciliation Line"."Statement No.";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(20; "Statement Line No."; Integer)
        {
            Caption = 'Statement Line No.';
            Editable = false;
            TableRelation = "Bank Acc. Reconciliation Line"."Statement Line No.";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(21; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(22; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            Editable = false;
        }
        field(23; Date; Date)
        {
            Caption = 'Date';
            Editable = false;
        }
        field(25; "Control/Account"; Decimal)
        {
            Caption = 'Control/Account';
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(26; "Control/Bank Branch No."; Decimal)
        {
            Caption = 'Control/Bank Branch No.';
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(27; "No. of Entries"; Integer)
        {
            Caption = 'No. of Entries';
            Editable = false;
        }
        field(28; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = 'Customer Debit,Customer Credit,Vendor Credit,Customer Collect';
            OptionMembers = "Customer Debit","Customer Credit","Vendor Credit","Customer Collect";
        }
        field(29; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(30; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = true;
        }
        field(31; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(32; "DTA-Type"; Option)
        {
            Caption = 'DTA-Type';
            OptionCaption = 'Interior,Exterior';
            OptionMembers = Interior,Exterior;
        }
        field(33; "Day Entry No."; Integer)
        {
            Caption = 'Day Entry No.';
        }
        field(34; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
        }
        field(40; "Instruction Code 1"; Code[2])
        {
            Caption = 'Instruction Code 1';
        }
        field(41; "Payment Type Code"; Code[2])
        {
            Caption = 'Payment Type Code';
        }
        field(42; "Charges Code"; Option)
        {
            Caption = 'Charges Code';
            OptionCaption = 'Transf. clients/other beneficiaries,all charges client,all charges recipient ';
            OptionMembers = "Transf. clients/other beneficiaries","all charges client","all charges recipient ";
        }
        field(45; "Instruction Currency"; Option)
        {
            Caption = 'Instruction Currency';
            OptionCaption = 'Amount in foreign currency,Amount in DM,Amount in EURO';
            OptionMembers = "Amount in foreign currency","Amount in DM","Amount in EURO";
        }
        field(46; "Instruction Code 2"; Code[2])
        {
            Caption = 'Instruction Code 2';
        }
        field(50; "Vendor Bank Account"; Code[20])
        {
            Caption = 'Vendor Bank Account';
        }
        field(51; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
        }
        field(52; "No. of Registration Sets"; Integer)
        {
            Caption = 'No. of Registration Sets';
        }
        field(53; "Account No. Charges"; Code[20])
        {
            Caption = 'Account No. Charges';
        }
        field(54; "Announcement Bundesbank"; Boolean)
        {
            Caption = 'Announcement Bundesbank';
        }
        field(55; AVIS; Boolean)
        {
            Caption = 'AVIS';
            FieldClass = Normal;
        }
        field(56; Beneficiary; Code[20])
        {
            Caption = 'Beneficiary';
            TableRelation = Vendor;
        }
        field(57; "Last Payment Bank Info Entry"; Integer)
        {
            CalcFormula = Max ("Payment Bank Information"."Entry No." WHERE ("Payment No." = FIELD ("Payment No.")));
            Caption = 'Last Paymentfile Bank Info Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(58; "Instruction Currencycode"; Code[10])
        {
            Caption = 'Instruction Currencycode';
        }
        field(59; WSort; Code[20])
        {
            Caption = 'WSort';
        }
        field(60; Exportfilename; Code[250])
        {
        }
        field(61; "EU-Payment"; Option)
        {
            Caption = 'EU-Payment';
            OptionCaption = ' ,EU-Standard,EU-Expresstransfer';
            OptionMembers = " ","EU-Standard","EU-Expresstransfer";
        }
        field(150; "SEPA Payment"; Boolean)
        {
            Caption = 'SEPA Payment';
            Description = 'SEPA:1-F-50:5:01';
        }
        field(151; "SEPA Sequence Type"; Code[4])
        {
            Caption = 'SEPA Sequence Type';
        }
        field(152; "Is URGP Payment"; Boolean)
        {
            Caption = 'Same-Day Transfer';
        }
        field(153; "Created by"; Option)
        {
            Caption = 'Created by';
            OptionCaption = 'Manually,Debit Suggestion,SEPA Debit Suggestion';
            OptionMembers = Manually,"Debit Suggestion","SEPA Debit Suggestion";
        }
        field(154; "Checksum Algorithm"; Option)
        {
            Caption = 'Checksum Algorithm';
            OptionCaption = ', ,MD5,SHA1,SHA256';
            OptionMembers = ,,MD5,SHA1,SHA256;
        }
        field(155; Checksum; Text[250])
        {
            Caption = 'Checksum';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Bank Account No.", "Posting State", "Payment No.")
        {
        }
        key(Key3; "Bank Ledger Entry No.", "Posting State")
        {
        }
        key(Key4; "Bank Account No.", "Payment Date")
        {
        }
        key(Key5; "Bank Account No.", Open)
        {
        }
        key(Key6; "Document No.", "Posting Date")
        {
        }
        key(Key7; "DTA-Type", "Payment No.", "Payment Date", "Day Entry No.")
        {
        }
        key(Key8; "Payment No.", "Execution Date", "Bank Account No.", WSort)
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }
}

