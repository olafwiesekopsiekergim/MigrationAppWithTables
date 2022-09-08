table 5157853 "G/L Open Entries Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // GLOE 01.11.08   Gen. Ledger Open Entries
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'G/L Open Entries Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "G/L Entry Application"; Code[10])
        {
            Caption = 'G/L Entry Application';
            TableRelation = "Source Code";
        }
        field(3; "Unapplied G/L Entry Appln."; Code[10])
        {
            Caption = 'Unapplied G/L Entry Appln.';
            TableRelation = "Source Code";
        }
        field(4; "Create Open Entries"; Option)
        {
            BlankZero = true;
            Caption = 'Create Open Entries';
            OptionCaption = ' ,All Entries';
            OptionMembers = " ","All Entries";
        }
        field(5; "Balance Account Application"; Code[20])
        {
            Caption = 'Balance Account Application';
            TableRelation = "G/L Account" WHERE ("Account Type" = CONST (Posting));
        }
        field(6; "Hyperlink Color"; Boolean)
        {
            Caption = 'Hyperlink in report in color';
        }
        field(7; "Appln. between Currencies"; Option)
        {
            Caption = 'Appln. between Currencies';
            OptionCaption = 'None,,All';
            OptionMembers = "None",,All;
        }
        field(8; "OP-Acc vs. OP-Acc. not allowed"; Boolean)
        {
            Caption = 'Open Item Acc. vs. Open Item Acc. not allowed';
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

