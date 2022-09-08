table 317 "Payable Vendor Ledger Entry"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'Payable Vendor Ledger Entry';

    fields
    {
        field(1; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(2; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(3; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(4; "Vendor Ledg. Entry No."; Integer)
        {
            Caption = 'Vendor Ledg. Entry No.';
            TableRelation = "Vendor Ledger Entry";
        }
        field(5; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(6; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(7; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(8; Positive; Boolean)
        {
            Caption = 'Positive';
        }
        field(9; Future; Boolean)
        {
            Caption = 'Future';
        }
        field(5001900; "Due Date SEPA"; Date)
        {
            Caption = 'Due Date SEPA';
            Description = 'DYNPMT';
        }
        field(5001901; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            Description = 'DYNPMT';
        }
        field(5001902; "Mandate debit type"; Option)
        {
            Caption = 'Mandat Debit type';
            Description = 'DYNPMT';
            OptionMembers = " ",FRST,RCUR,FNAL,OOFF;
        }
    }

    keys
    {
        key(Key1; Priority, "Vendor No.", "Currency Code", Positive, Future, "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Due Date SEPA", "Mandate debit type", "Mandate No.")
        {
        }
    }

    fieldgroups
    {
    }
}

