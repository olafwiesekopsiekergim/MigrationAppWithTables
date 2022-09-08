table 5370525 "Detailed G/L Entry"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn.OGL  25.02.2015  OGL      akq        Created
    // ================================================================================

    Caption = 'Detailed G/L Entry';
    DataCaptionFields = "G/L Account No.";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Lfd. Nr.';
        }
        field(2; "G/L Entry No."; Integer)
        {
            Caption = 'Sachposten Lfd. Nr.';
            TableRelation = "G/L Entry";
        }
        field(3; "Entry Type"; Option)
        {
            Caption = 'Postenart';
            OptionCaption = ',Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain,,,,Appln. Rounding,Correction of Remaining Amount';
            OptionMembers = ,"Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain",,,,"Appln. Rounding","Correction of Remaining Amount";
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Buchungsdatum';
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Belegart';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Belegnr.';
        }
        field(7; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(8; "Additional Currency Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Additional Currency Amount';
        }
        field(9; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(10; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(11; "User ID"; Code[50])
        {
            Caption = 'User ID';
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
        field(18; "Add.-Currency Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Add.-Currency Debit Amount';
        }
        field(19; "Add.-Currency Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Add.-Currency Credit Amount';
        }
        field(20; "Initial Entry Due Date"; Date)
        {
            Caption = 'Initial Entry Due Date';
        }
        field(21; "Initial Entry Global Dim. 1"; Code[10])
        {
            Caption = 'Initial Entry Global Dim. 1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(22; "Initial Entry Global Dim. 2"; Code[10])
        {
            Caption = 'Initial Entry Global Dim. 2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(35; "Initial Document Type"; Option)
        {
            Caption = 'Initial Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(36; "Applied G/L Entry No."; Integer)
        {
            Caption = 'Applied G/L Entry No.';
        }
        field(37; Unapplied; Boolean)
        {
            Caption = 'Unapplied';
        }
        field(38; "Unapplied by Entry No."; Integer)
        {
            Caption = 'Unapplied by Entry No.';
        }
        field(39; "Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Amount (FCY)';
        }
        field(40; "Debit Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount (FCY)';
        }
        field(41; "Credit Amount (FCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount (FCY)';
        }
        field(42; "Application No."; Integer)
        {
            Caption = 'Application No.';
            Editable = false;
        }
        field(43; "OE Switch"; Option)
        {
            Caption = 'OE Switch';
            OptionCaption = ' ,Switch to OE,OE Closing';
            OptionMembers = " ","Switch to OE","OE Closing";
        }
        field(44; "Application Currency Code"; Code[10])
        {
            Caption = 'Application Currency Code';
            TableRelation = Currency;
        }
        field(45; "Application Currency Factor"; Decimal)
        {
            Caption = 'Application Currency Factor';
        }
        field(46; "Application Currency Amount"; Decimal)
        {
            Caption = 'Amount Application Currency';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
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
        key(Key2; "G/L Entry No.", "Posting Date")
        {
        }
        key(Key3; "G/L Entry No.", "Entry Type", "Posting Date")
        {
            SumIndexFields = Amount, "Amount (FCY)", "Additional Currency Amount", "Debit Amount", "Credit Amount", "Add.-Currency Debit Amount", "Add.-Currency Credit Amount", "Application Currency Amount";
        }
        key(Key4; "Entry Type", "G/L Entry No.")
        {
            SumIndexFields = "Amount (FCY)", "Debit Amount (FCY)", "Credit Amount (FCY)";
        }
        key(Key5; "Document No.")
        {
        }
        key(Key6; "Applied G/L Entry No.", "Entry Type")
        {
        }
        key(Key7; "G/L Account No.")
        {
            SumIndexFields = Amount;
        }
        key(Key8; "Transaction No.", "G/L Account No.", "Entry Type")
        {
        }
        key(Key9; "Application No.", "G/L Account No.", "Entry Type")
        {
        }
    }

    fieldgroups
    {
    }
}

