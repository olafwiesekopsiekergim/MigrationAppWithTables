table 14123816 "ES FLADS Copy Setup"
{
    Caption = 'Field Level and Data Security Copy Setup';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            Editable = false;
            NotBlank = true;
        }
        field(2; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            Editable = false;
            NotBlank = true;
            TableRelation = "ES Source Table Setup";
        }
        field(3; "Code"; Code[50])
        {
            Caption = 'Code';
            Editable = false;
        }
        field(11; "From Setup Company"; Boolean)
        {
            Caption = 'From Setup Company';
        }
        field(12; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(13; "Last Copy Date Time"; DateTime)
        {
            Caption = 'Last Copy Date Time';
            Editable = false;
        }
        field(14; "Table Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Source Table Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table ID")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Table ID", "Source Table ID", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

