table 11102089 "OM - Test"
{
    Caption = 'Test';
    DataPerCompany = false;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Group,Project';
            OptionMembers = Group,Project;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Group)) "OM - Test Group"
            ELSE
            IF (Type = CONST (Project)) "OM - Project";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Codeunit No."; Integer)
        {
            BlankZero = true;
            Caption = 'Codeunit No.';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit),
                                             "Company Name" = FILTER (''));
        }
        field(5; "Codeunit Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Codeunit),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Codeunit No.")));
            Caption = 'Codeunit Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "No. of Input Parameters"; Integer)
        {
            CalcFormula = Count ("OM - Test Parameter" WHERE ("Test Type" = FIELD (Type),
                                                             "Test No." = FIELD ("No."),
                                                             "Test Line No." = FIELD ("Line No."),
                                                             Type = CONST (Input),
                                                             Name = FILTER (<> '')));
            Caption = 'No. of Input Parameters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "No. of Output Parameters"; Integer)
        {
            CalcFormula = Count ("OM - Test Parameter" WHERE ("Test Type" = FIELD (Type),
                                                             "Test No." = FIELD ("No."),
                                                             "Test Line No." = FIELD ("Line No."),
                                                             Type = CONST (Output),
                                                             Name = FILTER (<> '')));
            Caption = 'No. of Output Parameters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Maximum Duration (ms)"; Integer)
        {
            BlankZero = true;
            Caption = 'Maximum Duration (ms)';
        }
        field(9; "Run Frequency"; Option)
        {
            Caption = 'Run Frequency';
            OptionCaption = 'Only Manual,Before Transport,Before Every Tansport';
            OptionMembers = "Only Manual","Before Transport","Before Every Tansport";
        }
        field(10; "No. of Times Executed"; Integer)
        {
            CalcFormula = Count ("OM - Test Log" WHERE (Type = FIELD (Type),
                                                       "No." = FIELD ("No."),
                                                       "Line No." = FIELD ("Line No.")));
            Caption = 'No. of Times Executed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Last Test Date"; Date)
        {
            Caption = 'Last Test Date';
        }
        field(12; "Last Test Time"; Time)
        {
            Caption = 'Last Test Time';
        }
        field(13; "Last Duration (ms)"; Integer)
        {
            Caption = 'Last Duration (ms)';
        }
        field(14; "Last Test Succeeded"; Boolean)
        {
            Caption = 'Last Test Succeeded';
            Editable = false;
        }
        field(15; "Last Test Result"; Text[250])
        {
            Caption = 'Last Test Result';
            Editable = false;
        }
        field(16; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Transport No.")
        {
        }
    }

    fieldgroups
    {
    }
}

