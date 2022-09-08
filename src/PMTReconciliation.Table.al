table 5001990 "PMT Reconciliation"
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

    Caption = 'Bank Statement Reconciliation';
    DataCaptionFields = "Bank Account No.", "Statement No.";

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
        field(5001901; "Order Reference No."; Code[20])
        {
            Caption = 'Order Reference No.';
        }
        field(5001902; "Reference No."; Code[20])
        {
            Caption = 'Reference No.';
        }
        field(5001903; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(5001904; "G/L Post"; Boolean)
        {
            Caption = 'G/L Post';
        }
        field(5001905; "Bank Name"; Text[50])
        {
            CalcFormula = Lookup ("Bank Account".Name WHERE ("No." = FIELD ("Bank Account No.")));
            Caption = 'Bank Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001906; "Account No."; Text[34])
        {
            CalcFormula = Lookup ("Bank Account"."Bank Account No." WHERE ("No." = FIELD ("Bank Account No.")));
            Caption = 'Account No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001907; "Bank Branch No."; Text[20])
        {
            CalcFormula = Lookup ("Bank Account"."Bank Branch No." WHERE ("No." = FIELD ("Bank Account No.")));
            Caption = 'Bank Branch No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001908; IBAN; Code[50])
        {
            CalcFormula = Lookup ("Bank Account".IBAN WHERE ("No." = FIELD ("Bank Account No.")));
            Caption = 'IBAN';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5001909; "SWIFT Code"; Code[20])
        {
            CalcFormula = Lookup ("Bank Account"."SWIFT Code" WHERE ("No." = FIELD ("Bank Account No.")));
            Caption = 'SWIFT Code';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Bank Account No.", "Statement No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

