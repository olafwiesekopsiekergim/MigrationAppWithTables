table 270 "Bank Account"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Lookup Bank Branch No.
    //                 - New Fields added
    // AZV  13.01.10   OPplus DTAZV
    // AT   01.11.09   OPplus Payment AT
    // -----------------------------------------------------
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // 
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'Bank Account';
    DataCaptionFields = "No.", Name;
    Permissions = TableData "Bank Account Ledger Entry" = r;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(5; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(7; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; Contact; Text[50])
        {
            Caption = 'Contact';
        }
        field(9; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(10; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
        }
        field(13; "Bank Account No."; Text[30])
        {
            Caption = 'Bank Account No.';
        }
        field(14; "Transit No."; Text[20])
        {
            Caption = 'Transit No.';
        }
        field(15; "Territory Code"; Code[10])
        {
            Caption = 'Territory Code';
            TableRelation = Territory;
        }
        field(16; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(17; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(18; "Chain Name"; Code[10])
        {
            Caption = 'Chain Name';
        }
        field(20; "Min. Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Min. Balance';
        }
        field(21; "Bank Acc. Posting Group"; Code[10])
        {
            Caption = 'Bank Acc. Posting Group';
            TableRelation = "Bank Account Posting Group";
        }
        field(22; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(24; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(26; "Statistics Group"; Integer)
        {
            Caption = 'Statistics Group';
        }
        field(29; "Our Contact Code"; Code[10])
        {
            Caption = 'Our Contact Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(35; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(37; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(38; Comment; Boolean)
        {
            CalcFormula = Exist ("Comment Line" WHERE ("Table Name" = CONST ("Bank Account"),
                                                      "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(41; "Last Statement No."; Code[20])
        {
            Caption = 'Last Statement No.';
        }
        field(42; "Last Payment Statement No."; Code[20])
        {
            Caption = 'Last Payment Statement No.';
        }
        field(54; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(55; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(56; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(57; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(58; Balance; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("No."),
                                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                        "Transit Posting" = CONST (false)));
            Caption = 'Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                "Transit Posting" = CONST (false)));
            Caption = 'Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; "Net Change"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("No."),
                                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                        "Posting Date" = FIELD ("Date Filter"),
                                                                        "Transit Posting" = CONST (false)));
            Caption = 'Net Change';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Net Change (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                "Posting Date" = FIELD ("Date Filter"),
                                                                                "Transit Posting" = CONST (false)));
            Caption = 'Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Total on Checks"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Check Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("No."),
                                                                 "Entry Status" = FILTER (Posted),
                                                                 "Statement Status" = FILTER (<> Closed)));
            Caption = 'Total on Checks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(85; "Telex Answer Back"; Text[20])
        {
            Caption = 'Telex Answer Back';
        }
        field(89; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(91; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(92; County; Text[30])
        {
            Caption = 'County';
        }
        field(93; "Last Check No."; Code[20])
        {
            AccessByPermission = TableData "Check Ledger Entry" = R;
            Caption = 'Last Check No.';
        }
        field(94; "Balance Last Statement"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance Last Statement';
        }
        field(95; "Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("No."),
                                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                        "Posting Date" = FIELD (UPPERLIMIT ("Date Filter")),
                                                                        "Transit Posting" = CONST (false)));
            Caption = 'Balance at Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(96; "Balance at Date (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                "Posting Date" = FIELD (UPPERLIMIT ("Date Filter")),
                                                                                "Transit Posting" = CONST (false)));
            Caption = 'Balance at Date (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(97; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Debit Amount" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                "Posting Date" = FIELD ("Date Filter"),
                                                                                "Transit Posting" = CONST (false)));
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(98; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Credit Amount" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD ("Date Filter"),
                                                                                 "Transit Posting" = CONST (false)));
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99; "Debit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Debit Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                      "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                      "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                      "Posting Date" = FIELD ("Date Filter"),
                                                                                      "Transit Posting" = CONST (false)));
            Caption = 'Debit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Credit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("Bank Account Ledger Entry"."Credit Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                       "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                       "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                       "Posting Date" = FIELD ("Date Filter"),
                                                                                       "Transit Posting" = CONST (false)));
            Caption = 'Credit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(101; "Bank Branch No."; Text[20])
        {
            Caption = 'Bank Branch No.';
            TableRelation = "Bank Branch No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(102; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(103; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            ExtendedDatatype = URL;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(108; "Check Report ID"; Integer)
        {
            Caption = 'Check Report ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Report));
        }
        field(109; "Check Report Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Report),
                                                                        "Object ID" = FIELD ("Check Report ID")));
            Caption = 'Check Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; IBAN; Code[50])
        {
            Caption = 'IBAN';
        }
        field(111; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
        }
        field(113; "Bank Statement Import Format"; Code[20])
        {
            Caption = 'Bank Statement Import Format';
            TableRelation = "Bank Export/Import Setup".Code WHERE (Direction = CONST (Import));
        }
        field(115; "Credit Transfer Msg. Nos."; Code[10])
        {
            Caption = 'Credit Transfer Msg. Nos.';
            TableRelation = "No. Series";
        }
        field(116; "Direct Debit Msg. Nos."; Code[10])
        {
            Caption = 'Direct Debit Msg. Nos.';
            TableRelation = "No. Series";
        }
        field(117; "SEPA Direct Debit Exp. Format"; Code[20])
        {
            Caption = 'SEPA Direct Debit Exp. Format';
            TableRelation = "Bank Export/Import Setup".Code WHERE (Direction = CONST (Export));
        }
        field(170; "Creditor No."; Code[35])
        {
            Caption = 'Creditor No.';
        }
        field(1210; "Payment Export Format"; Code[20])
        {
            Caption = 'Payment Export Format';
            TableRelation = "Bank Export/Import Setup".Code WHERE (Direction = CONST (Export));
        }
        field(1211; "Bank Clearing Code"; Text[50])
        {
            Caption = 'Bank Clearing Code';
        }
        field(1212; "Bank Clearing Standard"; Text[50])
        {
            Caption = 'Bank Clearing Standard';
            TableRelation = "Bank Clearing Standard";
        }
        field(1213; "Bank Name - Data Conversion"; Text[50])
        {
            Caption = 'Bank Name - Data Conversion';
            TableRelation = "Bank Data Conv. Bank" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            ValidateTableRelation = false;
        }
        field(1250; "Match Tolerance Type"; Option)
        {
            Caption = 'Match Tolerance Type';
            OptionCaption = 'Percentage,Amount';
            OptionMembers = Percentage,Amount;
        }
        field(1251; "Match Tolerance Value"; Decimal)
        {
            Caption = 'Match Tolerance Value';
            DecimalPlaces = 0 : 5;
        }
        field(1260; "Positive Pay Export Code"; Code[20])
        {
            Caption = 'Positive Pay Export Code';
            TableRelation = "Bank Export/Import Setup".Code WHERE (Direction = CONST ("Export-Positive Pay"));
        }
        field(5001901; "Customer No."; Code[34])
        {
            Caption = 'Customer No.';
            Description = 'DYNPMT';
        }
        field(5001902; "Transit Balance"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("No."),
                                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                        "Transit Posting" = CONST (true)));
            Caption = 'Transit Balance';
            Description = 'DYNPMT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001903; "Transit Balance (LCY)"; Decimal)
        {
            CalcFormula = Sum ("Bank Account Ledger Entry"."Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                "Transit Posting" = CONST (true)));
            Caption = 'Transit Balance (LCY)';
            Description = 'DYNPMT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001904; "Creditor-ID"; Code[35])
        {
            Caption = 'Creditor-ID';
            Description = 'DYNPMT';
        }
        field(5001905; "Holder Name"; Text[50])
        {
            Caption = 'Holder Name';
            Description = 'DYNPMT';
        }
        field(5001906; "Holder Name 2"; Text[50])
        {
            Caption = 'Holder Name 2';
            Description = 'DYNPMT';
        }
        field(5001907; "Holder Address"; Text[50])
        {
            Caption = 'Holder Address';
            Description = 'DYNPMT';
        }
        field(5001908; "Holder Address 2"; Text[50])
        {
            Caption = 'Holder Address 2';
            Description = 'DYNPMT';
        }
        field(5001909; "Holder Post Code"; Code[20])
        {
            Caption = 'Holder Post Code';
            Description = 'DYNPMT';
            TableRelation = "Post Code";
        }
        field(5001910; "Holder City"; Text[30])
        {
            Caption = 'Holder City';
            Description = 'DYNPMT';
        }
        field(5001911; "Holder Mobile Phone"; Text[30])
        {
            Caption = 'Holder Mobile Phone';
            Description = 'DYNPMT';
        }
        field(5001912; "Holder Fax"; Text[30])
        {
            Caption = 'Holder Fax';
            Description = 'DYNPMT';
        }
        field(5001913; "Holder e-Mail"; Text[80])
        {
            Caption = 'Holder e-Mail';
            Description = 'DYNPMT';
        }
        field(5001914; "Reconciliation supplement"; Code[5])
        {
            Caption = 'Reconciliation supplement';
            Description = 'DYNPMT';
        }
        field(5001915; "SEPA Version"; Option)
        {
            Caption = 'SEPA Version';
            Description = 'DYNPMT';
            OptionCaption = '2.6 DK,2.7 DK,AT RB 6.0';
            OptionMembers = "2.6 DK","2.7 DK","AT RB 6.0";
        }
        field(5001916; "IBAN Only"; Boolean)
        {
            Caption = 'IBAN Only';
            Description = 'DYNPMT';
        }
        field(5001917; "Use DTAZV 2.7 DK"; Boolean)
        {
            Caption = 'Use DTAZV 2.7 DK';
            Description = 'DYNPMT';
        }
        field(5001918; "Allow CAMT Import"; Boolean)
        {
            Caption = 'Allow camt Import';
            Description = 'DYNPMT';
        }
        field(5001919; "DYN Checksum Algorithm"; Option)
        {
            Caption = 'Checksum Algorithm';
            Description = 'DYNPMT';
            OptionCaption = 'as PMT Setup,None,MD5,SHA1,SHA256';
            OptionMembers = "As Setup","None",MD5,SHA1,SHA256;
        }
        field(5157892; "Total Payment Amount"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Head"."Total Amount" WHERE ("Gen. Journal Template" = FIELD ("Journal Template Filter"),
                                                                            "Gen. Journal Batch" = FIELD ("Journal Batch Filter"),
                                                                            "Bal. Account No." = FIELD ("No.")));
            Caption = 'Total Payment Amount';
            Description = 'PMT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157893; "Journal Template Filter"; Code[10])
        {
            Caption = 'Gen. Journal Template Filter';
            Description = 'PMT';
            FieldClass = FlowFilter;
        }
        field(5157894; "Journal Batch Filter"; Code[10])
        {
            Caption = 'Journal Batch Filter';
            Description = 'PMT';
            FieldClass = FlowFilter;
        }
        field(5157895; "OPp AZV Cust. No."; Code[10])
        {
            Caption = 'Customer No.';
            Description = 'AZV';
        }
        field(5157896; "Account To Charge"; Code[20])
        {
            Caption = 'Charge To Acc. No.';
            Description = 'PMT';
            TableRelation = "Bank Account";
        }
        field(5157897; "Payment File Path"; Text[250])
        {
            Caption = 'Pmt. File Path';
            Description = 'PMT';
        }
        field(5157898; "Payment File Prefix"; Code[10])
        {
            Caption = 'Pmt. File Prefix';
            Description = 'PMT';
        }
        field(5157899; "MT103 Address"; Code[30])
        {
            Caption = 'MT103 Address';
            Description = 'PMT';
        }
        field(5157900; "MT101 Address"; Code[30])
        {
            Caption = 'MT101 Address';
            Description = 'PMT';
        }
        field(5157901; SepaCCT; Boolean)
        {
            Caption = 'SEPA: create CCT format';
            Description = 'PMT';
        }
        field(5157902; "PIP Amount"; Decimal)
        {
            CalcFormula = Sum ("PIP Entry"."Bank Amount" WHERE ("Bank Account No." = FIELD ("No."),
                                                               Open = CONST (true)));
            Caption = 'Payment in Process Amount';
            Description = 'PMT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157903; "PIP Amount (LCY)"; Decimal)
        {
            CalcFormula = Sum ("PIP Entry"."Amount (LCY)" WHERE ("Bank Account No." = FIELD ("No."),
                                                                Open = CONST (true)));
            Caption = 'Payment in Process Amount (LCY)';
            Description = 'PMT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157904; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
            Description = 'PMT';
        }
        field(5157905; "Clearing Sender ID"; Code[50])
        {
            Caption = 'Clearing Sender ID';
            Description = 'PMT';
        }
        field(5157906; "Report ID for Check"; Integer)
        {
            Caption = 'Check Report ID';
            Description = 'PMT';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(5157907; "Split Amount (LCY)"; Decimal)
        {
            Caption = 'Split Amount (LCY)';
            Description = 'PMT';
            Editable = true;
        }
        field(5157908; Priority; Integer)
        {
            Caption = 'Priority';
            Description = 'PMT';
            MinValue = 1;
        }
        field(5157910; "Supplemental Branch Code"; Code[10])
        {
            Caption = 'Supplemental Branch Code';
            Description = 'PMT';
        }
        field(5157960; "EDI Sender ID"; Code[35])
        {
            Caption = 'EDI Sender ID';
            Description = 'PMT AT';
        }
        field(5157961; "EDI Recipient ID"; Code[35])
        {
            Caption = 'EDI Recipient ID';
            Description = 'PMT AT';
        }
        field(5157962; "EDI Sender Name"; Text[35])
        {
            Caption = 'EDI Sender Name';
            Description = 'PMT AT';
        }
        field(5157963; "EDI Account ID"; Code[30])
        {
            Caption = 'EDI Account No.';
            Description = 'PMT AT';
        }
        field(5157970; "LSV Benef. BDD ID"; Code[10])
        {
            Caption = 'LSV Benef. BDD ID';
            Description = 'PMT CH';
            Enabled = false;
        }
        field(5157971; "LSV Benef. Name"; Text[35])
        {
            Caption = 'LSV Benef. Name';
            Description = 'PMT CH';
            Enabled = false;
        }
        field(5157972; "LSV Benef. Address"; Text[35])
        {
            Caption = 'LSV Benef. Address';
            Description = 'PMT CH';
            Enabled = false;
        }
        field(5157973; "LSV Benef. City"; Text[35])
        {
            Caption = 'LSV Benef. City';
            Description = 'PMT CH';
            Enabled = false;
        }
        field(5292332; "Avail. Guarantee Frame (LCY)"; Decimal)
        {
            Caption = 'Available Guarantee Frame (LCY)';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Bank Acc. Posting Group")
        {
        }
        key(Key4; "Currency Code")
        {
        }
        key(Key5; "Country/Region Code")
        {
        }
        key(Key6; "Bank Branch No.")
        {
        }
        key(Key7; "Customer No.")
        {
        }
        key(Key8; Priority)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Bank Account No.", "Currency Code")
        {
        }
    }
}

