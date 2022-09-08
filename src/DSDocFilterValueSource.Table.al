table 2087625 "DS Doc. Filter Value Source"
{
    Caption = 'DS Doc. Filter Value Source';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; "Entity Type"; Option)
        {
            Caption = 'Entity Type';
            OptionCaption = 'Task,Resource';
            OptionMembers = Task,Resource;
        }
        field(3; Comment; Text[250])
        {
        }
        field(4; "Table Name"; Text[50])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Resource Key Field No."; Integer)
        {
            Caption = 'Resource Key Field No.';
        }
        field(6; "Job Key Field No."; Integer)
        {
            Caption = 'Job Key Field No.';
        }
        field(7; "Task Key Field No."; Integer)
        {
            Caption = 'Task Key Field No.';
        }
        field(8; "Resource Key Field Name"; Text[50])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Resource Key Field No.")));
            Caption = 'Resource Key Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Job Key Field Name"; Text[50])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Job Key Field No.")));
            Caption = 'Job Key Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Task Key Field Name"; Text[50])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Task Key Field No.")));
            Caption = 'Task Key Field Name';
            Editable = false;
            FieldClass = FlowField;
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

