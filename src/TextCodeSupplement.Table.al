table 5001933 "Text Code Supplement"
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

    Caption = 'Text Code Supplement';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "SEPA Code"; Code[10])
        {
            Caption = 'SEPA Code';
        }
        field(10; "Block Mandate"; Boolean)
        {
            Caption = 'Block Mandate';
        }
        field(11; "Post Fees"; Option)
        {
            Caption = 'Post Fees';
            OptionCaption = ' ,G/L Account,Customer (1 Entry),Customer (2 Entries)';
            OptionMembers = " ","G/L Account","Customer (1 Entry)","Customer (2 Entries)";
        }
        field(13; "Retoure Fee Account"; Code[20])
        {
            Caption = 'Retoure Fee Account';
            TableRelation = "G/L Account";
        }
        field(14; "Retoure Document Type"; Option)
        {
            Caption = 'Retoure Document Type';
            InitValue = Refund;
            OptionCaption = ' ,,Invoice,,,,Refund';
            OptionMembers = " ",,Invoice,,,,Refund;
        }
        field(15; "Fee Document Type"; Option)
        {
            Caption = 'Fee Document Type';
            InitValue = Refund;
            OptionCaption = ' ,,Invoice,,,,Refund';
            OptionMembers = " ",,Invoice,,,,Refund;
        }
        field(16; "Retoure Document No."; Option)
        {
            Caption = 'Retoure Doc. No.';
            OptionCaption = 'Standard,Source Doc. No.';
            OptionMembers = Standard,"Source Doc. No.";
        }
        field(17; "Fee Document No."; Option)
        {
            Caption = 'Fee Doc. No.';
            OptionCaption = 'Standard,Source Doc. No.';
            OptionMembers = Standard,"Source Doc. No.";
        }
        field(18; "Retoure Doc. No. Suffix"; Code[10])
        {
            Caption = 'Retoure Doc. No. Suffix';
        }
        field(19; "Fee Doc. No. Suffix"; Code[10])
        {
            Caption = 'Gebühr Doc. No. Suffix';
        }
        field(20; "Apply New"; Boolean)
        {
            Caption = 'Apply New';
        }
        field(21; "Use External Document No."; Boolean)
        {
            Caption = 'Use External Document No.';
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
    }
}

