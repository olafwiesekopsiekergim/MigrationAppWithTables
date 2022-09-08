table 5001910 "Import Register"
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

    Caption = 'Import Register';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Bank Interface Code"; Code[20])
        {
            Caption = 'Bank Interface Code';
        }
        field(3; Filename; Text[250])
        {
            Caption = 'Filename';
        }
        field(4; "No. of Entries"; Integer)
        {
            CalcFormula = Count ("Bank Document" WHERE ("Import Register No." = FIELD ("No.")));
            Caption = 'No. of Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Amount; Decimal)
        {
            CalcFormula = Sum ("Bank Document".Amount WHERE ("Import Register No." = FIELD ("No.")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Import Date"; Date)
        {
            Caption = 'Import Date';
        }
        field(7; Time; Time)
        {
            Caption = 'Time';
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
        }
        field(9; "DTA-Format Type"; Code[2])
        {
            Caption = 'DTA-Format Type';
        }
        field(10; "DTA-Format Control BBNo."; Decimal)
        {
            Caption = 'DTA-Format Control BBNo.';
            DecimalPlaces = 0 : 0;
        }
        field(11; "DTA-Format Control Account"; Decimal)
        {
            Caption = 'DTA-Format Control Account';
            DecimalPlaces = 0 : 0;
        }
        field(12; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Import Date")
        {
        }
    }

    fieldgroups
    {
    }
}

