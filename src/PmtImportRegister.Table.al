table 5157808 "Pmt. Import Register"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Pmt. Import Register';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Port Code"; Code[20])
        {
            Caption = 'File Format';
        }
        field(3; Filename; Text[250])
        {
            Caption = 'Filename';
        }
        field(4; "No. of Entries"; Integer)
        {
            CalcFormula = Count ("Pmt. Import Line" WHERE ("Import Register No." = FIELD ("No.")));
            Caption = 'No. of Lines imported';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Amount; Decimal)
        {
            CalcFormula = Sum ("Pmt. Import Line".Amount WHERE ("Import Register No." = FIELD ("No.")));
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
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
        field(13; "No. of Entries Skipped"; Integer)
        {
            Caption = 'No. of Entries Skipped';
        }
        field(14; "Total No. of Entries"; Integer)
        {
            Caption = 'Total No. of Entries';
        }
        field(15; "Import in Acc. No."; Code[20])
        {
            CalcFormula = Lookup ("Pmt. Import Line"."Import in Acc. No." WHERE ("Import Register No." = FIELD ("No.")));
            Caption = 'Import in Acc. No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "No. of posted Entries"; Integer)
        {
            CalcFormula = Count ("Pmt. Import Line" WHERE ("Import Register No." = FIELD ("No."),
                                                          Posted = CONST (true)));
            Caption = 'No. of posted lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Statement No."; Code[20])
        {
            CalcFormula = Lookup ("Pmt. Import Line"."Statement No." WHERE ("Import Register No." = FIELD ("No.")));
            Caption = 'Statement No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Pmt. Import Interface"; Code[20])
        {
            Caption = 'Pmt. Import Interface';
            Editable = false;
            TableRelation = "Pmt. Import Interface";
        }
        field(19; "In Progress"; Boolean)
        {
            Caption = 'In Progress';
            Editable = false;
        }
        field(20; "No. of not posted Entries"; Integer)
        {
            CalcFormula = Count ("Pmt. Import Line" WHERE ("Import Register No." = FIELD ("No."),
                                                          Posted = CONST (false)));
            Caption = 'No. of not posted Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Statement Ending Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Statement Ending Balance';
            Editable = false;
        }
        field(22; "Statement Date"; Date)
        {
            Caption = 'Statement Date';
        }
        field(23; "Balance Last Statement"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance Last Statement';
            Editable = false;
        }
        field(24; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(25; Interim; Boolean)
        {
            Caption = 'Interim Transaction';
            Editable = false;
        }
        field(26; "Data from Company"; Text[30])
        {
            Caption = 'Data from Company';
            TableRelation = Company;
        }
        field(10000; "Actual Statement No."; Integer)
        {
            Caption = 'Statement No. in File';
            Description = 'OPP6.00: MT940 new';
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
        key(Key3; "In Progress")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Pmt. Import Interface", "Import Date", "Import in Acc. No.", "Statement No.", "No. of not posted Entries", "Statement Ending Balance")
        {
        }
    }
}

