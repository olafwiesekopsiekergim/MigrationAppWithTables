table 5001931 "camt Bank Document"
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

    Caption = 'camt Bank Document';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Import No."; Code[20])
        {
            Caption = 'Import No.';
            TableRelation = "camt Import Header";
        }
        field(3; "File Message ID"; Code[35])
        {
            Caption = 'File Message-ID';
        }
        field(4; "File Creation Date"; Date)
        {
            Caption = 'File Creation Date';
        }
        field(5; "Message Receipt ID"; Code[35])
        {
            Caption = 'Message Receipt ID';
        }
        field(6; "Message Page No"; Integer)
        {
            Caption = 'Message Page No';
        }
        field(7; "Message Last Page"; Boolean)
        {
            Caption = 'Message Last Page';
        }
        field(8; "Statement Ref. No."; Code[35])
        {
            Caption = 'Statement Ref. No.';
        }
        field(9; "Elec. Statement No."; Code[50])
        {
            Caption = 'electr. Statement No.';
        }
        field(10; "Statement No."; Code[50])
        {
            Caption = 'Statement No.';
        }
        field(11; "Statement Creation Date"; Date)
        {
            Caption = 'Statement Creation Date';
        }
        field(12; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
        }
        field(13; "Bank Currency Code"; Code[10])
        {
            Caption = 'Bank Currency Code';
        }
        field(14; "Bank Acc. Holder Name"; Text[140])
        {
            Caption = 'Bank Acc. Holder Name';
        }
        field(15; "Bank Acc. IBAN (import)"; Code[35])
        {
            Caption = 'Bank Acc. IBAN (import)';
        }
        field(16; "Bank Acc. BIC (import)"; Text[50])
        {
            Caption = 'Bank Acc. BIC (import)';
        }
        field(17; "VAT Registration No."; Code[35])
        {
            Caption = 'VAT Registration No.';
        }
        field(18; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(19; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(20; "Transaction Date"; Date)
        {
            Caption = 'Transaction Date';
        }
        field(21; "Value Date"; Date)
        {
            Caption = 'Value Date';
        }
        field(22; "Bank Reference"; Code[35])
        {
            Caption = 'Bank Reference';
        }
        field(23; "Ref. Message Name ID"; Code[35])
        {
            Caption = 'Ref. Message Name ID';
        }
        field(24; "Ref. Message ID"; Code[35])
        {
            Caption = 'Ref. Message ID';
        }
        field(25; "Message ID Collector"; Code[35])
        {
            Caption = 'Message ID Collector';
        }
        field(26; "Pmt Inf ID Collector"; Code[35])
        {
            Caption = 'Pmt Inf ID Collector';
        }
        field(27; "No. of Txs Collector"; Integer)
        {
            Caption = 'No. of Txs Collector';
        }
        field(28; "End-To-End-ID Transaction"; Code[35])
        {
            Caption = 'End-To-End-ID Transaction';
        }
        field(29; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
        }
        field(30; "Check No."; Code[35])
        {
            Caption = 'Check No.';
        }
        field(31; "Order Amount"; Decimal)
        {
            Caption = 'Order Amount';
        }
        field(32; "Order Currency"; Code[10])
        {
            Caption = 'Order Currency Code';
        }
        field(33; "Transaction Amount"; Decimal)
        {
            Caption = 'Transaction Amount';
        }
        field(34; "Transaction Currency"; Code[10])
        {
            Caption = 'Transaction Currency Code';
        }
        field(35; "Amount before Expenses"; Decimal)
        {
            Caption = 'Amount before Expenses';
        }
        field(36; "Currency for Expense Calc."; Code[10])
        {
            Caption = 'Currency Code f. Expense Calc.';
        }
        field(37; "Source Currency"; Code[10])
        {
            Caption = 'Source Currency Code';
        }
        field(38; "Target Currency"; Code[10])
        {
            Caption = 'Target Currency Code';
        }
        field(39; "Exchange Rate"; Decimal)
        {
            Caption = 'Exchange Rate';
        }
        field(40; "Type Transaction Code"; Code[10])
        {
            Caption = 'Transaction Code';
            TableRelation = "Transaction Code";
        }
        field(41; "Type Text Code SWIFT"; Code[10])
        {
            Caption = 'Text Code SWIFT';
            TableRelation = "SWIFT Transactioncode".Code;
        }
        field(42; "Type Primanota"; Code[10])
        {
            Caption = 'Primanota';
        }
        field(43; "Type Textcode Supplement"; Code[10])
        {
            Caption = 'Textcode Supplement';
            TableRelation = "Text Code Supplement";
        }
        field(44; "Type Publisher"; Code[10])
        {
            Caption = 'Publisher Codes';
        }
        field(45; Fees; Decimal)
        {
            Caption = 'Fees';
        }
        field(46; "Currency Code Fees"; Code[10])
        {
            Caption = 'Currency Code Fees';
        }
        field(47; "Name Payer / Receiver"; Text[140])
        {
            Caption = 'Name (Debitor)';
        }
        field(48; "IBAN Payer / Receiver"; Code[34])
        {
            Caption = 'IBAN (Debitor)';
        }
        field(49; "ID Payer / Receiver"; Code[35])
        {
            Caption = 'ID (Debitor)';
        }
        field(50; "Holder Name Payer / Receiver"; Text[140])
        {
            Caption = 'Name Kontoinhaber (Debitor)';
        }
        field(51; "Creditor-ID Receiver"; Code[35])
        {
            Caption = 'Creditor-ID (Creditor)';
        }
        field(52; "Name of Creditor Ref. Party"; Text[140])
        {
            Caption = 'Name of Holder (Creditor)';
        }
        field(53; "Purpose Code"; Code[10])
        {
            Caption = 'Purpose Code';
        }
        field(54; Purpose; Text[140])
        {
            Caption = 'Purpose';
        }
        field(55; "Return Transaction Code"; Code[10])
        {
            Caption = 'Return Transaction Code';
            TableRelation = "Transaction Code";
        }
        field(56; "Return Text Code SWIFT"; Code[10])
        {
            Caption = 'Return Text Code SWIFT';
            TableRelation = "SWIFT Transactioncode";
        }
        field(57; "Return Primanota"; Code[10])
        {
            Caption = 'Return Primanota';
        }
        field(58; "Return Text Code Supplement"; Code[10])
        {
            Caption = 'Return Text Code Supplement';
            TableRelation = "Text Code Supplement";
        }
        field(59; "Return Publisher"; Code[35])
        {
            Caption = 'Publisher Return Codes';
        }
        field(60; "Name of Return giver"; Text[140])
        {
            Caption = 'Name Return Giver';
        }
        field(61; "BIC / BEI Return giver"; Code[50])
        {
            Caption = 'BIC / BEI Return Giver';
        }
        field(62; "SEPA Return Code"; Code[35])
        {
            Caption = 'SEPA Return Code';
        }
        field(63; "DTA Return Code"; Code[35])
        {
            Caption = 'DTA Return Code';
        }
        field(64; "Return Description"; Text[105])
        {
            Caption = 'Return Description';
        }
        field(65; "Transaction Add. Information"; Text[140])
        {
            Caption = 'Transaction Add. Information';
        }
        field(66; "Balance Last Statement"; Decimal)
        {
            Caption = 'Balance Last Statement';
        }
        field(67; "Statement Ending Balance"; Decimal)
        {
            Caption = 'Statement Ending Balance';
        }
        field(68; "Name Creditor"; Text[140])
        {
            Caption = 'Name (Creditor)';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Import No.")
        {
        }
    }

    fieldgroups
    {
    }
}

