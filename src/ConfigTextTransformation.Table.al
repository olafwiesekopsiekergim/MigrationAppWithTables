table 8640 "Config. Text Transformation"
{
    Caption = 'Config. Text Transformation';

    fields
    {
        field(1; "Package Code"; Code[20])
        {
            Caption = 'Package Code';
            NotBlank = true;
            TableRelation = "Config. Package";
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(3; "Field ID"; Integer)
        {
            Caption = 'Field ID';
            TableRelation = "Config. Package Field"."Field ID" WHERE ("Table ID" = FIELD ("Table ID"));
        }
        field(4; "Transformation Type"; Option)
        {
            Caption = 'Transformation Type';
            OptionCaption = 'Uppercase,Lowercase,Title Case,Trim,Substring,Replace,Regular Expression,Remove Non-Alphanumeric Characters,Date and Time Formatting';
            OptionMembers = Uppercase,Lowercase,"Title Case",Trim,Substring,Replace,"Regular Expression","Remove Non-Alphanumeric Characters","Date and Time Formatting";
        }
        field(5; "Processing Order"; Integer)
        {
            Caption = 'Processing Order';
        }
        field(6; "Table Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Table),
                                                                        "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
            TableRelation = Field.FieldName WHERE (TableNo = FIELD ("Table ID"));
        }
        field(10; "Current Value"; Text[250])
        {
            Caption = 'Current Value';
        }
        field(11; "New Value"; Text[250])
        {
            Caption = 'New Value';
        }
        field(15; "Start Position"; Integer)
        {
            BlankZero = true;
            Caption = 'Start Position';
        }
        field(16; Length; Integer)
        {
            BlankZero = true;
            Caption = 'Length';
        }
        field(18; Format; Text[30])
        {
            Caption = 'Format';
        }
        field(20; "Language ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Language ID';
            TableRelation = "Windows Language";
        }
        field(21; Enabled; Boolean)
        {
            Caption = 'Enabled';
        }
        field(50; "Last Used Field ID"; Integer)
        {
            CalcFormula = Max ("Config. Text Transformation"."Processing Order" WHERE ("Package Code" = FIELD ("Package Code"),
                                                                                      "Table ID" = FIELD ("Table ID"),
                                                                                      "Field ID" = FIELD ("Field ID")));
            Caption = 'Last Used Field ID';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Package Code", "Table ID", "Field ID", "Processing Order")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

