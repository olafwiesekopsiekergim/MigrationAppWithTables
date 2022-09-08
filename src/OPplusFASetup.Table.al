table 5483220 "OPplus FA Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // FA   01.01.17   Fixed Asset
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'OPplus Fixed Asset Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Update Version"; Code[10])
        {
            Caption = 'Update Version';
            Editable = false;
        }
        field(3; "Pmt. Disc. Acquisition Cost"; Boolean)
        {
            Caption = 'Pmt. Disc. Acquisition Cost';
        }
        field(4; "Round Book Value in Per. Depr."; Boolean)
        {
            Caption = 'Use Rounding Book Value in Periodic Depr.';
        }
        field(5; "Depr. until FA Posting Date"; Boolean)
        {
            Caption = 'Depr. until FA Posting Date';
        }
        field(6; "Depr. Acquisition Cost"; Boolean)
        {
            Caption = 'Depr. Acquisition Cost';
        }
        field(7; "FA Post. Date Corr. Acq. Cost"; Option)
        {
            Caption = 'nachtr. Anschaffung abschreiben ab';
            Enabled = false;
            OptionCaption = ' ,Begin Fiscal Year,Begin Calenderl Year';
            OptionMembers = " ","Begin Fiscal Year","Begin Calenderl Year";
        }
        field(8; "Set Error Entry No in Cr. Memo"; Boolean)
        {
            Caption = 'Set Error Entry No in Cr. Memo';
        }
        field(9; "Set VAT in Correction Entry"; Boolean)
        {
            Caption = 'Set VAT for Correction Disposal or Acquisition';
        }
        field(10; "Insert AccountNo Line in Corr."; Boolean)
        {
            Caption = 'Insert Customer or Vendor  for Correction Disposal or Acquisition';
        }
        field(11; "Post copies automatically"; Boolean)
        {
            Caption = 'Post copies automatically';
        }
        field(12; "Fixed Asset Template Nos."; Code[10])
        {
            Caption = 'Fixed Asset Template Nos.';
            TableRelation = "No. Series";
        }
        field(13; "Reclass. Journal Template"; Code[10])
        {
            Caption = 'Reclass. Journal Template';
            TableRelation = "FA Reclass. Journal Template";
        }
        field(14; "Reclass. Journal Batch"; Code[10])
        {
            Caption = 'Reclass. Journal Batch';
            TableRelation = "FA Reclass. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Reclass. Journal Template"));
        }
        field(15; "Use Section Lining"; Boolean)
        {
            Caption = 'Use Section Lining';
        }
        field(16; "Depr. until FA Post. Disposal"; Boolean)
        {
            Caption = 'Depr. until FA Posting Date for Disposal';
        }
        field(17; "Clear FA No. when reverse TA"; Boolean)
        {
            Caption = 'Clear FA No. when Reverse Transaction';
        }
        field(18; "Use Duplication List"; Boolean)
        {
            Caption = 'Use Duplication List';
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

