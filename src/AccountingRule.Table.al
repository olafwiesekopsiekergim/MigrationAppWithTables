table 5157811 "Accounting Rule"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    //      12.01.09   New Field "No." as Primary Key; "Autoincrement" in OnInsert()-Trigger
    // -----------------------------------------------------

    Caption = 'Accounting Rule';

    fields
    {
        field(1; Catchword; Code[50])
        {
            Caption = 'Catchword';
            NotBlank = true;
        }
        field(2; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'FieldNo';
            TableRelation = Field."No." WHERE (TableNo = CONST (5157809));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
        }
        field(4; "Catchword 2"; Code[50])
        {
            Caption = 'Catchword 2';
        }
        field(5; "Field Name"; Text[30])
        {
            Caption = 'Fieldname';
            Editable = false;
        }
        field(6; "Document Type"; Option)
        {
            Caption = 'Document Type';
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(7; "Disable Import"; Boolean)
        {
            Caption = 'Disable Import';
        }
        field(8; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(9; "Account No."; Code[20])
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
        field(10; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(11; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(12; "Amount 2nd Line"; Decimal)
        {
            Caption = 'Amount 2nd Line';
        }
        field(13; "Account Type 2nd Line"; Option)
        {
            Caption = 'Account Type 2nd Line';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(14; "Account No. 2nd Line"; Code[20])
        {
            Caption = 'Account No. 2nd Line';
            TableRelation = IF ("Account Type 2nd Line" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type 2nd Line" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type 2nd Line" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type 2nd Line" = CONST ("Bank Account")) "Bank Account";
        }
        field(15; "Disable Application"; Boolean)
        {
            Caption = 'Disable Application';
        }
        field(16; "Transit Entry"; Boolean)
        {
            Caption = 'Transit Entry';
        }
        field(17; "Shortcut Dim. 1 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code 2nd Line';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(18; "Shortcut Dim. 2 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code 2nd Line';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(19; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
            TableRelation = IF ("Import to Account Type" = CONST ("G/L Account")) "G/L Account" WHERE ("Account Type" = CONST (Posting))
            ELSE
            IF ("Import to Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Import to Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Import to Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(20; "Posting Description 2nd Line"; Text[50])
        {
            Caption = 'Posting Description 2nd Line';
        }
        field(21; "Check Only Account Type"; Boolean)
        {
            Caption = 'Check only account type';
        }
        field(22; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(23; "Amount Filter"; Option)
        {
            BlankZero = true;
            Caption = 'Amount Filter';
            OptionCaption = ' ,Positive,Negative';
            OptionMembers = " ","Positive Only","Negative Only";
        }
        field(24; "Analyze Amount"; Decimal)
        {
            Caption = 'Analyze Amount';
        }
        field(25; Payback; Boolean)
        {
            Caption = 'Payback';
        }
        field(26; "Abbreviations Charges 2nd Line"; Text[30])
        {
            Caption = 'Abbreviations Charges 2nd Line';
        }
        field(27; "Field Separator Reason Text"; Text[1])
        {
            Caption = 'Field Separator';
        }
        field(28; "Decimal Separator Charges"; Option)
        {
            Caption = 'Decimal Separator Charges';
            OptionCaption = 'Comma,Period';
            OptionMembers = Comma,Period;
        }
        field(29; "Mark as Finished"; Boolean)
        {
            Caption = 'Mark as Finished';
        }
        field(30; "Process as Discount in REMADV"; Boolean)
        {
            Caption = 'Mark as Discount in REMADV';
        }
        field(31; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(32; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(33; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(34; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(35; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(36; "Gen. Prod. Posting Group 2nd"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group 2nd Line';
            TableRelation = "Gen. Product Posting Group";
        }
        field(37; "VAT Prod. Posting Group 2nd"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group 2nd Line';
            TableRelation = "VAT Product Posting Group";
        }
        field(38; "Gen. Bus. Posting Group 2nd"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group 2nd Line';
            TableRelation = "Gen. Business Posting Group";
        }
        field(39; "VAT Bus. Posting Group 2nd"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group 2nd Line';
            TableRelation = "VAT Business Posting Group";
        }
        field(40; "Gen. Posting Type 2nd"; Option)
        {
            Caption = 'Gen. Posting Type 2nd Line';
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(41; "Shortcut Dimension 3 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code';
        }
        field(42; "Shortcut Dimension 4 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code';
        }
        field(43; "Shortcut Dimension 5 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code';
        }
        field(44; "Shortcut Dimension 6 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code';
        }
        field(45; "Shortcut Dimension 7 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code';
        }
        field(46; "Shortcut Dimension 8 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code';
        }
        field(47; "Shortcut Dim. 3 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code 2nd Line';
        }
        field(48; "Shortcut Dim. 4 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code 2nd Line';
        }
        field(49; "Shortcut Dim. 5 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code 2nd Line';
        }
        field(50; "Shortcut Dim. 6 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code 2nd Line';
        }
        field(51; "Shortcut Dim. 7 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code 2nd Line';
        }
        field(52; "Shortcut Dim. 8 Code 2nd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code 2nd Line';
        }
        field(53; "Gen. Posting Type 3rd"; Option)
        {
            Caption = 'Gen. Posting Type 3rd Line';
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(54; "Gen. Bus. Posting Group 3rd"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group 3rd Line';
            TableRelation = "Gen. Business Posting Group";
        }
        field(55; "Gen. Prod. Posting Group 3rd"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group 3rd Line';
            TableRelation = "Gen. Product Posting Group";
        }
        field(56; "VAT Bus. Posting Group 3rd"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group 3rd Line';
            TableRelation = "VAT Business Posting Group";
        }
        field(57; "VAT Prod. Posting Group 3rd"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group 3rd Line';
            TableRelation = "VAT Product Posting Group";
        }
        field(58; "Shortcut Dim. 1 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code 3rd Line';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(59; "Shortcut Dim. 2 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code 3rd Line';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(60; "Shortcut Dim. 3 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code 3rd Line';
        }
        field(61; "Shortcut Dim. 4 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code 3rd Line';
        }
        field(62; "Shortcut Dim. 5 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code 3rd Line';
        }
        field(63; "Shortcut Dim. 6 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code 3rd Line';
        }
        field(64; "Shortcut Dim. 7 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code 3rd Line';
        }
        field(65; "Shortcut Dim. 8 Code 3rd Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code 3rd Line';
        }
        field(66; "Amount 3rd Line"; Decimal)
        {
            Caption = 'Amount 3rd Line';
        }
        field(67; "Account Type 3rd Line"; Option)
        {
            Caption = 'Account Type 3rd Line';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(68; "Account No. 3rd Line"; Code[20])
        {
            Caption = 'Account No. 3rd Line';
            TableRelation = IF ("Account Type 3rd Line" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type 3rd Line" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type 3rd Line" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type 3rd Line" = CONST ("Bank Account")) "Bank Account";
        }
        field(69; "Posting Description 3rd Line"; Text[50])
        {
            Caption = 'Posting Description 3rd Line';
        }
        field(70; "Gen. Posting Type 4th"; Option)
        {
            Caption = 'Gen. Posting Type 4th';
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(71; "Gen. Bus. Posting Group 4th"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group 4th';
            TableRelation = "Gen. Business Posting Group";
        }
        field(72; "Gen. Prod. Posting Group 4th"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group 4th';
            TableRelation = "Gen. Product Posting Group";
        }
        field(73; "VAT Bus. Posting Group 4th"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group 4th';
            TableRelation = "VAT Business Posting Group";
        }
        field(74; "VAT Prod. Posting Group 4th"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group 4th';
            TableRelation = "VAT Product Posting Group";
        }
        field(75; "Shortcut Dim. 1 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 1 Code 4th Line';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(76; "Shortcut Dim. 2 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dim. 2 Code 4th Line';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(77; "Shortcut Dim. 3 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 3 Code 4th Line';
        }
        field(78; "Shortcut Dim. 4 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 4 Code 4th Line';
        }
        field(79; "Shortcut Dim. 5 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 5 Code 4th Line';
        }
        field(80; "Shortcut Dim. 6 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code 4th Line';
        }
        field(81; "Shortcut Dim. 7 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 7 Code 4th Line';
        }
        field(82; "Shortcut Dim. 8 Code 4th Line"; Code[20])
        {
            Caption = 'Shortcut Dimension 8 Code 4th Line';
        }
        field(83; "Amount 4th Line"; Decimal)
        {
            Caption = 'Amount 4th Line';
        }
        field(84; "Account Type 4th Line"; Option)
        {
            Caption = 'Account Type 4th Line';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(85; "Account No. 4th Line"; Code[20])
        {
            Caption = 'Account No. 4th Line';
            TableRelation = IF ("Account Type 4th Line" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type 4th Line" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type 4th Line" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type 4th Line" = CONST ("Bank Account")) "Bank Account";
        }
        field(86; "Posting Description 4th Line"; Text[50])
        {
            Caption = 'Posting Description 4th Line';
        }
        field(87; "BC Code Filter"; Text[20])
        {
            Caption = 'BC Code Filter';
        }
        field(88; "Document Type 2nd Line"; Option)
        {
            Caption = 'Document Type 2nd Line';
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(89; "Document Type 3rd Line"; Option)
        {
            Caption = 'Document Type 3rd Line';
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(90; "Document Type 4th Line"; Option)
        {
            Caption = 'Document Type 4th Line';
            InitValue = Payment;
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(91; "Insert per Doc."; Boolean)
        {
            Caption = 'Insert per Document';
            Description = 'Remadv Typ Markant';
        }
        field(92; Delcredere; Boolean)
        {
            Caption = 'Del credere';
            Description = 'Remadv Typ Markant';
        }
        field(93; "VAT Marker"; Boolean)
        {
            Caption = 'VAT Marker';
            Description = 'Remadv Typ Markant';
        }
        field(94; "Fees from CSV-Port"; Boolean)
        {
            Caption = 'Fees from CSV-Port';
        }
        field(95; "Amount without Fees"; Boolean)
        {
            Caption = 'Amount without Fees';
        }
        field(96; "Draw Sign of Fees"; Boolean)
        {
            Caption = 'Draw Sign of Fees';
        }
        field(97; Factor; Decimal)
        {
            Caption = 'Factor';
        }
        field(98; "Percent 2nd Line"; Decimal)
        {
            Caption = 'Percent from Amount 2nd Line';
            DecimalPlaces = 2 : 4;
        }
        field(99; "Percent 3rd Line"; Decimal)
        {
            Caption = 'Percent from Amount 3rd Line';
        }
        field(100; "Percent 4th Line"; Decimal)
        {
            Caption = 'Percent from Amount 4th Line';
        }
        field(101; "Reduce Amount 2nd Line"; Boolean)
        {
            Caption = 'Reduce Amount 2nd Line?';
        }
        field(102; "Reduce Amount 3rd Line"; Boolean)
        {
            Caption = 'Reduce Amount 3rd Line?';
        }
        field(103; "Reduce Amount 4th Line"; Boolean)
        {
            Caption = 'Reduce Amount 4th Line?';
        }
        field(104; "Basis of Calc. 3rd Line"; Option)
        {
            Caption = 'Basis for calculation of percentage 3rd Line';
            InitValue = "Orig. Amount";
            OptionCaption = 'reduced Amount,orig. Amount';
            OptionMembers = "reduced Amount","Orig. Amount";
        }
        field(105; "Basis of Calc. 4th Line"; Option)
        {
            Caption = 'Basis for calculation of percentage 4th Line';
            InitValue = "Orig. Amount";
            OptionCaption = 'reduced Amount,orig. Amount';
            OptionMembers = "reduced Amount","Orig. Amount";
        }
        field(106; "REMADV Debit"; Boolean)
        {
            Caption = 'REMADV Debit';
        }
        field(107; "Delcredere 2nd Line"; Boolean)
        {
            Caption = 'Del credere 2nd Line';
            Description = 'Remadv Typ Markant';
        }
        field(108; "Delcredere 3rd Line"; Boolean)
        {
            Caption = 'Del credere 3rd Line';
            Description = 'Remadv Typ Markant';
        }
        field(109; "Delcredere 4th Line"; Boolean)
        {
            Caption = 'Del credere 4th Line';
            Description = 'Remadv Typ Markant';
        }
        field(110; "Abbreviations Charges 3rd Line"; Text[30])
        {
            Caption = 'Abbreviations Charges 3rd Line';
        }
        field(111; "Abbreviations Charges 4th Line"; Text[30])
        {
            Caption = 'Abbreviations Charges 4th Line';
        }
        field(112; "Suppress Zero Lines 2nd Line"; Boolean)
        {
            Caption = 'Suppress Zero Lines 2nd Line';
        }
        field(113; "Suppress Zero Lines 3rd Line"; Boolean)
        {
            Caption = 'Suppress Zero Lines 3rd Line';
        }
        field(114; "Suppress Zero Lines 4th Line"; Boolean)
        {
            Caption = 'Suppress Zero Lines 4th Line';
        }
        field(115; "Document No. Match needed"; Boolean)
        {
            Caption = 'Document No. Match needed';
        }
        field(116; "Max. Amount"; Decimal)
        {
            Caption = 'Max. Amount';
        }
        field(117; "Last Date Used"; Date)
        {
            CalcFormula = Max ("Pmt. Import Line"."Posting Date" WHERE ("Accounting Rule No." = FIELD ("No.")));
            Caption = 'Last Date Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(118; "Quantity Used"; Integer)
        {
            CalcFormula = Count ("Pmt. Import Line" WHERE ("Accounting Rule No." = FIELD ("No.")));
            Caption = 'Quantity Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(119; "Text Extract 1"; Option)
        {
            Caption = 'Text Extract 1';
            OptionCaption = ' ,Reason Row 1,Reason Row 2,Reason Row 3,Reason Row 4';
            OptionMembers = " ","Reason Row 1","Reason Row 2","Reason Row 3","Reason Row 4";
        }
        field(120; "Extract 1 from Position"; Integer)
        {
            Caption = 'Extract 1 from Position';
        }
        field(121; "Extract 1 No. of Char."; Integer)
        {
            Caption = 'Extract 1 No. of Characters';
        }
        field(122; "Text Extract 2"; Option)
        {
            Caption = 'Text Extract 2';
            OptionCaption = ' ,Reason Row 1,Reason Row 2,Reason Row 3,Reason Row 4';
            OptionMembers = " ","Reason Row 1","Reason Row 2","Reason Row 3","Reason Row 4";
        }
        field(123; "Extract 2 from Position"; Integer)
        {
            Caption = 'Extract 2 from Position';
        }
        field(124; "Extract 2 No. of Char."; Integer)
        {
            Caption = 'Extract 2 No. of Characters';
        }
        field(125; "Pmt. Import Interface Code"; Code[20])
        {
            Caption = 'Pmt. Import Interface Code';
        }
        field(126; "No. of Adv. Accounting Rules"; Integer)
        {
            CalcFormula = Count ("Advanced Accounting Rule" WHERE ("No." = FIELD ("No.")));
            Caption = 'No. of Advanced Accounting Rules';
            Editable = false;
            FieldClass = FlowField;
        }
        field(127; "Last Date Used (in Archive)"; Date)
        {
            CalcFormula = Max ("Pmt. Import Line Archive"."Posting Date" WHERE ("Accounting Rule No." = FIELD ("No.")));
            Caption = 'Last Date Used (in Archive)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(128; "Quantity Used (in Archive)"; Integer)
        {
            CalcFormula = Count ("Pmt. Import Line Archive" WHERE ("Accounting Rule No." = FIELD ("No.")));
            Caption = 'Quantity Used (in Archive)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(129; "Keep Document No."; Boolean)
        {
            Caption = 'Keep Document No. (when splitting)';
        }
        field(130; "Calculate Fees from 2nd Line"; Option)
        {
            Caption = 'Calculate Fees from';
            OptionCaption = 'Fee+Fee1+Fee2+Fee3,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,None';
            OptionMembers = "Fee+Fee1+Fee2+Fee3","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"None";
        }
        field(131; "Alt. Bal. Account Type"; Option)
        {
            Caption = 'Alt. Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(132; "Alt. Bal. Account No."; Code[20])
        {
            Caption = 'Alt. Bal. Account No.';
            TableRelation = IF ("Alt. Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Alt. Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Alt. Bal. Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Alt. Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(133; "Calculate Fees from 3rd Line"; Option)
        {
            Caption = 'Calculate Fees from';
            OptionCaption = 'None,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,Fee+Fee1+Fee2+Fee3';
            OptionMembers = "None","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"Fee+Fee1+Fee2+Fee3";
        }
        field(134; "Calculate Fees from 4th Line"; Option)
        {
            Caption = 'Calculate Fees from';
            OptionCaption = 'None,Fee1+Fee2+Fee3,Fee,Fee1,Fee2,Fee3,Fee+Fee1+Fee2+Fee3';
            OptionMembers = "None","Fee1+Fee2+Fee3",Fee,Fee1,Fee2,Fee3,"Fee+Fee1+Fee2+Fee3";
        }
        field(135; "Character to find Fee 2nd Line"; Integer)
        {
            Caption = 'Characters to find Fee 2nd Line';
        }
        field(136; "Character to find Fee 3rd Line"; Integer)
        {
            Caption = 'Characters to find Fee 3rd Line';
        }
        field(137; "Character to find Fee 4th Line"; Integer)
        {
            Caption = 'Characters to find Fee 4th Line';
        }
        field(138; "Import to Account Type"; Option)
        {
            Caption = 'Import to Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Catchword, "Import to Account No.", "Field No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Catchword, "Catchword 2", "Import to Account No.")
        {
        }
    }
}

