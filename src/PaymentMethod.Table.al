table 289 "Payment Method"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - New Fields added
    // -----------------------------------------------------

    Caption = 'Payment Method';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Bank Account';
            OptionMembers = "G/L Account","Bank Account";
        }
        field(4; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(5; "Payment Processor"; Option)
        {
            Caption = 'Payment Processor';
            OptionCaption = ' ,Dynamics Online';
            OptionMembers = " ","Dynamics Online";
        }
        field(6; "Direct Debit"; Boolean)
        {
            Caption = 'Direct Debit';
        }
        field(7; "Direct Debit Pmt. Terms Code"; Code[10])
        {
            Caption = 'Direct Debit Pmt. Terms Code';
            TableRelation = "Payment Terms";
        }
        field(8; "Pmt. Export Line Definition"; Code[20])
        {
            Caption = 'Pmt. Export Line Definition';
        }
        field(9; "Bank Data Conversion Pmt. Type"; Text[50])
        {
            Caption = 'Bank Data Conversion Pmt. Type';
            TableRelation = "Bank Data Conversion Pmt. Type";
        }
        field(5157892; "Default Payment Type Code"; Code[10])
        {
            Caption = 'Default Payment Type Code';
            Description = 'PMT';
            TableRelation = "Payment Type Code" WHERE (Inactive = CONST (false));
        }
        field(5157893; "Single Payment"; Boolean)
        {
            Caption = 'Single Payment';
            Description = 'PMT';
        }
        field(5157894; "Default Pmt. Bank Account No."; Code[20])
        {
            Caption = 'Default Pmt. Bank Account No.';
            Description = 'PMT';
            TableRelation = "Bank Account";
        }
        field(5157895; "Separate Pmt. Proposal Head"; Boolean)
        {
            Caption = 'Separate Pmt. Proposal Head';
            Description = 'PMT';
        }
        field(5157896; "Vendor Purpose Text"; Text[30])
        {
            Caption = 'Vendor Purpose Text';
            Description = 'PMT';
        }
        field(5157897; "Customer Purpose Text"; Text[30])
        {
            Caption = 'Customer Purpose Text';
            Description = 'PMT';
        }
        field(5157898; "Payment Note Purpose Text"; Text[30])
        {
            Caption = 'Payment Note Purpose Text';
            Description = 'PMT';
        }
        field(5157899; "Vendor Purpose Text Header"; Text[30])
        {
            Caption = 'Vendor Purpose Text Header';
            Description = 'PMT';
        }
        field(5157900; "Purpose Text Footer"; Text[30])
        {
            Caption = 'Purpose Text Footer';
            Description = 'PMT';
        }
        field(5157901; "Limit Payment Amount (LCY)"; Decimal)
        {
            Caption = 'Limit Payment Amount (LCY)';
            Description = 'PMT';
        }
        field(5157902; "Customer Purpose Text Header"; Text[30])
        {
            Caption = 'Customer Purpose Text Header';
            Description = 'PMT';
        }
        field(5157903; "Limit Lines per Head"; Integer)
        {
            Caption = 'New Head per Entry';
            Description = 'PMT';
        }
        field(5157904; "Min. Pos. Payment Note"; Integer)
        {
            Caption = 'Min. Pos. Payment Note';
            Description = 'PMT';
        }
        field(5157905; "Default Instruction Code"; Code[10])
        {
            Caption = 'Default Instruction Code';
            Description = 'PMT';
            TableRelation = "Payment Supp. Code".Code WHERE (Type = CONST (Instruction),
                                                             "Payment Type Code" = FIELD ("Default Payment Type Code"));
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
        fieldgroup(Brick; "Code", Description, "Bal. Account Type")
        {
        }
    }
}

