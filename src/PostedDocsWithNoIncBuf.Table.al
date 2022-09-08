table 134 "Posted Docs. With No Inc. Buf."
{
    Caption = 'Posted Docs. With No Inc. Buf.';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; "First Posting Description"; Text[50])
        {
            Caption = 'First Posting Description';
        }
        field(5; "Incoming Document No."; Integer)
        {
            CalcFormula = Lookup ("Incoming Document"."Entry No." WHERE ("Document No." = FIELD ("Document No."),
                                                                        "Posting Date" = FIELD ("Posting Date")));
            Caption = 'Incoming Document No.';
            FieldClass = FlowField;
        }
        field(8; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(9; "Debit Amount"; Decimal)
        {
            Caption = 'Debit Amount';
        }
        field(10; "Credit Amount"; Decimal)
        {
            Caption = 'Credit Amount';
        }
        field(11; "G/L Account No. Filter"; Code[20])
        {
            Caption = 'G/L Account No. Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

