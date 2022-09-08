table 5157893 "Payment Type Code"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // AT   01.11.09   OPplus Payment AT
    // -----------------------------------------------------

    Caption = 'Payment Type Code';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            Editable = false;
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(3; "Bank Branch Code required"; Boolean)
        {
            Caption = 'Bank Branch Code required';
            Editable = false;
        }
        field(4; "Bank Account No. required"; Boolean)
        {
            Caption = 'Bank Account No. required';
            Editable = false;
        }
        field(5; "Bank Branch Code Min. Length"; Integer)
        {
            Caption = 'Bank Branch Code Min. Length';
            Editable = false;
        }
        field(6; "Bank Branch Code Max. Length"; Integer)
        {
            Caption = 'Bank Branch Code Max. Length';
            Editable = false;
        }
        field(7; "Bank Account No. Min. Length"; Integer)
        {
            Caption = 'Bank Account No. Min. Length';
            Editable = false;
        }
        field(8; "Bank Account No. Max. Length"; Integer)
        {
            Caption = 'Bank Account No. Max. Length';
            Editable = false;
        }
        field(9; "BIC Code required"; Boolean)
        {
            Caption = 'BIC Code required';
            Editable = false;
        }
        field(10; "IBAN required"; Boolean)
        {
            Caption = 'IBAN required';
            Editable = false;
        }
        field(11; "Payment Direction"; Option)
        {
            Caption = 'Payment Direction';
            Editable = false;
            OptionCaption = 'Both,Incoming,Outgoing';
            OptionMembers = Both,Incoming,Outgoing;
        }
        field(12; "Country/Region Code required"; Boolean)
        {
            Caption = 'Country/Region Code required';
            Editable = false;
        }
        field(13; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            Editable = false;
        }
        field(14; "Separate Currency"; Boolean)
        {
            Caption = 'Separate Currency';
            Editable = false;
        }
        field(15; "Fees allowed"; Boolean)
        {
            Caption = 'Fees allowed';
            Editable = false;
        }
        field(16; "EUR Payment"; Boolean)
        {
            Caption = 'EUR Payment';
            Editable = false;
        }
        field(17; "Total Amount (LCY)"; Decimal)
        {
            Caption = 'Total Amount (LCY)';
            Editable = false;
        }
        field(18; "Fixed Currency Code"; Code[3])
        {
            Caption = 'Fixed Currency Code';
            Editable = false;
        }
        field(19; "Application only"; Boolean)
        {
            Caption = 'Application only';
            Editable = false;
        }
        field(20; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(21; "No Settling"; Boolean)
        {
            Caption = 'No Settling';
            Editable = false;
            InitValue = false;
        }
        field(22; "Create File"; Boolean)
        {
            Caption = 'Create File';
            Editable = false;
        }
        field(23; "Four Purposes"; Boolean)
        {
            Caption = 'Four Purposes';
            Editable = false;
        }
        field(24; "SWIFT Code required"; Boolean)
        {
            Caption = 'SWIFT Code required';
            Editable = false;
        }
        field(25; "Vendor Purpose Text"; Text[30])
        {
            Caption = 'Vendor Purpose Text';
        }
        field(26; "Max. Pos. Payment Note"; Integer)
        {
            Caption = 'Max. Pos. Payment Note';
        }
        field(27; "Customer Purpose Text"; Text[30])
        {
            Caption = 'Customer Purpose Text';
        }
        field(28; "Payment Note Purpose Text"; Text[30])
        {
            Caption = 'Payment Note Purpose Text';
        }
        field(29; "Vendor Purpose Text Header"; Text[30])
        {
            Caption = 'Purpose Text Header Vendor';
        }
        field(30; "Purpose Text Footer"; Text[30])
        {
            Caption = 'Purpose Text Footer';
        }
        field(31; "Limit Payment Amount (LCY)"; Decimal)
        {
            Caption = 'Limit Payment Amount (LCY)';
        }
        field(32; "Limit Lines per Head"; Integer)
        {
            Caption = 'New Head per Entry';
        }
        field(33; "Purposes Lines"; Integer)
        {
            Caption = 'Purposes Lines';
            Editable = false;
        }
        field(34; "Purposes Width"; Integer)
        {
            Caption = 'Purposes Width';
            Editable = false;
        }
        field(35; "Pmt. File Path"; Code[250])
        {
            Caption = 'Pmt. File Path';
        }
        field(36; "File Supplement"; Code[5])
        {
            Caption = 'File Extension';
        }
        field(37; "File Prefix"; Code[10])
        {
            Caption = 'File Prefix';
        }
        field(38; "Customer Purpose Text Header"; Text[30])
        {
            Caption = 'Customer Purpose Text Header';
        }
        field(39; "Settled Payment Type Code"; Code[10])
        {
            Caption = 'Settled Payment Type Code';
            Description = 'EXT';
            TableRelation = "Payment Type Code";
        }
        field(40; "Text Application"; Text[30])
        {
            Caption = 'Text Application';
        }
        field(41; Inactive; Boolean)
        {
            Caption = 'Inactive';
        }
        field(42; "Payment Total (LCY)"; Decimal)
        {
            CalcFormula = Sum ("Payment Proposal Line"."Pmt. Amount (LCY)" WHERE ("Journal Template Name" = FIELD ("Journal Template Name Filter"),
                                                                                 "Journal Batch Name" = FIELD ("Journal Batch Name Filter"),
                                                                                 "Payment Type Code" = FIELD (Code)));
            Caption = 'Payment Total (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(43; "Journal Template Name Filter"; Code[10])
        {
            Caption = 'Journal Template Name Filter';
            FieldClass = FlowFilter;
        }
        field(44; "Journal Batch Name Filter"; Code[10])
        {
            Caption = 'Journal Batch Name Filter';
            FieldClass = FlowFilter;
        }
        field(46; "ISO Pmt. Header SvcLvl"; Option)
        {
            Caption = 'ISO Pmt. File Header SvcLvl';
            OptionCaption = ' ,URGP,NURG,SDVA';
            OptionMembers = " ",URGP,NURG,SDVA;
        }
        field(47; "ISO Pmt. Default Trans. SvcLvl"; Option)
        {
            Caption = 'ISO Pmt. Default Trans. SvcLvl';
            OptionCaption = ' ,URGP,NURG,SDVA';
            OptionMembers = " ",URGP,NURG,SDVA;
        }
        field(48; "Instruction Codes Evaluated"; Boolean)
        {
            Caption = 'Instruction Codes are evaluated';
            Editable = false;
        }
        field(49; "Default Instruction Code"; Code[10])
        {
            Caption = 'Default Instruction Code';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = FIELD (Code));
        }
        field(50; "No. of Payment Heads"; Integer)
        {
            CalcFormula = Count ("Payment Proposal Head" WHERE ("Gen. Journal Template" = FIELD ("Journal Template Name Filter"),
                                                               "Gen. Journal Batch" = FIELD ("Journal Batch Name Filter"),
                                                               "Payment Type Code" = FIELD (Code)));
            Caption = 'No. of Payment Heads';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157960; "Min. Amount for Pmt. Split"; Integer)
        {
            Caption = 'Min. Amount for Pmt. Split';
            Description = 'PMT AT';
        }
        field(5157961; "Max. Amount for Pmt. Split"; Integer)
        {
            Caption = 'Max. Amount for Pmt. Split';
            Description = 'PMT AT';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

