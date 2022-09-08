table 11102084 "OM - Check Transferfields Fld."
{
    Caption = 'Check Transferfields Field';
    DataPerCompany = false;

    fields
    {
        field(1; "From Table No."; Integer)
        {
            Caption = 'From Table No.';
        }
        field(2; "To Table No."; Integer)
        {
            Caption = 'To Table No.';
        }
        field(3; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(4; "From Field Name"; Text[30])
        {
            Caption = 'From Field Name';
        }
        field(5; "From Field Type"; Text[30])
        {
            Caption = 'From Field Type';
        }
        field(6; "To Field Name"; Text[30])
        {
            Caption = 'To Field Name';
        }
        field(7; "To Field Type"; Text[30])
        {
            Caption = 'To Field Type';
        }
        field(8; Warning; Boolean)
        {
            Caption = 'Warning';
        }
        field(9; "Is Error"; Boolean)
        {
            Caption = 'Error';
        }
        field(10; "From Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("From Table No.")));
            Caption = 'From Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "To Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("To Table No.")));
            Caption = 'To Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "From Field Class"; Option)
        {
            Caption = 'From Field Class';
            OptionCaption = ' ,Normal,FlowField,FlowFilter';
            OptionMembers = " ",Normal,FlowField,FlowFilter;
        }
        field(13; "To Field Class"; Option)
        {
            Caption = 'To Field Class';
            OptionCaption = ' ,Normal,FlowField,FlowFilter';
            OptionMembers = " ",Normal,FlowField,FlowFilter;
        }
        field(14; Known; Boolean)
        {
            Caption = 'Known';
        }
    }

    keys
    {
        key(Key1; "From Table No.", "To Table No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

