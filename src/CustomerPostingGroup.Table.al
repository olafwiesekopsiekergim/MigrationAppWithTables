table 92 "Customer Posting Group"
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
    //   Add "Get" functions for Adv. Paym. Accounts
    // 
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Customer Posting Group';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Receivables Account"; Code[20])
        {
            Caption = 'Receivables Account';
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
        field(10; "Additional Fee Account"; Code[20])
        {
            Caption = 'Additional Fee Account';
            TableRelation = "G/L Account";
        }
        field(11; "Interest Account"; Code[20])
        {
            Caption = 'Interest Account';
            TableRelation = "G/L Account";
        }
        field(12; "Debit Curr. Appln. Rndg. Acc."; Code[20])
        {
            Caption = 'Debit Curr. Appln. Rndg. Acc.';
            TableRelation = "G/L Account";
        }
        field(13; "Credit Curr. Appln. Rndg. Acc."; Code[20])
        {
            Caption = 'Credit Curr. Appln. Rndg. Acc.';
            TableRelation = "G/L Account";
        }
        field(14; "Debit Rounding Account"; Code[20])
        {
            Caption = 'Debit Rounding Account';
            TableRelation = "G/L Account";
        }
        field(15; "Credit Rounding Account"; Code[20])
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
        field(19; "Add. Fee per Line Account"; Code[20])
        {
            Caption = 'Add. Fee per Line Account';
            TableRelation = "G/L Account";
        }
        field(5013500; "Adv. Paym. Receivables Account"; Code[20])
        {
            Caption = 'Advance Payment Receivables Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5013510; "Adv. Paym. Received Gross Acc."; Code[20])
        {
            Caption = 'Advance Payment Received Gross Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5013520; "Adv. Paym. Received Net Acc."; Code[20])
        {
            Caption = 'Advance Payment Received Net Account';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "G/L Account";
        }
        field(5013530; "Adv. Payment Received Account"; Code[20])
        {
            Caption = 'Advance Payment Received Account';
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

