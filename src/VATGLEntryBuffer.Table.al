table 5157883 "VAT G/L Entry Buffer"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'VAT G/L Entry Buffer';

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
        field(3; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(4; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(5; "Reason Code-Filter"; Code[10])
        {
            Caption = 'Reason Code-Filter';
            TableRelation = "Reason Code";
        }
        field(6; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(7; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(8; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(9; "Date Range"; Text[30])
        {
            Caption = 'Date Range';
        }
        field(10; "Global Dimension 1 Filter"; Code[150])
        {
            Caption = 'Global Dimension 1 Filter';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
            ValidateTableRelation = false;
        }
        field(11; "Global Dimension 2 Filter"; Code[150])
        {
            Caption = 'Global Dimension 2 Filter';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
            ValidateTableRelation = false;
        }
        field(12; Company; Text[50])
        {
            Caption = 'Company';
        }
        field(13; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'G/L Entry,VAT Entry,Total VAT';
            OptionMembers = "G/L Entry","VAT Entry","VAT Total";
        }
        field(14; "Row. No. VAT Statement"; Code[10])
        {
            Caption = 'Row. No. VAT Statement';
        }
        field(15; "Debit Amount"; Decimal)
        {
            Caption = 'Debit Amount';
        }
        field(16; "Credit Amount"; Decimal)
        {
            Caption = 'Credit Amount';
        }
    }

    keys
    {
        key(Key1; "Entry Type", "G/L Account No.", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company)
        {
            Clustered = true;
        }
        key(Key2; "Entry Type", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company, "G/L Account No.")
        {
        }
        key(Key3; "Entry Type", "Row. No. VAT Statement", "Gen. Posting Type", "VAT Bus. Posting Group", "VAT Prod. Posting Group", Company, "G/L Account No.")
        {
        }
    }

    fieldgroups
    {
    }
}

