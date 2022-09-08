table 11102049 "OM - Action Field"
{
    Caption = 'Action Field';
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
            TableRelation = IF (Type = CONST (Group)) "OM - Action Group"
            ELSE
            IF (Type = CONST (Project)) "OM - Project";
        }
        field(3; "Sub Type"; Option)
        {
            Caption = 'Sub Type';
            OptionCaption = ' ,Before,After';
            OptionMembers = " ",Before,After;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "OM - Action"."Line No." WHERE (Type = FIELD (Type),
                                                            "No." = FIELD ("No."),
                                                            "Sub Type" = FIELD ("Sub Type"));
        }
        field(6; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table),
                                             "Company Name" = CONST (''));
        }
        field(7; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(8; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
            Editable = false;
        }
        field(9; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(10; "Into Table No."; Integer)
        {
            Caption = 'Into Table No.';
        }
        field(11; "Into Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Into Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Into Table No."));
        }
        field(12; "Into Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Into Table No."),
                                                        "No." = FIELD ("Into Field No.")));
            Caption = 'Into Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Import Action"; Option)
        {
            Caption = 'Action';
            OptionCaption = 'Fill,Validate,Skip';
            OptionMembers = Fill,Validate,Skip;
        }
        field(15; Sorting; Integer)
        {
            Caption = 'Sorting';
        }
        field(16; Value; Text[100])
        {
            Caption = 'Value';
        }
        field(17; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
        field(18; "Type Name"; Text[30])
        {
            Caption = 'Type Name';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Sub Type", "Line No.", "Field No.")
        {
            Clustered = true;
        }
        key(Key2; Sorting)
        {
        }
        key(Key3; "Transport No.")
        {
        }
    }

    fieldgroups
    {
    }
}

