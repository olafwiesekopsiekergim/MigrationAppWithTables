table 252 "General Posting Setup"
{
    // 
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // No.  Date       changed
    // -----------------------------------------------------
    // INS  01.11.08   Installment
    // -----------------------------------------------------
    // #RENW16.00:10-001  06.02.09 DEMSR.KHS
    //   2 New Fields for Rental Accounts
    // 
    // #RENW16.00.01:R055 12.10.09 DEMSR.KHS
    //   3rd Party Rental
    // 
    // #RENW16.00.01:R170 15.10.09 DEMSR.KHS
    //   Internal Service Order
    // 
    // #RENW16.00.02:R154 20.10.10 DEMSR.KHS
    //   Sales Leasing
    //   New fields: "Leasing Account"
    //               "Leasing Prepayment Account"
    // 
    // #RENW17.10.01:T509 05.09.14 DEMSR.KHS
    //   field "Rent Line Disc. Account" added
    // 
    // #RENW18.00.00.07:T500 15.06.15 DEMSR.KHS
    //   field "Rent Inv. Disc. Account" added

    Caption = 'General Posting Setup';

    fields
    {
        field(1; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(2; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            NotBlank = true;
            TableRelation = "Gen. Product Posting Group";
        }
        field(10; "Sales Account"; Code[20])
        {
            Caption = 'Sales Account';
            TableRelation = "G/L Account";
        }
        field(11; "Sales Line Disc. Account"; Code[20])
        {
            Caption = 'Sales Line Disc. Account';
            TableRelation = "G/L Account";
        }
        field(12; "Sales Inv. Disc. Account"; Code[20])
        {
            Caption = 'Sales Inv. Disc. Account';
            TableRelation = "G/L Account";
        }
        field(13; "Sales Pmt. Disc. Debit Acc."; Code[20])
        {
            Caption = 'Sales Pmt. Disc. Debit Acc.';
            TableRelation = "G/L Account";
        }
        field(14; "Purch. Account"; Code[20])
        {
            Caption = 'Purch. Account';
            TableRelation = "G/L Account";
        }
        field(15; "Purch. Line Disc. Account"; Code[20])
        {
            Caption = 'Purch. Line Disc. Account';
            TableRelation = "G/L Account";
        }
        field(16; "Purch. Inv. Disc. Account"; Code[20])
        {
            Caption = 'Purch. Inv. Disc. Account';
            TableRelation = "G/L Account";
        }
        field(17; "Purch. Pmt. Disc. Credit Acc."; Code[20])
        {
            Caption = 'Purch. Pmt. Disc. Credit Acc.';
            TableRelation = "G/L Account";
        }
        field(18; "COGS Account"; Code[20])
        {
            Caption = 'COGS Account';
            TableRelation = "G/L Account";
        }
        field(19; "Inventory Adjmt. Account"; Code[20])
        {
            Caption = 'Inventory Adjmt. Account';
            TableRelation = "G/L Account";
        }
        field(27; "Sales Credit Memo Account"; Code[20])
        {
            Caption = 'Sales Credit Memo Account';
            TableRelation = "G/L Account";
        }
        field(28; "Purch. Credit Memo Account"; Code[20])
        {
            Caption = 'Purch. Credit Memo Account';
            TableRelation = "G/L Account";
        }
        field(30; "Sales Pmt. Disc. Credit Acc."; Code[20])
        {
            Caption = 'Sales Pmt. Disc. Credit Acc.';
            TableRelation = "G/L Account";
        }
        field(31; "Purch. Pmt. Disc. Debit Acc."; Code[20])
        {
            Caption = 'Purch. Pmt. Disc. Debit Acc.';
            TableRelation = "G/L Account";
        }
        field(32; "Sales Pmt. Tol. Debit Acc."; Code[20])
        {
            Caption = 'Sales Pmt. Tol. Debit Acc.';
            TableRelation = "G/L Account";
        }
        field(33; "Sales Pmt. Tol. Credit Acc."; Code[20])
        {
            Caption = 'Sales Pmt. Tol. Credit Acc.';
            TableRelation = "G/L Account";
        }
        field(34; "Purch. Pmt. Tol. Debit Acc."; Code[20])
        {
            Caption = 'Purch. Pmt. Tol. Debit Acc.';
            TableRelation = "G/L Account";
        }
        field(35; "Purch. Pmt. Tol. Credit Acc."; Code[20])
        {
            Caption = 'Purch. Pmt. Tol. Credit Acc.';
            TableRelation = "G/L Account";
        }
        field(36; "Sales Prepayments Account"; Code[20])
        {
            Caption = 'Sales Prepayments Account';
            TableRelation = "G/L Account";
        }
        field(37; "Purch. Prepayments Account"; Code[20])
        {
            Caption = 'Purch. Prepayments Account';
            TableRelation = "G/L Account";
        }
        field(5600; "Purch. FA Disc. Account"; Code[20])
        {
            Caption = 'Purch. FA Disc. Account';
            TableRelation = "G/L Account";
        }
        field(5801; "Invt. Accrual Acc. (Interim)"; Code[20])
        {
            Caption = 'Invt. Accrual Acc. (Interim)';
            TableRelation = "G/L Account";
        }
        field(5803; "COGS Account (Interim)"; Code[20])
        {
            Caption = 'COGS Account (Interim)';
            TableRelation = "G/L Account";
        }
        field(5072450; "Internal Service Cost Account"; Code[20])
        {
            Caption = 'Internal Service Cost Account';
            Description = '#RENW16.00.01:R170';
            TableRelation = "G/L Account";
        }
        field(5072650; "Rental Account"; Code[20])
        {
            Caption = 'Rental Account';
            Description = '#RENW16.00:10-001';
            TableRelation = "G/L Account";
        }
        field(5072651; "Rental Prepayment Account"; Code[20])
        {
            Caption = 'Rental Prepayment Account';
            Description = '#RENW16.00:10-001';
            TableRelation = "G/L Account";
        }
        field(5072652; "Rental Cr. Memo Account"; Code[20])
        {
            Caption = 'Rental Cr. Memo Account';
            Description = '#RENW16.00:10-001';
            TableRelation = "G/L Account";
        }
        field(5072653; "3rd Party Rent Account"; Code[20])
        {
            Caption = '3rd Party Rent Account';
            Description = '#RENW16.00.01:R055';
            TableRelation = "G/L Account";
        }
        field(5072654; "Leasing Account"; Code[20])
        {
            Caption = 'Leasing Account';
            Description = '#RENW16.00.02:R154';
            TableRelation = "G/L Account";
        }
        field(5072655; "Leasing Prepayment Account"; Code[20])
        {
            Caption = 'Leasing Prepayment Account';
            Description = '#RENW16.00.02:R154';
            TableRelation = "G/L Account";
        }
        field(5072656; "Rent Line Disc. Account"; Code[20])
        {
            Caption = 'Rent Line Disc. Account';
            Description = '#RENW17.10.01:T509';
            TableRelation = "G/L Account";
        }
        field(5072657; "Rent Inv. Disc. Account"; Code[20])
        {
            Caption = 'Rent Inv. Disc. Account';
            Description = '#RENW18.00.00.07:T500';
            TableRelation = "G/L Account";
        }
        field(5483207; "Installment Account"; Code[20])
        {
            Caption = 'Installment Account';
            Description = 'INS';
            TableRelation = "G/L Account";
        }
        field(99000752; "Direct Cost Applied Account"; Code[20])
        {
            Caption = 'Direct Cost Applied Account';
            TableRelation = "G/L Account";
        }
        field(99000753; "Overhead Applied Account"; Code[20])
        {
            Caption = 'Overhead Applied Account';
            TableRelation = "G/L Account";
        }
        field(99000754; "Purchase Variance Account"; Code[20])
        {
            Caption = 'Purchase Variance Account';
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Gen. Bus. Posting Group", "Gen. Prod. Posting Group")
        {
            Clustered = true;
        }
        key(Key2; "Gen. Prod. Posting Group", "Gen. Bus. Posting Group")
        {
        }
    }

    fieldgroups
    {
    }
}

