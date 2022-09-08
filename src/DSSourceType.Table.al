table 2087637 "DS Source Type"
{
    Caption = 'DS Source Type';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Source Table No.';
        }
        field(2; "Source Type"; Code[10])
        {
            Caption = 'Source Type';
        }
        field(3; "Processing Codeunit No."; Integer)
        {
            Caption = 'Processing Codeunit No.';
        }
        field(10; "Table Name"; Text[50])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Table No.")));
            Caption = 'Table Name';
            FieldClass = FlowField;
        }
        field(11; "Processing Codeunit Name"; Text[50])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Codeunit),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Processing Codeunit No.")));
            Caption = 'Processing Codeunit Name';
            FieldClass = FlowField;
        }
        field(12; "Action New Codeunit No."; Integer)
        {
            Caption = 'Action New Codeunit No.';
        }
        field(13; "Action New Codeunit Name"; Text[50])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Codeunit),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Action New Codeunit No.")));
            Caption = 'Action New Codeunit Name';
            FieldClass = FlowField;
        }
        field(14; "Action Edit Codeunit No."; Integer)
        {
            Caption = 'Action Edit Codeunit No.';
        }
        field(15; "Action Edit Codeunit Name"; Text[50])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Codeunit),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Action Edit Codeunit No.")));
            Caption = 'Action Edit Codeunit Name';
            FieldClass = FlowField;
        }
        field(16; "Action Report No."; Integer)
        {
            Caption = 'Action Report No.';
        }
        field(17; "Action Report Name"; Text[50])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Report),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Action Report No.")));
            Caption = 'Action Report Name';
            FieldClass = FlowField;
        }
        field(18; "Action New Description"; Text[100])
        {
            Caption = 'Action New Description';
        }
        field(19; "Action Edit Description"; Text[100])
        {
            Caption = 'Action Edit Description';
        }
        field(20; "Appointment Template Code"; Code[100])
        {
        }
    }

    keys
    {
        key(Key1; "Table No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

