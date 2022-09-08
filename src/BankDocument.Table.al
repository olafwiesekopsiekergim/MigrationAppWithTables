table 5001911 "Bank Document"
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

    Caption = 'Bank Document';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Import Register No."; Code[20])
        {
            Caption = 'Import Register No.';
            TableRelation = "Import Register";
        }
        field(3; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = "Bank Account";
        }
        field(4; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
        }
        field(5; "Bank-ID"; Code[12])
        {
            Caption = 'Bank-ID';
        }
        field(6; "Bank Account-ID"; Code[24])
        {
            Caption = 'Bank Account-ID';
        }
        field(7; "Currency-ID"; Code[3])
        {
            Caption = 'Currency-ID';
        }
        field(8; "Value Date"; Date)
        {
            Caption = 'Value Date';
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(10; Reference; Text[32])
        {
            Caption = 'Reference';
        }
        field(11; "Text Code"; Text[5])
        {
            Caption = 'Text Code';
        }
        field(12; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(13; "Posting Decription"; Text[50])
        {
            Caption = 'Posting Decription';
        }
        field(14; "Text Code Supplement"; Text[3])
        {
            Caption = 'Text Code Supplement';
        }
        field(15; "Bank Reference"; Text[32])
        {
            Caption = 'Bank Reference';
        }
        field(16; Infotext; Text[27])
        {
            Caption = 'Infotext';
        }
        field(17; Supplier; Text[27])
        {
            Caption = 'Supplier';
        }
        field(18; Supplier2; Text[27])
        {
            Caption = 'Supplier2';
        }
        field(19; "Purpose 1"; Text[27])
        {
            Caption = 'Purpose 1';
        }
        field(20; "Purpose 2"; Text[27])
        {
            Caption = 'Purpose 2';
        }
        field(21; "Purpose 3"; Text[27])
        {
            Caption = 'Purpose 3';
        }
        field(22; "Purpose 4"; Text[27])
        {
            Caption = 'Purpose 4';
        }
        field(23; "Purpose 5"; Text[27])
        {
            Caption = 'Purpose 5';
        }
        field(24; "Purpose 6"; Text[27])
        {
            Caption = 'Purpose 6';
        }
        field(25; "Purpose 7"; Text[27])
        {
            Caption = 'Purpose 7';
        }
        field(26; "Purpose 8"; Text[27])
        {
            Caption = 'Purpose 8';
        }
        field(27; "Purpose 9"; Text[27])
        {
            Caption = 'Purpose 9';
        }
        field(28; "Purpose 10"; Text[27])
        {
            Caption = 'Purpose 10';
        }
        field(29; "Purpose 11"; Text[27])
        {
            Caption = 'Purpose 11';
        }
        field(30; "Purpose 12"; Text[27])
        {
            Caption = 'Purpose 12';
        }
        field(31; "Purpose 13"; Text[27])
        {
            Caption = 'Purpose 13';
        }
        field(32; "Purpose 14"; Text[27])
        {
            Caption = 'Purpose 14';
        }
        field(33; "Additional Info"; Text[16])
        {
            Caption = 'Additional Info';
        }
        field(34; "Addition Info 2"; Text[10])
        {
            Caption = 'Addition Info 2';
        }
        field(35; Orderer; Text[27])
        {
            Caption = 'Orderer';
        }
        field(36; "Orderer 2"; Text[27])
        {
            Caption = 'Orderer 2';
        }
        field(37; "Bank Orderer"; Text[20])
        {
            Caption = 'Bank Orderer (BBN/BIC)';
        }
        field(38; "Account Orderer"; Text[34])
        {
            Caption = 'Account Orderer (Acc./IBAN)';
        }
        field(39; "Check No."; Code[20])
        {
            Caption = 'Check No.';
        }
        field(40; Primanota; Code[10])
        {
            Caption = 'Primanota';
        }
        field(41; Time; Time)
        {
            Caption = 'Time';
        }
        field(42; "Transaction Code"; Code[3])
        {
            Caption = 'Transaction Code';
            TableRelation = "Transaction Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(43; "Correction-ID"; Code[6])
        {
            Caption = 'Correction-ID';
        }
        field(101; "Import Date"; Date)
        {
            Caption = 'Import Date';
        }
        field(102; "Import Time"; Time)
        {
            Caption = 'Import Time';
        }
        field(103; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
        }
        field(104; "Debit/Credit Indicator"; Code[2])
        {
            Caption = 'Debit/Credit Indicator';
        }
        field(105; "Posting Key"; Code[4])
        {
            Caption = 'Posting Key';
        }
        field(106; "Origin Amount"; Decimal)
        {
            Caption = 'Origin Amount';
        }
        field(107; "Origin Currency"; Code[10])
        {
            Caption = 'Origin Currency';
        }
        field(108; Fees; Decimal)
        {
            Caption = 'Fees';
        }
        field(109; "Currency Code Fees"; Code[10])
        {
            Caption = 'Currency Code Fees';
        }
        field(110; "End-To-End-ID"; Code[35])
        {
            Caption = 'End-To-End-ID';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Import Register No.")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "Bank Account No.")
        {
        }
    }

    fieldgroups
    {
    }
}

