table 372 "Payment Buffer"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'Payment Buffer';

    fields
    {
        field(1; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(2; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(3; "Vendor Ledg. Entry No."; Integer)
        {
            Caption = 'Vendor Ledg. Entry No.';
            TableRelation = "Vendor Ledger Entry";
        }
        field(4; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
        }
        field(5; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(6; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(8; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(9; "Vendor Ledg. Entry Doc. Type"; Option)
        {
            Caption = 'Vendor Ledg. Entry Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(10; "Vendor Ledg. Entry Doc. No."; Code[20])
        {
            Caption = 'Vendor Ledg. Entry Doc. No.';
        }
        field(170; "Creditor No."; Code[20])
        {
            Caption = 'Creditor No.';
            Numeric = true;
            TableRelation = "Vendor Ledger Entry"."Creditor No." WHERE ("Entry No." = FIELD ("Vendor Ledg. Entry No."));
        }
        field(171; "Payment Reference"; Code[50])
        {
            Caption = 'Payment Reference';
            Numeric = true;
            TableRelation = "Vendor Ledger Entry"."Payment Reference" WHERE ("Entry No." = FIELD ("Vendor Ledg. Entry No."));
        }
        field(172; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            TableRelation = "Vendor Ledger Entry"."Payment Method Code" WHERE ("Vendor No." = FIELD ("Vendor No."));
        }
        field(173; "Applies-to Ext. Doc. No."; Code[35])
        {
            Caption = 'Applies-to Ext. Doc. No.';
        }
        field(290; "Exported to Payment File"; Boolean)
        {
            Caption = 'Exported to Payment File';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5001900; "Vendor External Doc. No."; Code[35])
        {
            Caption = 'Vendor External Doc. No.';
            Description = 'DYNPMT';
        }
        field(5001940; "Debit Date"; Date)
        {
            Caption = 'Debit Date';
            Description = 'DYNPMT';
        }
        field(5001941; "Date Pre-Notification"; Date)
        {
            Caption = 'Date Pre-Notification';
            Description = 'DYNPMT';
        }
        field(5001942; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
            Description = 'DYNPMT';
            TableRelation = Mandate;
        }
        field(5001943; "Mandate invalid"; Boolean)
        {
            Caption = 'Mandate invalid';
            Description = 'DYNPMT';
        }
        field(5001944; "Debit Date expired"; Boolean)
        {
            Caption = 'Debit Date expired';
            Description = 'DYNPMT';
        }
        field(5001945; "Due Date SEPA"; Date)
        {
            Caption = 'Due Date SEPA';
            Description = 'DYNPMT';
        }
        field(5001946; "Mandate type"; Option)
        {
            Description = 'DYNPMT';
            OptionCaption = ' ,Core,B2B,Cor1';
            OptionMembers = " ",Core,B2B,Cor1;
        }
        field(5001948; "Mandate debit type"; Option)
        {
            Caption = 'Mandat Debit type';
            Description = 'DYNPMT';
            OptionMembers = " ",FRST,RCUR,FNAL,OOFF;
        }
    }

    keys
    {
        key(Key1; "Vendor No.", "Currency Code", "Vendor Ledg. Entry No.", "Dimension Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.")
        {
        }
        key(Key3; "Due Date SEPA", "Mandate debit type")
        {
        }
    }

    fieldgroups
    {
    }
}

