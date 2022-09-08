table 5157882 "OPplus Analysis Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - Object created
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001419  07.12.2016  gbedv.ast   Set Initial Data and Importance

    Caption = 'Trial Balance and VAT Setup';
    Permissions = TableData "G/L Entry" = r,
                  TableData "Vendor Ledger Entry" = r,
                  TableData "VAT Entry" = r;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Assets/Liab. Calc. Type"; Option)
        {
            BlankZero = true;
            Caption = 'Assets/Liab. Calc. Type';
            OptionCaption = ',End of fiscal year,Max. Date,Value';
            OptionMembers = ,EOFY,MaxDate,Value;
        }
        field(3; Affiliation; Text[30])
        {
            Caption = 'Affiliation';
        }
        field(4; "Use Section Lining"; Boolean)
        {
            Caption = 'Use Section Lining';
        }
        field(5; "Bal. Account VAT Base"; Code[20])
        {
            Caption = 'Bal. Account VAT Base';
            TableRelation = "G/L Account";
        }
        field(6; "Account VAT Base Next Month"; Code[20])
        {
            Caption = 'Account VAT Base Next Month';
            TableRelation = "G/L Account";
        }
        field(7; "Account VAT Amount Last Month"; Code[20])
        {
            Caption = 'Account VAT Amount Last Month';
            TableRelation = "G/L Account";
        }
        field(8; "Source Code VAT Correction"; Code[10])
        {
            Caption = 'Source Code VAT Correction';
            TableRelation = "Source Code";
        }
        field(9; "Enable VAT Correction"; Boolean)
        {
            Caption = 'Enable VAT Correction';
        }
        field(10; "VAT Correct Jnl. Template Name"; Code[10])
        {
            Caption = 'VAT Correct Jnl. Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(11; "VAT Correct Jnl. Batch Name"; Code[10])
        {
            Caption = 'VAT Correct Jnl. Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("VAT Correct Jnl. Template Name"));
        }
        field(12; "Consider Field Show in Excel"; Boolean)
        {
            Caption = 'Consider Field Show in Excel';
        }
        field(13; "Allow Doc. Entrance Date From"; Date)
        {
            Caption = 'Allow Doc. Entrance Date From';
        }
        field(14; "Allow Doc. Entrance Date To"; Date)
        {
            Caption = 'Allow Doc. Entrance Date To';
        }
        field(15; "G/L Account Group 1 Caption"; Text[80])
        {
            Caption = 'G/L Account Group 1 Caption';
        }
        field(16; "G/L Account Group 2 Caption"; Text[80])
        {
            Caption = 'G/L Account Group 2 Caption';
        }
        field(17; "G/L Account Group 3 Caption"; Text[80])
        {
            Caption = 'G/L Account Group 3 Caption';
        }
        field(18; "G/L Account Group 4 Caption"; Text[80])
        {
            Caption = 'G/L Account Group 4 Caption';
        }
        field(19; "Update Version"; Code[10])
        {
            Caption = 'Update Version';
            Editable = false;
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

