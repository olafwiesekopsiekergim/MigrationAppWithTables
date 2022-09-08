table 5157892 "OPplus Payment Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'OPplus Payment Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Pmt. Suggestion No. Series"; Code[10])
        {
            Caption = 'Pmt. Suggestion No. Series';
            TableRelation = "No. Series";
        }
        field(3; "Pmt. File No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(4; "Pmt. File Path"; Code[250])
        {
            Caption = 'Payment File Path';
        }
        field(5; "Pmt. Interval"; DateFormula)
        {
            Caption = 'Pmt. Interval';
        }
        field(6; "Pmt. Dics. Tolerance accepted"; Boolean)
        {
            Caption = 'Pmt. Disc. Tolerance accepted';
        }
        field(7; "Show all Open Entries"; Boolean)
        {
            Caption = 'Show all open entries';
        }
        field(8; "Direct Payment allowed"; Boolean)
        {
            Caption = 'Direct Payment allowed';
        }
        field(9; "Min. Pos. Payment Note"; Integer)
        {
            Caption = 'Min. Pos. Payment Note';
            InitValue = 5;
            MinValue = 0;
        }
        field(10; "Clearing Sender"; Text[30])
        {
            Caption = 'Clearing Sender';
        }
        field(11; "Creation Type Pmt. Purpose"; Option)
        {
            Caption = 'Creation Type DTAUS Pmt. Purpose';
            InitValue = "One Line per Doc.";
            OptionCaption = 'Compressed,One Line per Document,Two Lines per Document';
            OptionMembers = Compressed,"One Line per Doc.","Two Lines per Doc.";
        }
        field(12; "Association Payment"; Boolean)
        {
            Caption = 'Association Payment';
        }
        field(13; "Cust. / Vend. Linking"; Boolean)
        {
            Caption = 'Cust. / Vend. Linking';
        }
        field(14; "Max. Lines in HTML Avis"; Integer)
        {
            Caption = 'Max. Lines in HTML Advice';
        }
        field(15; "File Supplement DTAUS"; Code[10])
        {
            Caption = 'File Extension DTAUS';
        }
        field(16; "File Supplement SEPA"; Code[10])
        {
            Caption = 'File Extension SEPA';
        }
        field(17; "Pmt. File Path SEPA"; Code[250])
        {
            Caption = 'Pmt. File Path SEPA';
        }
        field(18; "Pmt. Advice File Path"; Code[250])
        {
            Caption = 'Pmt. Advice File Path';
        }
        field(19; "Reg. deleted Pmt. Proposals"; Boolean)
        {
            Caption = 'Register deleted Pmt. Proposals';
        }
        field(20; "Creditor Identifier"; Code[38])
        {
            Caption = 'Creditor Identifier';
        }
        field(21; "File Supplement SEPA DD"; Code[10])
        {
            Caption = 'File Extension SEPA DD';
        }
        field(22; "Summarize Per Pmt. Head"; Boolean)
        {
            Caption = 'Summarize per Pmt. Head';
        }
        field(23; "Use Country Code Field"; Option)
        {
            Caption = 'Use Country Code Field';
            OptionCaption = 'Code,EU Country/Region Code,ISO Bank Code';
            OptionMembers = "Code","EU Country/Region Code","ISO Bank Code";
        }
        field(24; "Limit Payment Amount (LCY)"; Decimal)
        {
            Caption = 'Limit Payment Amount (LCY)';
        }
        field(25; "Update Version"; Code[10])
        {
            Caption = 'Update Version';
            Editable = false;
        }
        field(26; "Default Country/Region Code"; Code[10])
        {
            Caption = 'Default Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(27; "Interval Disc. Option inPeriod"; DateFormula)
        {
            Caption = 'Interval Disc. for Option in Period';
        }
        field(94; "Exch. Rate LCY applies FCY"; Option)
        {
            Caption = 'Exchange Rate LCY applies FCY';
            OptionCaption = 'Standard,GenJnlLine';
            OptionMembers = Standard,GenJnlLine;
        }
        field(95; "Exch. Rate FCY app. equal FCY"; Option)
        {
            Caption = 'Exchange Rate FCY applies equal FCY';
            OptionCaption = 'Standard,GenJnlLine,Original Factor';
            OptionMembers = Standard,GenJnlLine,"Original Factor";
        }
        field(96; "Exch. Rate FCY app. diff. FCY"; Option)
        {
            Caption = 'Exchange Rate FCY applies unequal FCY';
            OptionCaption = 'Standard,GenJnlLine,Original Factor';
            OptionMembers = Standard,GenJnlLine,"Original Factor";
        }
        field(100; "Color Applied Entry"; Integer)
        {
            Caption = 'Color Applied Entry';
        }
        field(101; "Color Local Application"; Integer)
        {
            Caption = 'Color Local Application';
        }
        field(102; "Color Partial Application"; Integer)
        {
            Caption = 'Color Partial Application';
        }
        field(103; "Mandate ID equals Account No."; Boolean)
        {
            Caption = 'Mandate ID equals Account No.';
        }
        field(104; "Always Overwrite Payment File"; Boolean)
        {
            Caption = 'Always Overwrite Payment File';
        }
        field(106; "Call after Creating Pmt. File"; Text[100])
        {
            Caption = 'Call after Creating Pmt. File';
        }
        field(107; "Create Local Temporary File"; Boolean)
        {
            Caption = 'Create Local Temporary File';
        }
        field(108; "Save IBAN in blocks of 4"; Boolean)
        {
            Caption = 'Save IBAN in blocks of 4';
        }
        field(109; "Automatic Entry Suggestion"; Boolean)
        {
            Caption = 'Automatic Entry Suggestion';
        }
        field(200; "Transfer Posting"; Boolean)
        {
            Caption = 'Transfer Posting';
            Description = 'CLR (nur, wenn AddON DE integriert)';
        }
        field(300; SepaOld; Boolean)
        {
            Caption = 'SEPA Version 1 (DE only)';
        }
        field(301; SepaGrouping; Option)
        {
            Caption = 'SEPA Grouping';
            OptionCaption = ' ,MIXD,SNGL,GRPD';
            OptionMembers = " ",MIXD,SNGL,GRPD;
        }
        field(302; SepaUniqueEndToEndID; Boolean)
        {
            Caption = 'SEPA: EndToEndID unique';
        }
        field(303; "Mandate ID No. Series"; Code[10])
        {
            Caption = 'Dir. Deb. Mandates No. Series';
            TableRelation = "No. Series";
        }
        field(304; SepaCCT; Boolean)
        {
            Caption = 'SEPA: create CCT format';
        }
        field(305; "Fill SEPA Purpose"; Boolean)
        {
            Caption = 'Fill SEPA Purpose';
        }
        field(306; "Adj. DD CORE one-off payment"; Integer)
        {
            Caption = 'Adj. Due Date CORE one-off payment';
        }
        field(307; "Adj. DD CORE first payment"; Integer)
        {
            Caption = 'Adj. Due Date CORE first payment';
        }
        field(308; "Adj. DD CORE recurrent payment"; Integer)
        {
            Caption = 'Adj. Due Date CORE recurrent payment';
        }
        field(309; "Adj. DD B2B"; Integer)
        {
            Caption = 'Adj. Due Date B2B';
        }
        field(310; "Create Warning for missing BC"; Boolean)
        {
            Caption = 'Create Warning for missing Bank Branch Codes/BIC Codes';
        }
        field(311; "Release needed"; Boolean)
        {
            Caption = 'Approval needed';
        }
        field(312; "SEPA Bank Due over Target"; Boolean)
        {
            Caption = 'SEPA Bank Due over Target';
        }
        field(313; "Target Calendar SEPA"; Code[10])
        {
            Caption = 'Target Calendar SEPA';
            TableRelation = "Base Calendar";
        }
        field(314; "Payment Avis Report ID"; Integer)
        {
            Caption = 'Payment Advice Report ID';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(315; "Check Report ID"; Integer)
        {
            Caption = 'Check Report ID';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(316; "Log Mandate Creation"; Boolean)
        {
            Caption = 'Log Mandate Creation';
        }
        field(317; "SMC Interaction Template"; Code[10])
        {
            Caption = 'Mandate Creation Interaction Template';
            TableRelation = "Interaction Template" WHERE ("Attachment No." = CONST (0));
        }
        field(318; "Pmt. Interval Due Date"; DateFormula)
        {
            Caption = 'Pmt. Interval Due Date';
        }
        field(319; "SEPA Direct Debit Collection"; Boolean)
        {
            Caption = 'SEPA Direct Debit Collection';
        }
        field(320; "SEPA Version SCT"; Option)
        {
            Caption = 'SEPA Transfer Version';
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(321; "SEPA Version SDD"; Option)
        {
            Caption = 'SEPA DirDeb Version';
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(322; "SEPA Extd. Charset"; Boolean)
        {
            Caption = 'SEPA Extd. Charset';
        }
        field(323; EndToEndTagSCT; Text[14])
        {
            Caption = 'Prefix Transfer';
        }
        field(324; EndToEndTagSDD; Text[14])
        {
            Caption = 'Prefix Dir. Deb.';
        }
        field(325; EndToEndIdSCT; Option)
        {
            Caption = 'EndToEndId Credit Transfer';
            InitValue = Notprovided;
            OptionCaption = 'Unique,None,NOTPROVIDED';
            OptionMembers = Unique,"None",Notprovided;
        }
        field(326; EndToEndIdSDD; Option)
        {
            Caption = 'EndToEndId Dir. Deb.';
            OptionCaption = 'Unique,None,NOTPROVIDED';
            OptionMembers = Unique,"None",Notprovided;
        }
        field(327; "SEPA Due in Pmt. File"; Boolean)
        {
            Caption = 'SEPA Due in Pmt. File';
        }
        field(328; "SEPA DD Mandate Report ID"; Integer)
        {
            Caption = 'SEPA Due Date Mandate Report ID';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(329; "SEPA Reclass. Report ID"; Integer)
        {
            Caption = 'SEPA Reclassification Report ID';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(330; "Reporting Limit (LCY)"; Decimal)
        {
            Caption = 'Reporting Limit (LCY)';
        }
        field(331; "Default Trading Type Vendor"; Option)
        {
            Caption = 'Default Trading Type Vendor';
            OptionCaption = 'Transit Trade,Service,Capital Trade';
            OptionMembers = Transit,Service,Capital;
        }
        field(332; "Default Service No. Vendor"; Code[10])
        {
            Caption = 'Default Service No. Vendor';
            TableRelation = "Bundesbank Code";
        }
        field(333; "Default Payment Type Customer"; Code[10])
        {
            Caption = 'Default Payment Type Customer';
            TableRelation = "Payment Type Code";
        }
        field(334; "Default Payment Type Vendor"; Code[10])
        {
            Caption = 'Default Payment Type Vendor';
            TableRelation = "Payment Type Code";
        }
        field(335; SepaFilePerBatch; Boolean)
        {
            Caption = 'Separate File per Batch';
        }
        field(337; "Adj. DD COR1"; Integer)
        {
            Caption = 'Adj. Due Date COR1';
        }
        field(338; "Company No."; Code[10])
        {
            Caption = 'Company No.';
        }
        field(339; Contact; Code[16])
        {
            Caption = 'Contact';
        }
        field(340; "Action after Creating"; Option)
        {
            Caption = 'Action after Creating';
            OptionCaption = 'Nothing,Show Payment Proposal,Show Pmt. Head Overview,Show Pmt. Lines,Show Pmt. Card,Print Pmt. List';
            OptionMembers = Nothing,"Show Payment Proposal","Show Pmt. Head Overview","Show Pmt. Line","Show Pmt. Card","Print Pmt. List";
        }
        field(341; "Apply Entries Manually"; Boolean)
        {
            Caption = 'Apply Entries Manually';
        }
        field(342; "Customer Discount Option"; Option)
        {
            Caption = 'Customer Pmt. Discount Option in Payment Suggestion';
            OptionCaption = 'Always Discount,As Entered,Always in Period,None';
            OptionMembers = "Always Discount","As Entered","Always in Period","None";
        }
        field(343; "Vendor Discount Option"; Option)
        {
            Caption = 'Vendor Pmt. Discount Option in Payment Suggestion';
            OptionCaption = 'Always Discount,As Entered,Always in Period,None';
            OptionMembers = "Always Discount","As Entered","Always in Period","None";
        }
        field(344; "Contact Phone No."; Text[30])
        {
            Caption = 'Contact Phone No.';
        }
        field(345; "Contact E-Mail"; Text[80])
        {
            Caption = 'Contact E-Mail';
        }
        field(346; "Default Trading Type Customer"; Option)
        {
            Caption = 'Default Trading Type Customer';
            OptionCaption = 'Transit Trade,Service,Capital Trade';
            OptionMembers = Transit,Service,Capital;
        }
        field(347; "Default Service No. Customer"; Code[10])
        {
            Caption = 'Default Service No. Customer';
            TableRelation = "Bundesbank Code";
        }
        field(348; "Detailed Customer Reporting"; Boolean)
        {
            Caption = 'Detailed Customer Reporting';
        }
        field(349; "Detailed Vendor Reporting"; Boolean)
        {
            Caption = 'Detailed Vendor Reporting';
        }
        field(350; "SEPA CT Collection"; Boolean)
        {
            Caption = 'SEPA Credit Transfer Batch Booking';
        }
        field(351; "Add Company to Reporting File"; Boolean)
        {
            Caption = 'Add Company Name to Reporting File';
        }
        field(352; "Invalid SEPA Characters"; Text[30])
        {
            Caption = 'Invalid SEPA Characters';
        }
        field(353; "Reporting on Single Document"; Boolean)
        {
            Caption = 'Reporting on Single Document';
        }
        field(354; "With Backlog"; Boolean)
        {
            Caption = 'With Backlog';
        }
        field(355; "ISO Pmt.: Warn if Schema miss."; Boolean)
        {
            Caption = 'ISO Pmt.: Warn if Schema miss.';
        }
        field(356; "Use Trading Type from Vendor"; Boolean)
        {
            Caption = 'Use Trading Type from Vendor';
        }
        field(357; "Use Trading Type from Customer"; Boolean)
        {
            Caption = 'Use Trading Type from Customer';
        }
        field(358; "Calculate SHA256 Hash"; Boolean)
        {
            Caption = 'Calculate SHA256 Hash';
        }
        field(362; "Default Payment Type G/L Acc."; Code[10])
        {
            Caption = 'Default Payment Type G/L Account';
            TableRelation = "Payment Type Code";
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

