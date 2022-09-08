table 5100962 "DIS - Mapping Filter"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Filter';
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
        field(5; "Rec. Field"; Text[250])
        {
            Caption = 'Field';
            NotBlank = true;
        }
        field(6; "Rec. Repository Code"; Code[20])
        {
            CalcFormula = Lookup ("DIS - Mapping Line"."Repository Code" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                               "Version No." = FIELD ("Version No."),
                                                                               "Line No." = FIELD ("Mapping Line No.")));
            Caption = 'Repository Code';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Rec. Field Caption"; Text[80])
        {
            Caption = 'Field Caption';
            Editable = false;
        }
        field(16; "Sorting Position"; Integer)
        {
            Caption = 'Sorting Position';
        }
        field(30; "Value Class"; Option)
        {
            Caption = 'Value Class';
            InitValue = Repository;
            OptionCaption = 'Constant,Filter,Repository,Formula,Partner';
            OptionMembers = "Const","Filter",Repository,Formula,Partner;
        }
        field(31; "Value Repository Code"; Code[20])
        {
            Caption = 'Value Repository Code';
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(35; "Value Field"; Text[250])
        {
            Caption = 'Filter Value';
        }
        field(36; "Value Field Caption"; Text[50])
        {
            Caption = 'Value Field Caption';
            Editable = false;
        }
        field(40; "Value Format String"; Text[30])
        {
            Caption = 'Format Property';
        }
        field(47; "Conversion Code"; Code[20])
        {
            Caption = 'Conversion Code';
            TableRelation = "DIS - Conversion Header";
        }
        field(80; "Filter Criteria"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Criterion" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                 "Version No." = FIELD ("Version No."),
                                                                 "Mapping Line No." = FIELD ("Mapping Line No."),
                                                                 "Mapping Field Line No." = CONST (0),
                                                                 "Mapping Codeunit Line No." = CONST (0),
                                                                 "Mapping Variable Line No." = CONST (0),
                                                                 "Mapping Filter Line No." = FIELD ("Line No.")));
            Caption = 'Criteria';
            Editable = false;
            FieldClass = FlowField;
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
        key(Key3; "Mapping Code", "Version No.", "Mapping Line No.", "Rec. Field")
        {
        }
    }

    fieldgroups
    {
    }
}

