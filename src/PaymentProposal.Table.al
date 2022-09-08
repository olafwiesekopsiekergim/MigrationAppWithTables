table 5157895 "Payment Proposal"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // AZV  13.01.10   OPplus DTAZV
    // -----------------------------------------------------

    Caption = 'Payment Proposal';
    Permissions = TableData "Cust. Ledger Entry" = r,
                  TableData "Vendor Ledger Entry" = r;

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
        field(3; "Pmt. Proposal Template Name"; Code[10])
        {
            Caption = 'Pmt. Proposal Template Name';
        }
        field(4; "Last Discount Date"; Date)
        {
            Caption = 'Discount Date';
        }
        field(10; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,,,Bank Account';
            OptionMembers = "G/L Account",,,"Bank Account";
        }
        field(11; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(12; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
        }
        field(13; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(14; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(15; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(16; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,Finished,Released,Payment Done,Posting in Process,Posted';
            OptionMembers = Open,Finished,Released,"Payment Done","Posting in Process",Posted;
        }
        field(19; Amount; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Payment Proposal Line"."Posting Applied Amount" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                      "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                                      "Payment Type Code" = FILTER (<> '0')));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Amount (LCY)"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Pmt. Amount (LCY)" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                 "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                                 "Payment Type Code" = FILTER (<> '0')));
            Caption = 'Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Summarize Per Pmt. Head"; Boolean)
        {
            Caption = 'Summarize per Pmt. Head';
        }
        field(35; "Association Payment"; Boolean)
        {
            Caption = 'Association Payment';
        }
        field(36; "Pmt. CV Settling"; Boolean)
        {
            Caption = 'Pmt. CV Settling';
        }
        field(38; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
        }
        field(39; "Bank Branch Code"; Code[20])
        {
            Caption = 'Bank Branch Code';
        }
        field(40; "Bank Account No."; Code[34])
        {
            Caption = 'Bank Account No.';
        }
        field(41; "Bank BIC Code"; Code[20])
        {
            Caption = 'Bank BIC Code';
        }
        field(42; "Bank IBAN"; Code[50])
        {
            Caption = 'Bank IBAN';
        }
        field(43; "User ID"; Code[50])
        {
            Caption = 'UserID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(45; DiscountOption; Option)
        {
            Caption = 'DiscountOption';
            OptionCaption = 'Always Discount,As Entered,Next Pmt. Date,Last Pmt. Date,Always in Period,None';
            OptionMembers = "Always Discount","Entered Date","Next Date","Last Date","Always in Period","None";
        }
        field(47; "Include All"; Boolean)
        {
            Caption = 'Include All';
        }
        field(48; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(49; "Discount Date"; Date)
        {
            Caption = 'Discount Date';
        }
        field(50; "Payment Type Filter"; Code[10])
        {
            Caption = 'Payment Type Filter';
            FieldClass = FlowFilter;
            TableRelation = "Payment Type Code";
        }
        field(51; Errortext; Text[250])
        {
            CalcFormula = Lookup ("Payment Proposal Error"."Error Description" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                     "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                                     "Warning Message" = CONST (false)));
            Caption = 'Errortext';
            Editable = false;
            FieldClass = FlowField;
        }
        field(52; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
        }
        field(53; "Use Payment Type Code"; Code[10])
        {
            Caption = 'Use Payment Type Code';
            TableRelation = "Payment Type Code";
        }
        field(54; "With Backlog"; Boolean)
        {
            Caption = 'With Backlog';
        }
        field(55; "Only settled Accounts"; Boolean)
        {
            Caption = 'Only settled Accounts';
        }
        field(56; "Attend SEPA Due Date at DD"; Boolean)
        {
            Caption = 'Attend SEPA Due Date at Direct Debit';
        }
        field(57; "Line Sorting"; Option)
        {
            Caption = 'Line Sorting';
            OptionCaption = 'Due Date,Document Date,Document No.,External Document No.';
            OptionMembers = DueDate,DocDate,DocNo,ExtDocNo;
        }
        field(58; WarningText; Text[250])
        {
            CalcFormula = Lookup ("Payment Proposal Error"."Error Description" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                                     "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                                     "Warning Message" = CONST (true)));
            Caption = 'Warning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "Released by"; Code[50])
        {
            Caption = 'Released by';
            Editable = false;
        }
        field(60; "Include on Hold"; Boolean)
        {
            Caption = 'Include on Hold';
        }
        field(61; "First Discount Date"; Date)
        {
            Caption = 'Discount Date';
        }
        field(62; "Bank Country/Region Code"; Code[10])
        {
            Caption = 'Bank Country/Region Code';
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(70; "Orderer Bank Suppl. Branch Cd."; Code[10])
        {
            Caption = 'Orderer Bank Suppl. Branch Cd.';
            Editable = false;
        }
        field(71; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
        }
        key(Key2; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

