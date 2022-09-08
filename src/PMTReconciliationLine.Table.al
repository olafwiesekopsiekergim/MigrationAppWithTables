table 5001991 "PMT Reconciliation Line"
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
    // dyn.OGL  25.02.2015  OGL      akq        Added dynamo OGL
    // ================================================================================

    Caption = 'Bank Statement Reconciliation Line';
    PasteIsValid = false;

    fields
    {
        field(1; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = "Bank Account";
        }
        field(2; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
            TableRelation = "PMT Reconciliation"."Statement No." WHERE ("Bank Account No." = FIELD ("Bank Account No."));
        }
        field(3; "Statement Line No."; Integer)
        {
            Caption = 'Statement Line No.';
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5; "Transaction Date"; Date)
        {
            Caption = 'Transaction Date';
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(7; "Statement Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Statement Amount';
        }
        field(8; Difference; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Difference';
        }
        field(9; "Applied Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Applied Amount';
            Editable = false;
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Bank Account Ledger Entry,Check Ledger Entry,Difference,Payment Entry';
            OptionMembers = "Bank Account Ledger Entry","Check Ledger Entry",Difference,"Payment Entry";
        }
        field(11; "Applied Entries"; Integer)
        {
            Caption = 'Applied Entries';
            Editable = false;
        }
        field(12; "Value Date"; Date)
        {
            Caption = 'Value Date';
        }
        field(13; "Ready for Application"; Boolean)
        {
            Caption = 'Ready for Application';
        }
        field(14; "Check No."; Code[20])
        {
            Caption = 'Check No.';
        }
        field(50001; "Name Konto"; Code[50])
        {
            CalcFormula = Lookup ("G/L Account".Name WHERE ("No." = FIELD ("Bal. Account No.")));
            Caption = '<Name Sachkonto>';
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; "Name Kreditor"; Code[50])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD ("Bal. Account No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50003; "Name Debitor"; Code[50])
        {
            CalcFormula = Lookup (Customer.Name WHERE ("No." = FIELD ("Bal. Account No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001901; "Import Journal Entry No."; Integer)
        {
            Caption = 'Import Journal Entry No.';
            Editable = false;
        }
        field(5001902; "Original Curreny Code"; Code[10])
        {
            Caption = 'Original Curreny Code';
            Editable = false;
        }
        field(5001903; "Exchange Difference"; Decimal)
        {
            Caption = 'Exchange Difference';
            Editable = false;
        }
        field(5001904; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(5001905; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(5001906; "Original Amount (LCY)"; Decimal)
        {
            Caption = 'Original Amount (LCY)';
            Editable = false;
        }
        field(5001907; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(5001908; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
        }
        field(5001909; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(5001910; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
        }
        field(5001911; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(5001912; "Bal. Account No."; Code[20])
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
            IF ("Bal. Account Type" = CONST ("Fixed Asset")) "Fixed Asset";
        }
        field(5001913; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(5001914; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(5001915; "Bal. Account No. found"; Option)
        {
            Caption = 'Bal. Account No. found';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Customer&Vendor,Bank';
            OptionMembers = " ",Customer,Vendor,"Customer&Vendor",Bank;
        }
        field(5001916; "Applies-to Doc. found"; Boolean)
        {
            Caption = 'Applies-to Doc. found';
            Editable = false;
        }
        field(5001917; "Apply completed"; Boolean)
        {
            Caption = 'Apply completed';
            Editable = false;
        }
        field(5001918; "Applied Entry No."; Integer)
        {
            Caption = 'Applied Entry No.';
            TableRelation = IF ("Bal. Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No."
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No.";
        }
        field(5001919; "Applies-to ID"; Code[20])
        {
            Caption = 'Applies-to ID';
        }
        field(5001920; "Bal. Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Bal. Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(5001921; "Bal. Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Bal. Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(5001922; "Bal. VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'Bal. VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(5001923; "Bal. VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'Bal. VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(5001924; "Bal. Gen. Posting Type"; Option)
        {
            Caption = 'Bal. Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(5001925; "Bal. VAT Calculation Type"; Option)
        {
            Caption = 'Bal. VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(5001926; "Bal. VAT %"; Decimal)
        {
            Caption = 'Bal. VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5001927; "Bal. VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Amount';
        }
        field(5001928; "Bal. VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Base Amount';
        }
        field(5001929; "Bal. VAT Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Amount (LCY)';
            Editable = false;
        }
        field(5001930; "Bal. VAT Base Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Bal. VAT Base Amount (LCY)';
            Editable = false;
        }
        field(5001931; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invioce,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invioce,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(5001932; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            TableRelation = Mandate;
        }
        field(5001933; "Mandate invalid"; Boolean)
        {
            Caption = 'Mandate invalid';
        }
        field(5001934; "CAMT Import"; Boolean)
        {
            Caption = 'CAMT Import';
        }
        field(5001935; "Creditor-ID Vendor"; Code[35])
        {
            Caption = 'Creditor-ID (Vendor)';
        }
        field(5001936; "General Posting Type"; Option)
        {
            OptionMembers = " ",Statement,Balance,Reminder,Retoure,Tolerance;
        }
        field(5001940; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5001941; Retoure; Boolean)
        {
            Caption = 'Return';
        }
        field(5001942; "Transaction Code"; Code[3])
        {
            Caption = 'Transaction Code';
            TableRelation = "Transaction Code";
        }
        field(5001943; "Text Code Supplement"; Text[3])
        {
            Caption = 'Text Code Supplement';
            TableRelation = "Text Code Supplement";
        }
        field(5001944; "Retoure Fee"; Decimal)
        {
            Caption = 'Fees';
        }
        field(5001945; "Retoure Fee Currency Code"; Code[10])
        {
            Caption = 'Fees Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(5001946; "Block Mandate"; Boolean)
        {
            Caption = 'Block Mandate';
        }
        field(5001948; "Post Fees"; Option)
        {
            Caption = 'Post Fees';
            OptionCaption = ' ,G/L Account,Customer (1 Entry),Customer (2 Entries)';
            OptionMembers = " ","G/L Account","Customer (1 Entry)","Customer (2 Entries)";
        }
        field(5001949; "Payment Document No."; Code[35])
        {
            Caption = 'Payment Document No.';
        }
        field(5001950; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
            Editable = false;
        }
        field(5001951; "End-To-End-ID"; Code[35])
        {
            Caption = 'End-To-End-ID';
        }
        field(5001952; "Refers-to Account Type"; Option)
        {
            Caption = 'Refers-to Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(5001953; "Refers-to Doc. Type"; Option)
        {
            Caption = 'Refers-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(5001954; "Refers-to Doc. No."; Code[35])
        {
            Caption = 'Refers-to Doc. No.';
        }
        field(5001955; "Refers-to Entry No."; Integer)
        {
            Caption = 'Refers-to Entry No.';
            TableRelation = IF ("Refers-to Account Type" = CONST (Customer)) "Cust. Ledger Entry"."Entry No."
            ELSE
            IF ("Refers-to Account Type" = CONST (Vendor)) "Vendor Ledger Entry"."Entry No.";
        }
        field(5001956; "Apply New"; Boolean)
        {
            Caption = 'Apply New';
        }
        field(5001957; "Retoure Entry No."; Integer)
        {
            Caption = 'Retoure Entry No.';
            TableRelation = "Retoure Entry";
        }
        field(5001958; "Initial Doc. No."; Code[35])
        {
            Caption = 'Initial Doc. No.';
        }
        field(5001959; "Refers-to Transaction No."; Integer)
        {
            Caption = 'Refers-to Transaction No.';
        }
        field(5001980; "Application By Match"; Boolean)
        {
            Caption = 'Application By Match';
        }
        field(5001981; "Original Bankstatement Amount"; Decimal)
        {
            Caption = 'Origin Bankstatement Amount';
        }
        field(5001982; "Tolerance Amount"; Decimal)
        {
            Caption = 'Tolerance Amount';
        }
        field(5001983; "Reminder Fee"; Decimal)
        {
            Caption = 'Reminder Fee';
        }
        field(5001984; "Payment Discount"; Decimal)
        {
            Caption = 'Payment Discount';
        }
        field(5001985; "Multiple Adjustment"; Boolean)
        {
            Caption = 'Multiple Adjustment';
            Editable = false;
        }
        field(5001986; "Applied Ledger Entries"; Integer)
        {
            Caption = 'Applied Ledger Entries';
            Editable = false;
        }
        field(5001987; "Application Company"; Text[30])
        {
            Caption = 'Application Company';
            TableRelation = Company.Name;
        }
        field(5001988; "Application Status"; Option)
        {
            Caption = 'Application Status';
            Editable = false;
            OptionCaption = ' ,100%,100% With Tolerance,Account';
            OptionMembers = " ","100%","100% With Tolerance",Account;
        }
        field(5001989; "Payment Tolerance Account"; Code[20])
        {
            Caption = 'Payment Tolerance Account';
            TableRelation = "G/L Account";
        }
        field(5001990; "New Application Amount"; Decimal)
        {
            Caption = 'New Application Amount';
        }
        field(5001991; "Application Number Matches"; Integer)
        {
            Caption = 'Application Number Matches';
        }
        field(5001992; "Reminder Fee Account"; Code[20])
        {
            Caption = 'Reminder Fee Account';
            TableRelation = "G/L Account";
        }
        field(5001993; "Application Posting Type"; Option)
        {
            Caption = 'Application Posting Type';
            OptionCaption = ' ,Tolerance as Reminder Fee,Reminder Fee as Tolerance,Tolerance and Reminder Fee seperated,No Tolerance posting';
            OptionMembers = " ","Tolerance as Reminder Fee","Reminder Fee as Tolerance","Tolerance and Reminder Fee seperated","No Tolerance posting";
        }
    }

    keys
    {
        key(Key1; "Bank Account No.", "Statement No.", "Statement Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = "Statement Amount", Difference;
        }
        key(Key2; "Bal. Account Type", "Bal. Account No.", "Applies-to Doc. Type", "Applies-to Doc. No.")
        {
        }
    }

    fieldgroups
    {
    }
}

