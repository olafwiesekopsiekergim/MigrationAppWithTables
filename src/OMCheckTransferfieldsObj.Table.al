table 11102083 "OM - Check Transferfields Obj."
{
    Caption = 'Check Transferfields Object';
    DataPerCompany = false;

    fields
    {
        field(1; "From Table No."; Integer)
        {
            Caption = 'From Table No.';
            NotBlank = true;
        }
        field(2; "From Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("From Table No.")));
            Caption = 'From Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "To Table No."; Integer)
        {
            Caption = 'To Table No.';
            NotBlank = true;
        }
        field(4; "To Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("To Table No.")));
            Caption = 'To Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "No. of Warnings"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Transferfields Fld." WHERE ("From Table No." = FIELD ("From Table No."),
                                                                        "To Table No." = FIELD ("To Table No."),
                                                                        "Field No." = FIELD ("Field No. Filter"),
                                                                        Warning = FILTER (true),
                                                                        Known = FIELD ("Known Filter")));
            Caption = 'No. of Warnings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "No. of Errors"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Transferfields Fld." WHERE ("From Table No." = FIELD ("From Table No."),
                                                                        "To Table No." = FIELD ("To Table No."),
                                                                        "Field No." = FIELD ("Field No. Filter"),
                                                                        "Is Error" = FILTER (true),
                                                                        Known = FIELD ("Known Filter")));
            Caption = 'No. of Errors';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Field No. Filter"; Integer)
        {
            Caption = 'Field No. Filter';
            FieldClass = FlowFilter;
        }
        field(8; "Known Filter"; Boolean)
        {
            Caption = 'Known Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "From Table No.", "To Table No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

