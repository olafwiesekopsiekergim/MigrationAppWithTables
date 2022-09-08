table 5100965 "DIS - Mapping Codeunit"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Codeunit';
    DataPerCompany = false;

    fields
    {
        field(1; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(2; "Version No."; Integer)
        {
            Caption = 'Version No.';
            TableRelation = "DIS - Mapping Version"."No." WHERE ("Mapping Code" = FIELD ("Mapping Code"));
        }
        field(3; "Mapping Line No."; Integer)
        {
            Caption = 'Mapping Line No.';
            TableRelation = "DIS - Mapping Line"."Line No." WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Codeunit No."; Integer)
        {
            Caption = 'Codeunit No.';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Codeunit));
        }
        field(6; "Codeunit Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Codeunit),
                                                                        "Object ID" = FIELD ("Codeunit No.")));
            Caption = 'Codeunit Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Run Time"; Option)
        {
            Caption = 'Run Time';
            InitValue = PostRecord;
            OptionCaption = 'Before Record,After Record,Before Mapping Line,After Mapping Line';
            OptionMembers = PreRecord,PostRecord,PreMappingLine,PostMappingLine;
        }
        field(16; "Sorting Position"; Integer)
        {
            Caption = 'Sorting Position';
        }
        field(80; "Codeunit Criteria"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Criterion" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                 "Version No." = FIELD ("Version No."),
                                                                 "Mapping Line No." = FIELD ("Mapping Line No."),
                                                                 "Mapping Field Line No." = CONST (0),
                                                                 "Mapping Codeunit Line No." = FIELD ("Line No."),
                                                                 "Mapping Variable Line No." = CONST (0),
                                                                 "Mapping Filter Line No." = CONST (0)));
            Caption = 'Criteria';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Run Result Variable Key"; Text[50])
        {
            Caption = 'Run Result Variable Key';
        }
        field(91; "Codeunit Parameter"; Code[20])
        {
            Caption = 'Parameter';
        }
    }

    keys
    {
        key(Key1; "Mapping Code", "Version No.", "Mapping Line No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Mapping Code", "Version No.", "Mapping Line No.", "Sorting Position")
        {
        }
    }

    fieldgroups
    {
    }
}

