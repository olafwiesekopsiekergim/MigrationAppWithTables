table 93 "Vendor Posting Group"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // No.  Date       changed
    // -----------------------------------------------------
    // INS  01.11.08   Installment
    // -----------------------------------------------------
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // 
    // #APTW17.10:T100 22.10.13 DEMSR.KHS
    //   Add "Get" function for Adv. Paym. Accounts
    // 
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Vendor Posting Group';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Payables Account"; Code[20])
        {
            Caption = 'Payables Account';
            TableRelation = "G/L Account";
        }
        field(7; "Service Charge Acc."; Code[20])
        {
            Caption = 'Service Charge Acc.';
            TableRelation = "G/L Account";
        }
        field(8; "Payment Disc. Debit Acc."; Code[20])
        {
            Caption = 'Payment Disc. Debit Acc.';
            TableRelation = "G/L Account";
        }
        field(9; "Invoice Rounding Account"; Code[20])
        {
            Caption = 'Invoice Rounding Account';
            TableRelation = "G/L Account";
        }
        field(10; "Debit Curr. Appln. Rndg. Acc."; Code[20])
        {
            Caption = 'Debit Curr. Appln. Rndg. Acc.';
            TableRelation = "G/L Account";
        }
        field(11; "Credit Curr. Appln. Rndg. Acc."; Code[20])
        {
            Caption = 'Credit Curr. Appln. Rndg. Acc.';
            TableRelation = "G/L Account";
        }
        field(12; "Debit Rounding Account"; Code[20])
        {
            Caption = 'Debit Rounding Account';
            TableRelation = "G/L Account";
        }
        field(13; "Credit Rounding Account"; Code[20])
        {
            Caption = 'Credit Rounding Account';
            TableRelation = "G/L Account";
        }
        field(16; "Payment Disc. Credit Acc."; Code[20])
        {
            Caption = 'Payment Disc. Credit Acc.';
            TableRelation = "G/L Account";
        }
        field(17; "Payment Tolerance Debit Acc."; Code[20])
        {
            Caption = 'Payment Tolerance Debit Acc.';
            TableRelation = "G/L Account";
        }
        field(18; "Payment Tolerance Credit Acc."; Code[20])
        {
            Caption = 'Payment Tolerance Credit Acc.';
            TableRelation = "G/L Account";
        }
        field(5013500; "Adv. Paym. Payables Account"; Code[20])
        {
            Caption = 'Advance Payment Payables Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5013510; "Adv. Paym. Made Gross Acc."; Code[20])
        {
            Caption = 'Advance Payment Made Gross Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5013520; "Adv. Paym. Made Net Acc."; Code[20])
        {
            Caption = 'Advance Payment Made Net Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5013530; "Adv. Payment Made Account"; Code[20])
        {
            Caption = 'Advance Payment Made Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5483207; "Installment Account"; Code[20])
        {
            Caption = 'Installment Account';
            Description = 'INS';
            TableRelation = "G/L Account";
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
        fieldgroup(Brick; "Code")
        {
        }
    }
}

