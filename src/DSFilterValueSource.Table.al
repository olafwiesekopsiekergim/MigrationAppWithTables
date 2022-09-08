table 2087627 "DS Filter Value Source"
{
    Caption = 'DS Filter Value Source';
    DataCaptionFields = GroupName, "Table Name", "Field Name";

    fields
    {
        field(1; GroupName; Text[50])
        {
            Caption = 'GroupName';
            TableRelation = "DS Filter Group".GroupName WHERE (Type = FIELD (Type));
        }
        field(2; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(3; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(4; "Field Filter"; Text[250])
        {
            Caption = 'Field Filter';
        }
        field(21; "Table Name"; Text[80])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Field Name"; Text[80])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Table No."),
                                                        "No." = FIELD ("Field No.")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; Type; Option)
        {
            OptionMembers = FilterGroup,Category,TimeMarker;
        }
    }

    keys
    {
        key(Key1; Type, GroupName, "Table No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

