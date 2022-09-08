table 5001917 "Payment Bank Information"
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

    Caption = 'Payment Bank Information';
    Permissions = TableData "Payment Bank Information Line" = rd;

    fields
    {
        field(1; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
            Editable = false;
            TableRelation = "Payment Line";
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(3; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(4; "Creation Time"; Time)
        {
            Caption = 'Creation Time';
            Editable = false;
        }
        field(5; "Control/Account"; Decimal)
        {
            CalcFormula = Sum ("Payment Bank Information Line"."Numeric Bank Account No." WHERE ("Payment No." = FIELD ("Payment No."),
                                                                                                "Bank Info Entry No." = FIELD ("Entry No.")));
            Caption = 'Control/Account';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Control/Bank Branch No."; Decimal)
        {
            CalcFormula = Sum ("Payment Bank Information Line"."Numeric Bank Branch No." WHERE ("Payment No." = FIELD ("Payment No."),
                                                                                               "Bank Info Entry No." = FIELD ("Entry No.")));
            Caption = 'Control/Bank Branch No.';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Payment No.", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

