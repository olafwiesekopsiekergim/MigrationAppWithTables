table 5001941 "Foreign Payment Entry"
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

    Caption = 'Foreign Payment Entry';
    Permissions = TableData "Payment Bank Information" = rd,
                  TableData "Payment Bank Information Line" = rd;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
            Editable = false;
        }
        field(3; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            Editable = false;
            TableRelation = "Bank Account";
        }
        field(4; Text; Text[50])
        {
            Caption = 'Text';
            Editable = false;
        }
        field(5; Amount; Decimal)
        {
            Caption = 'Amount';
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(6; "Payment Date"; Date)
        {
            Caption = 'Payment Date';
            Editable = false;
        }
        field(7; "Posting State"; Option)
        {
            Caption = 'Posting State';
            Editable = false;
            OptionCaption = 'Created,Cancelled,Posted,Corrected';
            OptionMembers = Created,Cancelled,Posted,Corrected;
        }
        field(8; "Statement Status"; Option)
        {
            Caption = 'Statement Status';
            Editable = false;
            OptionCaption = 'Open,Regulation Bank Ledger Entry,,Closed';
            OptionMembers = Open,"Regulation Bank Ledger Entry",,Closed;
        }
        field(9; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(10; "No. of T-Sets"; Integer)
        {
            Caption = 'No. of T-Sets';
            Editable = false;
        }
        field(11; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = false;
        }
        field(12; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(13; "Day Entry No."; Integer)
        {
            Caption = 'Day Entry No.';
        }
        field(14; "Date of Execution"; Date)
        {
            Caption = 'Date of Execution';
        }
        field(17; Open; Boolean)
        {
            Caption = 'Open';
            Editable = false;
        }
        field(18; "EU-Payment"; Option)
        {
            Caption = 'EU-Payment';
            OptionCaption = ' ,EU-Standard,EU-Expresstransfer';
            OptionMembers = " ","EU-Standard","EU-Expresstransfer";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Payment No.")
        {
        }
        key(Key3; "Payment No.", "Statement Status", "Posting State")
        {
        }
    }

    fieldgroups
    {
    }
}

