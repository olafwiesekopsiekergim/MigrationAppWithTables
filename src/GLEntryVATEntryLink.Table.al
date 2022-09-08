table 253 "G/L Entry - VAT Entry Link"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  10.12.15   Tax and Balance
    //                 - New Key added
    // -----------------------------------------------------

    Caption = 'G/L Entry - VAT Entry Link';
    Permissions = TableData "G/L Entry - VAT Entry Link" = rimd;

    fields
    {
        field(1; "G/L Entry No."; Integer)
        {
            Caption = 'G/L Entry No.';
            TableRelation = "G/L Entry"."Entry No.";
        }
        field(2; "VAT Entry No."; Integer)
        {
            Caption = 'VAT Entry No.';
            TableRelation = "VAT Entry"."Entry No.";
        }
    }

    keys
    {
        key(Key1; "G/L Entry No.", "VAT Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "VAT Entry No.", "G/L Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

