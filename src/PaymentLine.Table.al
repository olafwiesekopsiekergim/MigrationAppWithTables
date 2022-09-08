table 5001903 "Payment Line"
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

    Caption = 'Payment Line';

    fields
    {
        field(1; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
            Editable = false;
            TableRelation = "Payment Line";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account"."No." WHERE ("No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer."No." WHERE ("No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor."No." WHERE ("No." = FIELD ("Account No."));
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            Editable = false;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(7; "Document No."; Code[35])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
        }
        field(13; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(16; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = false;
        }
        field(18; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(35; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            Editable = false;
        }
        field(38; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Editable = false;
        }
        field(39; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
            Editable = false;
        }
        field(40; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(76; "Document Date"; Date)
        {
            Caption = 'Document Date';
            ClosingDates = true;
            Editable = false;
        }
        field(77; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            Editable = false;
        }
        field(78; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor';
            OptionMembers = " ",Customer,Vendor;
        }
        field(80; "Pmt. Discount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Pmt. Discount';
            Editable = false;
        }
        field(100; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(101; "AVIS Letter"; Boolean)
        {
            Caption = 'AVIS Letter';
            Editable = false;
        }
        field(151; "Sequence Type Customer"; Code[4])
        {
            Caption = 'Sequence Type Cust';
        }
        field(5001900; "Payment Amount"; Decimal)
        {
            Caption = 'Payment Amount';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(5001901; "Sum Entries"; Decimal)
        {
            Caption = 'Sum Entries';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(5001904; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
            Editable = false;
        }
        field(5001906; "Drawee Bank"; Code[20])
        {
            Caption = 'Drawee Bank';
            Editable = false;
        }
        field(5001907; "Payment Currency"; Code[10])
        {
            Caption = 'Payment Currency';
            Editable = false;
        }
        field(5001908; "Instruction Code 1"; Code[2])
        {
            Caption = 'Instruction Code 1';
            Editable = false;
        }
        field(5001909; "Payment Type Code"; Code[2])
        {
            Caption = 'Payment Type Code';
            Editable = false;
        }
        field(5001910; "Charges Code"; Option)
        {
            Caption = 'Charges Code';
            Editable = false;
            OptionCaption = 'Transf. clients/other beneficiaries,all charges client,all charges recipient ';
            OptionMembers = "Transf. clients/other beneficiaries","all charges client","all charges recipient ";
        }
        field(5001911; "Currency Amount"; Decimal)
        {
            Caption = 'Currency Amount';
            Editable = false;
        }
        field(5001912; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
            Editable = false;
        }
        field(5001913; "AZV No."; Code[20])
        {
            Caption = 'AZV No.';
            Editable = false;
        }
        field(5001914; "Ledg.Entry No."; Integer)
        {
            Caption = 'Ledg.Entry No.';
            Editable = false;
        }
        field(5001916; "Instruction Code 2"; Code[2])
        {
            Caption = 'Instruction Code 2';
            Editable = false;
        }
        field(5001918; "EU-Payment"; Option)
        {
            Caption = 'EU-Payment';
            OptionCaption = ' ,EU-Standard,EU-Expresstransfer';
            OptionMembers = " ","EU-Standard","EU-Expresstransfer";
        }
        field(5001919; "Due Date SEPA"; Date)
        {
            Caption = 'Due Date SEPA';
        }
        field(5001920; "Mandate type"; Option)
        {
            OptionCaption = ' ,Core,B2B,Cor1';
            OptionMembers = " ",Core,B2B,Cor1;
        }
        field(5001921; "Total Amount (LCY) PmtInf"; Decimal)
        {
            CalcFormula = Sum ("Payment Line"."Amount (LCY)" WHERE ("Payment No." = FIELD ("Payment No."),
                                                                   "Due Date SEPA" = FIELD ("Due Date SEPA"),
                                                                   "Mandate type" = FIELD ("Mandate type"),
                                                                   "Sequence Type Customer" = FIELD ("Sequence Type Customer")));
            Caption = 'Total Amount (LCY) PmtInf';
            FieldClass = FlowField;
        }
        field(5001922; "Total Amount (LCY) DrctDbt"; Decimal)
        {
            CalcFormula = Sum ("Payment Line"."Amount (LCY)" WHERE ("Payment No." = FIELD ("Payment No."),
                                                                   "Due Date SEPA" = FIELD ("Due Date SEPA"),
                                                                   "Mandate type" = FIELD ("Mandate type"),
                                                                   "Payment Order No." = FIELD ("Payment Order No.")));
            Caption = 'Total Amount (LCY) DrctDbt';
            FieldClass = FlowField;
        }
        field(5001923; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            TableRelation = Mandate;
        }
        field(5001924; "Created by"; Option)
        {
            Caption = 'Created by';
            OptionCaption = 'Manually,Debit Suggestion,SEPA Debit Suggestion';
            OptionMembers = Manually,"Debit Suggestion","SEPA Debit Suggestion";
        }
        field(5001925; "End-To-End-ID"; Code[35])
        {
            Caption = 'End-To-End-ID';
        }
    }

    keys
    {
        key(Key1; "Payment No.", "Entry No.")
        {
            Clustered = true;
            SumIndexFields = Amount, "Amount (LCY)", "Payment Amount";
        }
        key(Key2; "Payment No.", "Account No.")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Payment Amount";
        }
        key(Key3; "Payment No.", "Line No.")
        {
        }
        key(Key4; "Payment No.", "Payment Order No.", "Account No.")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Payment Amount";
        }
        key(Key5; "Account Type", "Account No.", "Posting Date")
        {
        }
        key(Key6; "Payment No.", "Due Date SEPA", "Mandate type", "Payment Order No.", "Source Type", "Sequence Type Customer")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
        key(Key7; "Payment No.", "Account No.", "Due Date SEPA", "Sequence Type Customer", "Payment Order No.")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Payment Amount";
        }
        key(Key8; "Payment No.", "Account No.", "Applies-to Doc. No.")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Payment Amount";
        }
        key(Key9; "Payment No.", "Payment Order No.", "Applies-to Doc. No.")
        {
            SumIndexFields = Amount, "Amount (LCY)", "Payment Amount";
        }
        key(Key10; "End-To-End-ID")
        {
        }
    }

    fieldgroups
    {
    }
}

