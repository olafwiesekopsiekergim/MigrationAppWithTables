table 5157896 "Payment Proposal Head"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // AZV  13.01.10   OPplus DTAZV
    // AT   01.11.09   OPplus Payment AT
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001594  27.05.2017  gbedv.gb    Validate in Order Bank IBAN Code corrected

    Caption = 'Payment Proposal Header';

    fields
    {
        field(1; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            NotBlank = true;
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account" WHERE ("Direct Posting" = CONST (true),
                                                                                          "Account Type" = CONST (Posting))
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST ("Bank Account")) "Bank Account";
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
        }
        field(8; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(9; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(10; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            Editable = false;
            TableRelation = "Payment Terms";
        }
        field(11; "Country/Region Code"; Code[10])
        {
            Caption = 'Cust./Vend. Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(12; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
        }
        field(13; "Bank Branch No."; Code[20])
        {
            Caption = 'Bank Branch No.';
        }
        field(14; "Bank Account No."; Code[34])
        {
            Caption = 'Bank Account No.';
        }
        field(15; "Bank BIC Code"; Code[20])
        {
            Caption = 'BIC-Code';
        }
        field(16; "Bank IBAN Code"; Code[50])
        {
            Caption = 'IBAN';
        }
        field(17; "Bank Code"; Code[10])
        {
            Caption = 'Bank Code';
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Account No."),
                                                                                                    "Inserted by Bank Import" = CONST (false))
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Bank Account".Code WHERE ("Vendor No." = FIELD ("Account No."),
                                                                                                                                                                             "Inserted by Bank Import" = CONST (false));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(18; "Orig. Payment Method"; Code[10])
        {
            Caption = 'Orig. Payment Method';
            Editable = false;
            TableRelation = "Payment Method";
        }
        field(19; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(20; "Print Payment Advice"; Boolean)
        {
            Caption = 'Print Payment Advice';
        }
        field(21; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            Editable = false;
        }
        field(23; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(24; "Payment Done"; Boolean)
        {
            Caption = 'Payment Done';
        }
        field(25; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            TableRelation = "Payment Type Code" WHERE (Inactive = CONST (false));
        }
        field(26; CitySearch; Code[30])
        {
            Caption = 'CitySearch';
        }
        field(27; "Payment Amount"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Posting Applied Amount" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                      "Journal Batch Name" = FIELD ("Gen. Journal Batch"),
                                                                                      "Journal Line No." = FIELD ("Gen. Journal Line")));
            Caption = 'Payment Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Gen. Journal Template"; Code[10])
        {
            Caption = 'Gen. Journal Template';
            NotBlank = true;
        }
        field(29; "Gen. Journal Line"; Integer)
        {
            Caption = 'Gen. Journal Line';
        }
        field(30; "Gen. Journal Batch"; Code[10])
        {
            Caption = 'Gen. Journal Batch';
            NotBlank = true;
        }
        field(31; "Reason Row 1"; Text[35])
        {
            Caption = 'Reason Row 1';
        }
        field(32; "Reason Row 2"; Text[35])
        {
            Caption = 'Reason Row 2';
        }
        field(33; "Reason Row 3"; Text[35])
        {
            Caption = 'Reason Row 3';
        }
        field(34; "Reason Row 4"; Text[35])
        {
            Caption = 'Reason Row 4';
        }
        field(35; "Reason Row 5"; Text[35])
        {
            Caption = 'Reason Row 5';
        }
        field(36; "Reason Row 6"; Text[35])
        {
            Caption = 'Reason Row 6';
        }
        field(37; "Reason Row 7"; Text[35])
        {
            Caption = 'Reason Row 7';
        }
        field(38; "Reason Row 8"; Text[35])
        {
            Caption = 'Reason Row 8';
        }
        field(39; "Reason Row 9"; Text[35])
        {
            Caption = 'Reason Row 9';
        }
        field(40; "Reason Row 10"; Text[35])
        {
            Caption = 'Reason Row 10';
        }
        field(41; "Reason Row 11"; Text[35])
        {
            Caption = 'Reason Row 11';
        }
        field(42; "Reason Row 12"; Text[35])
        {
            Caption = 'Reason Row 12';
        }
        field(43; "Reason Row 13"; Text[35])
        {
            Caption = 'Reason Row 13';
        }
        field(44; "Reason Row 14"; Text[35])
        {
            Caption = 'Reason Row 14';
        }
        field(45; "Position Counter"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line".Counter WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                     "Journal Batch Name" = FIELD ("Gen. Journal Batch"),
                                                                     "Journal Line No." = FIELD ("Gen. Journal Line")));
            Caption = 'Position Counter';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(46; "Pmt. Discount Amount"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Posting Payment Discount" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                        "Journal Batch Name" = FIELD ("Gen. Journal Batch"),
                                                                                        "Journal Line No." = FIELD ("Gen. Journal Line")));
            Caption = 'Pmt. Discount Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; Errortext; Text[250])
        {
            CalcFormula = Lookup ("Payment Proposal Error"."Error Description" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                     "Journal Batch Name" = FIELD ("Gen. Journal Batch"),
                                                                                     "Journal Line No." = FIELD ("Gen. Journal Line"),
                                                                                     "Warning Message" = CONST (false)));
            Caption = 'Errortext';
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(50; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(51; "Orderer Bank Name"; Text[50])
        {
            Caption = 'Orderer Bank Name';
            Editable = false;
        }
        field(52; "Orderer Bank Branch No."; Code[20])
        {
            Caption = 'Orderer Bank Branch No.';
            Editable = false;
        }
        field(53; "Orderer Bank Account No."; Code[34])
        {
            Caption = 'Orderer Bank Account No.';
            Editable = false;
        }
        field(54; "Orderer Bank BIC Code"; Code[20])
        {
            Caption = 'Orderer Bank BIC Code';
            Editable = false;
        }
        field(55; "Orderer Bank IBAN Code"; Code[50])
        {
            Caption = 'Orderer Bank IBAN Code';
            Editable = false;
        }
        field(56; "Orderer Country/Region Code"; Code[10])
        {
            Caption = 'Orderer Country/Region Code';
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(57; "Bank Country/Region Code"; Code[10])
        {
            Caption = 'Bank Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(58; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            Editable = false;
        }
        field(59; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
            Editable = false;
        }
        field(60; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            Editable = false;
        }
        field(61; "Single Payment"; Boolean)
        {
            Caption = 'Single Payment';
            Editable = false;
        }
        field(62; "Our Account No."; Text[20])
        {
            Caption = 'Our Account No.';
        }
        field(63; "Min. Pos. Payment Note"; Integer)
        {
            Caption = 'Min. Pos. Payment Note';
        }
        field(64; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(65; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
        }
        field(66; "Bank Account Owner"; Text[50])
        {
            Caption = 'Alternative Account Owner';
        }
        field(68; "Foreign Payment Type"; Option)
        {
            Caption = 'Foreign Payment Type';
            Description = 'DTAZV';
            OptionCaption = 'General,Standard EU,EU Express,SWIFT-Express,Cross-border Transfer';
            OptionMembers = General,"EU Standard","EU Express","SWIFT Express","Cross-border Transfer";
        }
        field(69; "Orderer Bank Currency Code"; Code[3])
        {
            Caption = 'Orderer Bank Currency Code';
            Editable = false;
        }
        field(71; Charges; Option)
        {
            Caption = 'Charges';
            OptionCaption = 'Share,Orderer,Beneficiary';
            OptionMembers = Share,Orderer,Beneficiary;
        }
        field(72; "No. of Reports"; Integer)
        {
            CalcFormula = Count ("Bundesbank Report" WHERE ("Gen. Journal Template" = FIELD ("Gen. Journal Template"),
                                                           "Gen. Journal Batch" = FIELD ("Gen. Journal Batch"),
                                                           "Gen. Journal Line" = FIELD ("Gen. Journal Line")));
            Caption = 'Reports Bundesbank';
            Description = 'DTAZV';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Pmt. Currency Code"; Code[10])
        {
            Caption = 'Pmt. Currency Code';
            TableRelation = Currency;
        }
        field(77; "Pmt. Amount (LCY)"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Pmt. Amount (LCY)" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                 "Journal Batch Name" = FIELD ("Gen. Journal Batch"),
                                                                                 "Journal Line No." = FIELD ("Gen. Journal Line")));
            Caption = 'Payment Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; "Instruction 1"; Code[10])
        {
            Caption = 'Instruction Code';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = FIELD ("Payment Type Code"));
        }
        field(79; "Instruction 2"; Code[10])
        {
            Caption = 'Instruction Code 2';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = FIELD ("Payment Type Code"));
        }
        field(80; "Instruction 3"; Code[10])
        {
            Caption = 'Instruction Code 3';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = FIELD ("Payment Type Code"));
        }
        field(81; "Instruction 4"; Code[10])
        {
            Caption = 'Instruction Code 4';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = FIELD ("Payment Type Code"));
        }
        field(82; "Instruction Info"; Text[25])
        {
            Caption = 'Instruction Add. Info';
            Description = 'DTAZV';
        }
        field(83; "Pay in Currency"; Code[10])
        {
            Caption = 'Pay in Currency';
            TableRelation = Currency;
        }
        field(90; "Mandate ID"; Code[40])
        {
            Caption = 'Mandate ID';
            TableRelation = "Bank Account Mandate" WHERE ("Account No." = FIELD ("Account No."),
                                                          Code = FIELD ("Bank Code"));
        }
        field(91; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
        }
        field(92; "Check Ledger Entry No."; Integer)
        {
            Caption = 'Check Ledger Entry No.';
            TableRelation = "Check Ledger Entry";
        }
        field(93; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(94; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,,,Bank Account';
            OptionMembers = "G/L Account",,,"Bank Account";
        }
        field(96; "Limit Lines per Head"; Integer)
        {
            Caption = 'Limit Lines per Head';
        }
        field(97; WarningText; Text[250])
        {
            CalcFormula = Lookup ("Payment Proposal Error"."Error Description" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                     "Journal Batch Name" = FIELD ("Gen. Journal Batch"),
                                                                                     "Journal Line No." = FIELD ("Gen. Journal Line"),
                                                                                     "Warning Message" = CONST (true)));
            Caption = 'Warning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(98; "Int. Pmt. Method Code"; Code[10])
        {
            Caption = 'Int. Pmt. Method Code';
            Editable = false;
        }
        field(99; "Int. Bank Code"; Code[34])
        {
            Caption = 'Int. Bank Code';
            Editable = false;
        }
        field(100; "Payment Amount Sum"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Posting Applied Amount" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                      "Journal Batch Name" = FIELD ("Gen. Journal Batch")));
            Caption = 'Payment Amount Sum';
            Editable = false;
            FieldClass = FlowField;
        }
        field(101; "Pmt. Amount (LCY) Sum"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Pmt. Amount (LCY)" WHERE ("Journal Template Name" = FIELD ("Gen. Journal Template"),
                                                                                 "Journal Batch Name" = FIELD ("Gen. Journal Batch")));
            Caption = 'Payment Amount (LCY) Sum';
            Editable = false;
            FieldClass = FlowField;
        }
        field(102; "Int. Mandate ID"; Code[40])
        {
            Caption = 'Int. Mandate ID';
            Editable = false;
        }
        field(103; "SEPA Due Days"; Integer)
        {
            Caption = 'SEPA Due Days';
        }
        field(104; "Trading Type"; Option)
        {
            Caption = 'Trading Type';
            OptionCaption = ' ,Transit Trade,Service,Capital Trade';
            OptionMembers = " ",Transit,Service,Capital;
        }
        field(105; "Service No."; Code[10])
        {
            Caption = 'Service No.';
            TableRelation = "Bundesbank Code";
        }
        field(106; "Mandate Status"; Code[4])
        {
            Caption = 'Mandate Status';
            ValuesAllowed = '', 'FRST', 'RCUR', 'FNAL', 'OOFF';
        }
        field(107; "Mandate Type"; Option)
        {
            Caption = 'Mandate Type';
            OptionCaption = 'CORE,B2B,COR1';
            OptionMembers = CORE,B2B,COR1;
        }
        field(108; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
        }
        field(109; Updated; Boolean)
        {
            Caption = 'Updated';
            Description = 'InternalField';
        }
        field(110; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
        }
        field(120; "Transit No."; Text[20])
        {
            Caption = 'Transit No.';
        }
        field(130; "ISO Pmt. Transaction SvcLvl"; Option)
        {
            Caption = 'ISO Pmt. Transaction SvcLvl';
            OptionCaption = ' ,URGP,NURG,SDVA';
            OptionMembers = " ",URGP,NURG,SDVA;
        }
        field(140; "Orderer Bank Suppl. Branch Cd."; Code[10])
        {
            Caption = 'Orderer Bank Suppl. Branch Cd.';
        }
        field(144; "SHA-256 Hash Value"; Text[100])
        {
            Caption = 'SHA-256 Hash Value';
        }
        field(145; "Merge Mark"; Boolean)
        {
            Caption = 'Merge Mark';
        }
        field(5157960; "Customer Reference No."; Code[23])
        {
            Caption = 'Customer Reference No.';
            Description = 'PMT';
        }
    }

    keys
    {
        key(Key1; "Gen. Journal Template", "Gen. Journal Batch", "Gen. Journal Line")
        {
            Clustered = true;
        }
        key(Key2; "Gen. Journal Template", "Gen. Journal Batch", "Search Name")
        {
        }
        key(Key3; "Gen. Journal Template", "Gen. Journal Batch", Name)
        {
        }
        key(Key4; "Gen. Journal Template", "Gen. Journal Batch", "Account Type", "Account No.", "Payment Type Code")
        {
        }
        key(Key5; "Gen. Journal Template", "Gen. Journal Batch", CitySearch, "Account No.")
        {
        }
        key(Key6; "Gen. Journal Template", "Gen. Journal Batch", "Post Code", "Account No.")
        {
        }
        key(Key7; "Search Name")
        {
        }
        key(Key8; "Gen. Journal Template", "Gen. Journal Batch", "Payment Type Code", "Account Type", "Account No.")
        {
        }
        key(Key9; "Gen. Journal Template", "Gen. Journal Batch", "Total Amount")
        {
        }
        key(Key10; "Gen. Journal Template", "Gen. Journal Batch", "Bal. Account No.")
        {
            SumIndexFields = "Total Amount";
        }
        key(Key11; "Document No.", "Posting Date")
        {
        }
        key(Key12; "Gen. Journal Template", "Gen. Journal Batch", "Payment Type Code", "SEPA Due Days")
        {
        }
        key(Key13; "Gen. Journal Template", "Gen. Journal Batch", Priority)
        {
        }
    }

    fieldgroups
    {
    }
}

