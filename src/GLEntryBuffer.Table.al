table 5157886 "G/L Entry Buffer"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'G/L Entry Buffer';

    fields
    {
        field(1; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(4; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(5; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(6; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
        }
        field(7; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(8; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(9; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(10; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(11; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(12; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(13; Company; Text[50])
        {
            Caption = 'Company';
        }
        field(14; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(15; "Debit Amount"; Decimal)
        {
            Caption = 'Debit Amount';
        }
        field(16; "Credit Amount"; Decimal)
        {
            Caption = 'Credit Amount';
        }
        field(17; "Beginning Balance"; Decimal)
        {
            Caption = 'Beginning Balance';
        }
        field(18; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(19; "Date Range"; Text[30])
        {
            Caption = 'Date Range';
        }
        field(30; "Grouped by Posting Groups"; Boolean)
        {
            Caption = 'Grouped by Posting Groups';
        }
        field(31; "Grouped by VAT Posting Groups"; Boolean)
        {
            Caption = 'Grouped by VAT Posting Groups';
        }
        field(32; "Grouped by JobNo"; Boolean)
        {
            Caption = 'Grouped by Job No.';
        }
        field(33; "Grouped by Reason Code"; Boolean)
        {
            Caption = 'Grouped by Reason Code';
        }
        field(34; "Grouped by glob. Dim. Code 1"; Boolean)
        {
            Caption = 'Grouped by Global Dimension 1 Code';
        }
        field(35; "Grouped by glob. Dim. Code 2"; Boolean)
        {
            Caption = 'Grouped by Global Dimension 2 Code';
        }
    }

    keys
    {
        key(Key1; "G/L Account No.", "Gen. Posting Type", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company, "Global Dimension 1 Code", "Global Dimension 2 Code", "Dimension Entry No.", "Job No.", "Reason Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

