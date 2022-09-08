table 5001912 "Bank Importinterface"
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

    Caption = 'Bank Importinterface';

    fields
    {
        field(1; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Bank Account";
        }
        field(2; "Bank Interface Code"; Code[20])
        {
            Caption = 'Bank Interface Code';
            NotBlank = true;
            TableRelation = "Bank Interface";
        }
        field(3; Description; Text[30])
        {
            CalcFormula = Lookup ("Bank Interface".Description WHERE (Code = FIELD ("Bank Interface Code")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Currency-ID"; Code[3])
        {
            Caption = 'Currency-ID';
        }
        field(5; "Bank-ID"; Code[20])
        {
            Caption = 'Bank-ID (BBN/BIC)';
        }
        field(6; "Bank Account-ID"; Code[34])
        {
            Caption = 'Bank Account-ID (Acc./IBAN)';
        }
        field(7; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Bank Account No.", "Bank Interface Code")
        {
            Clustered = true;
        }
        key(Key2; "Bank Interface Code", "Currency-ID", "Bank-ID", "Bank Account-ID")
        {
        }
    }

    fieldgroups
    {
    }
}

