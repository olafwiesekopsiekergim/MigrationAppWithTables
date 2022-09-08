table 232 "Gen. Journal Batch"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - New Fields added
    // -----------------------------------------------------
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products (enhanced options in field Template Type)
    // ================================================================================

    Caption = 'Gen. Journal Batch';
    DataCaptionFields = Name, Description;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            NotBlank = true;
            TableRelation = "Gen. Journal Template";
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(5; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(6; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Fixed Asset")) "Fixed Asset";
        }
        field(7; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(8; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(9; "Copy VAT Setup to Jnl. Lines"; Boolean)
        {
            Caption = 'Copy VAT Setup to Jnl. Lines';
            InitValue = true;
        }
        field(10; "Allow VAT Difference"; Boolean)
        {
            Caption = 'Allow VAT Difference';
        }
        field(11; "Allow Payment Export"; Boolean)
        {
            Caption = 'Allow Payment Export';
        }
        field(12; "Bank Statement Import Format"; Code[20])
        {
            Caption = 'Bank Statement Import Format';
            TableRelation = "Bank Export/Import Setup".Code WHERE (Direction = CONST (Import));
        }
        field(21; "Template Type"; Option)
        {
            CalcFormula = Lookup ("Gen. Journal Template".Type WHERE (Name = FIELD ("Journal Template Name")));
            Caption = 'Template Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'General,Sales,Purchases,Cash Receipts,Payments,Assets,Intercompany,Jobs,,Foreign Payments';
            OptionMembers = General,Sales,Purchases,"Cash Receipts",Payments,Assets,Intercompany,Jobs,,"Foreign Payments";
        }
        field(22; Recurring; Boolean)
        {
            CalcFormula = Lookup ("Gen. Journal Template".Recurring WHERE (Name = FIELD ("Journal Template Name")));
            Caption = 'Recurring';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001900; "Transfer Posting"; Boolean)
        {
            Caption = 'Transfer Posting';
            Description = 'DYNPMT';
        }
        field(5001901; "Last Payment Type"; Option)
        {
            Caption = 'Last Payment Type';
            Description = 'DYNPMT';
            OptionCaption = ' ,collection,,,direct debiting';
            OptionMembers = " ",collection,,,"direct debiting";
        }
        field(5001902; "Check Vendor Mandate"; Boolean)
        {
            Caption = 'Check Vendor Mandate';
            Description = 'DYNPMT';
        }
        field(5001903; "Do not use SEPA debit"; Boolean)
        {
            Caption = 'Do not use SEPA Debit';
            Description = 'DYNPMT';
        }
        field(5157802; "Show Purpose"; Boolean)
        {
            Caption = 'Show Purpose';
            Description = 'EA';
        }
        field(5157803; "Suppress Balance Posting"; Boolean)
        {
            Caption = 'Suppress Balance Posting';
            Description = 'EA';
        }
        field(5157804; "Test Pmt. Discount Date"; Boolean)
        {
            Caption = 'Test Pmt. Discount Date';
            Description = 'EA';
        }
        field(5157805; "Test Balance in Application"; Boolean)
        {
            Caption = 'Test Balance in Application';
            Description = 'EA';
            InitValue = true;
        }
        field(5157806; "Keep Pmt. Disc. Difference"; Boolean)
        {
            Caption = 'Keep Pmt. Disc. Difference';
            Description = 'EA';
        }
        field(5157807; "Pmt.Disc. Date vs. Doc.Date"; Boolean)
        {
            Caption = 'Test Pmt.Disc. Date vs. Doc.Date';
            Description = 'EA';
        }
        field(5157808; "Height Frame Jnl.Line in E.M."; Integer)
        {
            Caption = 'Height Frame of Jnl.Line in Easy Match';
            Description = 'EA';
            MaxValue = 8000;
            MinValue = 0;
        }
        field(5157809; "Color Applied Entry"; Integer)
        {
            Caption = 'Color Applied Entry';
            Description = 'EA';
        }
        field(5157810; "Color Local Application"; Integer)
        {
            Caption = 'Color Local Apply';
            Description = 'EA';
        }
        field(5157811; "Color Partial Application"; Integer)
        {
            Caption = 'Color Partial Apply';
            Description = 'EA';
        }
        field(5157812; "Color Appl. Status Open"; Integer)
        {
            Caption = 'Color Appl. Status Open';
            Description = 'EA';
        }
        field(5157813; "Color Appl. Status Accounted"; Integer)
        {
            Caption = 'Color Appl. Status Accounted';
            Description = 'EA';
        }
        field(5157814; "Color Appl. Status Finished"; Integer)
        {
            Caption = 'Color Appl. Status Finished';
            Description = 'EA';
        }
        field(5157815; "Do not force Doc. Balance"; Boolean)
        {
            Caption = 'Do not force Doc. Balance';
            Description = 'EA';
        }
        field(5157816; "Pmt. Discount Date Used"; Boolean)
        {
            Caption = 'Pmt. Discount Date Used';
            Description = 'EA';
        }
        field(5157817; "Pmt. Disc. Difference Used"; Boolean)
        {
            Caption = 'Pmt. Disc. Difference Used';
            Description = 'EA';
        }
        field(5157818; "Pmt. Disc. Used"; Decimal)
        {
            Caption = 'Pmt. Disc. Used';
            Description = 'EA';
        }
        field(5157819; "Number Of Filled Lines"; Integer)
        {
            CalcFormula = Count ("Gen. Journal Line" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                           "Journal Batch Name" = FIELD (Name),
                                                           Description = FILTER (<> '')));
            Caption = 'Number Of Filled Lines';
            Description = 'EA';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157820; "Action if Balance in Appl."; Option)
        {
            Caption = 'Action if Balance in Application <> 0';
            Description = 'EA';
            OptionCaption = ' ,Standard,Extended';
            OptionMembers = " ",Standard,Extended;
        }
        field(5157821; "Cash Book Balance Check"; Option)
        {
            Caption = 'Cash Book Balance Check';
            Description = 'EA';
            OptionCaption = ' ,On Input,On Post,None';
            OptionMembers = " ","On Input","On Post","None";
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

