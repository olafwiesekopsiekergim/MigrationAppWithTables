table 5001901 "Payment Setup"
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

    Caption = 'Payment Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Export Path"; Code[200])
        {
            Caption = 'Export Path';
        }
        field(3; "Textcode Debit Item"; Text[2])
        {
            Caption = 'Textcode Debit Item';
            Numeric = true;
        }
        field(4; "Textcode Credit Note"; Text[2])
        {
            Caption = 'Textcode Credit Note';
            Numeric = true;
        }
        field(5; "Interior File No."; Code[20])
        {
            Caption = 'Interior File No.';
            TableRelation = "No. Series";
        }
        field(6; "Payment Filename"; Code[12])
        {
            Caption = 'Payment Filename';
        }
        field(7; "With Avis"; Boolean)
        {
            Caption = 'With Avis (DTA)';
        }
        field(8; "No. of Entries"; Integer)
        {
            Caption = 'No. of Entries (DTA)';
        }
        field(10; "Multiple Journals"; Boolean)
        {
            Caption = 'Multiple Journals';
        }
        field(11; "Currencycode EURO"; Code[10])
        {
            Caption = 'Currencycode EURO';
            TableRelation = Currency;
        }
        field(12; "Textcode Collect"; Text[2])
        {
            Caption = 'Textcode Collect';
            Numeric = true;
        }
        field(13; "Parting Currencies"; Boolean)
        {
            Caption = 'Parting Currencies';
        }
        field(16; "Import Path"; Code[80])
        {
            Caption = 'Import Path';
        }
        field(17; "Import No."; Code[20])
        {
            Caption = 'Import No.';
            TableRelation = "No. Series";
        }
        field(18; "Default Bank Interface"; Code[10])
        {
            Caption = 'Default Bank Interface';
            TableRelation = "Bank Interface";
        }
        field(19; "Document No. DTA-Format"; Code[20])
        {
            Caption = 'Document No. DTA-Format';
            TableRelation = "No. Series";
        }
        field(20; "Only Doc.Type Payment allowed"; Boolean)
        {
            Caption = 'Only Doc.Type Payment allowed';
        }
        field(21; "Changes allowed after Payment"; Boolean)
        {
            Caption = 'Changes allowed after Payment';
        }
        field(30; "Announcement Limit from LCY"; Decimal)
        {
            Caption = 'Announcement Limit from LCY';
        }
        field(31; "Export Path AZV"; Text[80])
        {
            Caption = 'Export Path AZV';
        }
        field(32; "Filename AZV"; Text[12])
        {
            Caption = 'Filename AZV';
        }
        field(33; "Federal State for AZV"; Code[10])
        {
            Caption = 'Federal State for AZV';
            TableRelation = "Payment Area";
        }
        field(34; "Announcement to Bundesbank"; Boolean)
        {
            Caption = 'Announcement to Bundesbank';
        }
        field(35; "Default Charges Code"; Option)
        {
            Caption = 'Default Charges Code';
            OptionCaption = 'Transf. clients/other beneficiaries,all charges client,all charges recipient ';
            OptionMembers = "Transf. clients/other beneficiaries","all charges client","all charges recipient ";
        }
        field(36; "Document No. foreign vendor"; Code[10])
        {
            Caption = 'Document No. foreign vendor';
            TableRelation = "No. Series";
        }
        field(37; "Default Type"; Option)
        {
            Caption = 'Default Type';
            InitValue = "Transit trade";
            OptionCaption = ',Transit trade,Service,Capital trade      ';
            OptionMembers = ,"Transit trade",Service,"Capital trade      ";
        }
        field(39; "Default Service"; Code[10])
        {
            Caption = 'Default Service';
            TableRelation = "Service Table";
        }
        field(40; "Set Service"; Boolean)
        {
            Caption = 'Set Service';
        }
        field(42; "Autocreate bank account(cust.)"; Boolean)
        {
            Caption = 'Autocreate bank account(cust.)';
        }
        field(43; "Auto Bank Account No."; Code[10])
        {
            Caption = 'Auto Bank Account No.';
            TableRelation = "No. Series";
        }
        field(44; "Exterior File No."; Code[20])
        {
            Caption = 'Exterior File No.';
            TableRelation = "No. Series";
        }
        field(45; "Vendor Proposal"; Code[54])
        {
            Caption = 'Vendor Proposal';
        }
        field(46; "Customer Debit Proposal"; Code[54])
        {
            Caption = 'Customer Debit Proposal';
        }
        field(47; "Customer Payment Proposal"; Code[54])
        {
            Caption = 'Customer Payment Proposal';
        }
        field(48; "Foreign Payment Proposal"; Code[54])
        {
            Caption = 'Foreign Payment Proposal';
        }
        field(49; "Avis Proposal"; Code[54])
        {
            Caption = 'Avis Proposal';
        }
        field(50; "AZV Avis Proposal"; Code[54])
        {
            Caption = 'AZV Avis Proposal';
        }
        field(51; "Max Amount for EU-Standard out"; Decimal)
        {
            Caption = 'Max Amount for EU-Standard';
        }
        field(52; "Paym.Type for EU-Standard"; Code[10])
        {
            Caption = 'Paym.Type for EU-Standard';
            TableRelation = "Payment Type";
        }
        field(53; "Paym.Type for EU-Expresstransf"; Code[10])
        {
            Caption = 'Paym.Type for EU-Expresstransf';
            TableRelation = "Payment Type";
        }
        field(54; "Max Amount for EU-Standard Ext"; Decimal)
        {
            Caption = 'Max Amount for EU-Standard Ext';
        }
        field(55; "Company No Bundesbank"; Code[8])
        {
            Caption = 'Company No Bundesbank';
        }
        field(56; "All Currencys f. EU-Standard"; Boolean)
        {
            Caption = 'All Currencys f. EU-Standard';
        }
        field(60; "Reconciliation supplement"; Code[5])
        {
            Caption = 'Reconciliation supplement';
        }
        field(61; "SEPA Proposal (national)"; Code[54])
        {
            Caption = 'SEPA Vendor Proposal (national payment)';
        }
        field(62; "SEPA Proposal (international)"; Code[54])
        {
            Caption = 'SEPA Vendor Proposal (international Payment)';
        }
        field(63; "SEPA Proposal (nat.) Customer"; Code[54])
        {
            Caption = 'SEPA Customer Proposal (national direct debit) ';
        }
        field(64; "SEPA Proposal (internat.) Cust"; Code[54])
        {
            Caption = 'SEPA Proposal (international) Customer';
        }
        field(100; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template';
            TableRelation = "Gen. Journal Template";
        }
        field(101; "Gen. Journal Batch Name"; Code[10])
        {
            Caption = 'Gen. Journal Batch Name';
        }
        field(150; "No. of Entries (SEPA)"; Integer)
        {
            Caption = 'No. of Entries (SEPA Vend. Payment)';
        }
        field(151; "SEPA Export Path"; Code[80])
        {
            Caption = 'SEPA Export Path';
        }
        field(152; "SEPA Payment Filename"; Code[20])
        {
            Caption = 'SEPA Payment Filename';
        }
        field(153; "SEPA Identification"; Code[35])
        {
            Caption = 'Creditor ID';
        }
        field(200; "Mandate Nos."; Code[10])
        {
            Caption = 'Mandate Numbers';
            TableRelation = "No. Series";
        }
        field(201; "Mandate Delegation Code"; Code[10])
        {
            Caption = 'Mandate Delegation Code';
            TableRelation = "Mandate Delegation";
        }
        field(202; "Allow Mand. Rel. without Print"; Boolean)
        {
            Caption = 'Allow Mandate Release without Print';
        }
        field(203; "Single Creditor ID"; Boolean)
        {
            Caption = 'Only use one Creditor ID';
        }
        field(204; "Pre-Not. Date is Doc. Date"; Boolean)
        {
            Caption = 'Pre-Notification Date is Document Date';
        }
        field(205; "Days first debit Core"; Integer)
        {
            Caption = 'Days first debit Core';
        }
        field(206; "Days subseq. debit Core"; Integer)
        {
            Caption = 'Days subseq. debit Core';
        }
        field(207; "Days B2B"; Integer)
        {
            Caption = 'Days B2B';
        }
        field(208; "Days Pre-Notification"; Integer)
        {
            Caption = 'Days Pre-Notification';
        }
        field(209; "Use SEPA debit"; Boolean)
        {
            Caption = 'Use SEPA Debit';
        }
        field(210; "Consider Payment Terms"; Boolean)
        {
            Caption = 'Consider Payment Terms';
        }
        field(211; "Seperate Core & B2B"; Boolean)
        {
            Caption = 'Seperate Core && B2B';
        }
        field(212; "Base Calendar"; Code[10])
        {
            Caption = 'Base Calendar';
            TableRelation = IF ("Use Payment Calendar" = CONST (false)) "Base Calendar"
            ELSE
            IF ("Use Payment Calendar" = CONST (true)) "Payment Calendar";
        }
        field(213; "Days Single Mandate"; Integer)
        {
            Caption = 'Days Single Mandate';
        }
        field(214; "Allow double Mandate"; Boolean)
        {
            Caption = 'Allow double Mandate';
        }
        field(215; "Update Cust. Ledger Entry"; Boolean)
        {
            Caption = 'Update Cust. Ledger Entry at Release Mandate';
        }
        field(216; "Check Vendor Mandate"; Boolean)
        {
            Caption = 'Check Vendor Mandate';
        }
        field(217; "No. of Entries (Pay. Pos.)"; Integer)
        {
            Caption = 'No. of Entries (Payment Position)';
        }
        field(218; "Allow last debit Reset"; Boolean)
        {
            Caption = 'Allow reset of last Debit';
        }
        field(219; "Use Payment Calendar"; Boolean)
        {
            Caption = 'Use Payment Calendar';
        }
        field(220; "Accept invalid IBAN"; Boolean)
        {
            Caption = 'Accept invalid IBAN';
        }
        field(221; "Consider Doc. Type empty"; Boolean)
        {
            Caption = 'Update Document Type '' ''';
        }
        field(222; "Consider Doc. Type Payment"; Boolean)
        {
            Caption = 'Update Document Type ''Payment''';
        }
        field(223; "Consider Doc. Type Refund"; Boolean)
        {
            Caption = 'Update Document Type ''Refund''';
        }
        field(224; "Write Our Account No in SEPA"; Boolean)
        {
            Caption = 'Write "Our Account No." in Vendor SEPA File';
        }
        field(225; "Create Z4 File"; Boolean)
        {
            Caption = 'Create Z4 File';
        }
        field(226; "Export Path Z4"; Text[80])
        {
            Caption = 'Export Path Z4';
        }
        field(227; "Filename Z4"; Text[12])
        {
            Caption = 'Filename Z4';
        }
        field(228; "Default Z4 Type"; Option)
        {
            Caption = 'Default Z4 Type';
            InitValue = Service;
            OptionCaption = ' ,Transit trade,Service,Capital trade';
            OptionMembers = " ","Transit trade",Service,"Capital trade      ";
        }
        field(229; "Default Z4 Service"; Code[10])
        {
            Caption = 'Default Z4 Service';
            TableRelation = "Service Code".Code;
        }
        field(230; "Set Z4 Service"; Boolean)
        {
            Caption = 'Set Z4 Service';
        }
        field(232; "Days Cor1"; Integer)
        {
            Caption = 'Days Cor1';
        }
        field(233; "Use Customer No. for Mandate"; Boolean)
        {
            Caption = 'Use Customer No. for Mandate';
        }
        field(234; Seperator; Text[1])
        {
            Caption = 'Seperator';
        }
        field(235; "Suffix Length"; Integer)
        {
            Caption = 'Suffix Length';
            MaxValue = 5;
            MinValue = 1;
        }
        field(236; "Allow Paym. to third parties"; Boolean)
        {
            Caption = 'Allow Paym. to third parties';
        }
        field(237; "No Company Name in End-to-End"; Boolean)
        {
            Caption = 'No Company Name in End-to-End';
        }
        field(238; "SEPA Export Path Cust. Paym."; Code[80])
        {
            Caption = 'SEPA Export Path (Customer Payment)';
        }
        field(239; "SEPA Payment Filen. Cust. Paym"; Code[20])
        {
            Caption = 'SEPA Payment Filename (Customer Payment)';
        }
        field(240; "SEPA Export Path Cust. Debit"; Code[80])
        {
            Caption = 'SEPA Export Path (Customer Debit)';
        }
        field(241; "SEPA Payment Filen. Cust. Debi"; Code[20])
        {
            Caption = 'SEPA Direct Debit Filename';
        }
        field(242; "SEPA Prop. (national Cust Pay)"; Code[54])
        {
            Caption = 'SEPA Customer Proposal (national Payment)';
        }
        field(243; "SEPA Prop. (intern Cust Pay)"; Code[54])
        {
            Caption = 'SEPA Customer Proposal (international Payment)';
        }
        field(244; "No. of Entries (Pay. Pos. P)"; Integer)
        {
            Caption = 'No. of Entries (Payment Position Payments)';
        }
        field(245; "No. of Entries (AVIS Cust.)"; Integer)
        {
            Caption = 'No. of Entries (AVIS Cust. Payment)';
        }
        field(246; "BatchBooking deac. Payment"; Boolean)
        {
            Caption = 'BatchBooking Payment deactivated';
        }
        field(247; "BatchBooking deac. Cust. Debit"; Boolean)
        {
            Caption = 'BatchBooking Cust. Debit deactivated';
        }
        field(248; "With Avis Vendor Payment"; Boolean)
        {
            Caption = 'With Avis (SEPA Vend. Payment)';
        }
        field(249; "With Avis Customer Payment"; Boolean)
        {
            Caption = 'With Avis (SEPA Cust. Payment)';
        }
        field(250; "With Avis Customer Debit"; Boolean)
        {
            Caption = 'With Avis (SEPA Cust. Direct Debit)';
        }
        field(251; "No. of Entries (AVIS Cust. DD)"; Integer)
        {
            Caption = 'No. of Entries (AVIS Cust. Direct Debit)';
        }
        field(252; "Consider Doc. Type Fin.Chr.Mem"; Boolean)
        {
            Caption = 'Consider Doc. Type Finance Charge Memo';
        }
        field(253; "MT940 Check Cross Company"; Boolean)
        {
            Caption = 'MT940 Check Cross Company';
        }
        field(254; "Checksum Algorithm"; Option)
        {
            Caption = 'Checksum Algorithm';
            InitValue = "None";
            OptionCaption = ',None,MD5,SHA1,SHA256';
            OptionMembers = ,"None",MD5,SHA1,SHA256;
        }
        field(5000; "Write BOM in SEPA File"; Boolean)
        {
            Caption = 'Write BOM in SEPA File';
        }
        field(5001980; "Extended Account"; Boolean)
        {
            Caption = 'Extended Account';
        }
        field(5001981; "Other Company"; Boolean)
        {
            Caption = 'Other Company';
        }
        field(5001982; "Eliminate Date"; Boolean)
        {
            Caption = 'Eliminate Date';
        }
        field(5001984; "Multiple Application"; Boolean)
        {
            Caption = 'User Multiple Application';
        }
        field(5001985; "Eliminate Date Sign"; Text[5])
        {
            Caption = 'Eliminate Date Sign';
        }
        field(5001986; "Diff. Amount From"; Decimal)
        {
            Caption = 'Diff. Amount from';
        }
        field(5001987; "Diff. Amount To"; Decimal)
        {
            Caption = 'Diff. Amount to';
        }
        field(5001988; "Tolerance Account"; Code[20])
        {
            Caption = 'Tolerance Account';
            TableRelation = "G/L Account";
        }
        field(5001989; "Replace Tolerance Account"; Boolean)
        {
            Caption = 'Replace Tolerance Account';
        }
        field(5001990; "Split Tolerance And Fee"; Boolean)
        {
            Caption = 'Split Tolerance and Fee';
        }
        field(5001991; "Report ID Recon. Test"; Integer)
        {
            Caption = 'Report ID Recon. Test';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(5001992; "Report Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Report ID Recon. Test")));
            Caption = 'Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

