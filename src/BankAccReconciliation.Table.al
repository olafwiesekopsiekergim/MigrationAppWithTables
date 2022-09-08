table 273 "Bank Acc. Reconciliation"
{
    Caption = 'Bank Acc. Reconciliation';
    DataCaptionFields = "Bank Account No.", "Statement No.";
    Permissions = TableData "Data Exch." = rimd;

    fields
    {
        field(1; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            NotBlank = true;
            TableRelation = "Bank Account";
        }
        field(2; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
            NotBlank = true;
        }
        field(3; "Statement Ending Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Statement Ending Balance';
        }
        field(4; "Statement Date"; Date)
        {
            Caption = 'Statement Date';
        }
        field(5; "Balance Last Statement"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance Last Statement';
        }
        field(6; "Bank Statement"; BLOB)
        {
            Caption = 'Bank Statement';
        }
        field(7; "Total Balance on Bank Account"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Bank Account Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("Bank Account No.")));
            Caption = 'Total Balance on Bank Account';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Total Applied Amount"; Decimal)
        {
            CalcFormula = Sum ("Bank Acc. Reconciliation Line"."Applied Amount" WHERE ("Statement Type" = FIELD ("Statement Type"),
                                                                                      "Bank Account No." = FIELD ("Bank Account No."),
                                                                                      "Statement No." = FIELD ("Statement No.")));
            Caption = 'Total Applied Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Total Transaction Amount"; Decimal)
        {
            CalcFormula = Sum ("Bank Acc. Reconciliation Line"."Statement Amount" WHERE ("Statement Type" = FIELD ("Statement Type"),
                                                                                        "Bank Account No." = FIELD ("Bank Account No."),
                                                                                        "Statement No." = FIELD ("Statement No.")));
            Caption = 'Total Transaction Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Statement Type"; Option)
        {
            Caption = 'Statement Type';
            OptionCaption = 'Bank Reconciliation,Payment Application';
            OptionMembers = "Bank Reconciliation","Payment Application";
        }
        field(21; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(22; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Statement Type", "Bank Account No.", "Statement No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

