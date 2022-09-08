table 843 "Cash Flow Setup"
{
    Caption = 'Cash Flow Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Cash Flow Forecast No. Series"; Code[10])
        {
            Caption = 'Cash Flow Forecast No. Series';
            TableRelation = "No. Series";
        }
        field(3; "Receivables CF Account No."; Code[20])
        {
            Caption = 'Receivables CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(4; "Payables CF Account No."; Code[20])
        {
            Caption = 'Payables CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(5; "Sales Order CF Account No."; Code[20])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Sales Order CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(6; "Purch. Order CF Account No."; Code[20])
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Purch. Order CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(8; "FA Budget CF Account No."; Code[20])
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Budget CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(9; "FA Disposal CF Account No."; Code[20])
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Disposal CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(10; "Service CF Account No."; Code[20])
        {
            AccessByPermission = TableData "Service Header" = R;
            Caption = 'Service CF Account No.';
            TableRelation = "Cash Flow Account";
        }
        field(11; "CF No. on Chart in Role Center"; Code[20])
        {
            Caption = 'CF No. on Chart in Role Center';
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

