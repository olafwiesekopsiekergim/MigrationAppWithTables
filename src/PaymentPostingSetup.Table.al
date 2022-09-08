table 5157899 "Payment Posting Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Posting Setup';

    fields
    {
        field(1; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            TableRelation = "Payment Type Code";
        }
        field(2; "Bank Account"; Code[20])
        {
            Caption = 'Bank Account';
            TableRelation = "Bank Account";
        }
        field(4; "Posting Account Type"; Option)
        {
            Caption = 'Posting Account Type';
            OptionCaption = 'G/L Account,,Vendor,Bank Account';
            OptionMembers = "G/L Account",,Vendor,"Bank Account";
        }
        field(5; "Posting Account No."; Code[20])
        {
            Caption = 'Posting Account No.';
            TableRelation = IF ("Posting Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Posting Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Posting Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(6; "One Bal. Acc. per Pmt. Line"; Boolean)
        {
            Caption = 'One Bal. Acc. per Pmt. Line';
        }
        field(7; "One Bal. Acc. per Pmt. Head"; Boolean)
        {
            Caption = 'One Bal. Acc. per Pmt. Head';
        }
    }

    keys
    {
        key(Key1; "Payment Type Code", "Bank Account")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

