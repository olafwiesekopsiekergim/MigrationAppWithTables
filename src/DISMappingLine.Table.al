table 5100960 "DIS - Mapping Line"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Line';
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
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Repository Code"; Code[20])
        {
            Caption = 'Repository Code';
            NotBlank = true;
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(6; "Repository Type"; Option)
        {
            CalcFormula = Lookup ("DIS - Mapping Repository".Type WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                        "Version No." = FIELD ("Version No."),
                                                                        Code = FIELD ("Repository Code")));
            Caption = 'Repository Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'NAV Table,Record Pool,XML Node,ADO Table,SharePoint List';
            OptionMembers = "Table",RecordPool,XmlDocument,ADO,SharePoint;
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(15; Indent; Integer)
        {
            Caption = 'Line Indentation';
        }
        field(16; "Sorting Position"; Integer)
        {
            Caption = 'Sorting Position';
        }
        field(20; "Line Action"; Option)
        {
            Caption = 'Line Action';
            OptionCaption = 'Find,Insert else Modify All,Insert else Skip,Modify,Delete,,Mapping';
            OptionMembers = Find,InsertModify,InsertSkip,Modify,Delete,Rename,Mapping;
        }
        field(21; "Line Sub Action"; Option)
        {
            Caption = 'Line Sub Action';
            OptionCaption = 'All,Current Record,First Record,Last Record,Not Found';
            OptionMembers = All,Current,First,Last,Empty;
        }
        field(80; "Mapping Criteria"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Criterion" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                 "Version No." = FIELD ("Version No."),
                                                                 "Mapping Line No." = FIELD ("Line No."),
                                                                 "Mapping Field Line No." = CONST (0),
                                                                 "Mapping Codeunit Line No." = CONST (0),
                                                                 "Mapping Variable Line No." = CONST (0),
                                                                 "Mapping Filter Line No." = CONST (0)));
            Caption = 'Criteria';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Mapping Fields"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Field" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                             "Version No." = FIELD ("Version No."),
                                                             "Mapping Line No." = FIELD ("Line No.")));
            Caption = 'Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(82; "Mapping Codeunits"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Codeunit" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                "Version No." = FIELD ("Version No."),
                                                                "Mapping Line No." = FIELD ("Line No.")));
            Caption = 'Codeunits';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "Mapping Variables"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Variable" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                "Version No." = FIELD ("Version No."),
                                                                "Mapping Line No." = FIELD ("Line No.")));
            Caption = 'Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "Mapping Filters"; Boolean)
        {
            CalcFormula = Exist ("DIS - Mapping Filter" WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                              "Version No." = FIELD ("Version No."),
                                                              "Mapping Line No." = FIELD ("Line No.")));
            Caption = 'Filters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Skip NAV Table Triggers"; Boolean)
        {
            Caption = 'Skip NAV Table Triggers';
        }
        field(91; "Skip NAV Field Triggers"; Boolean)
        {
            Caption = 'Skip NAV Field Validation (Transfer Fields only)';
        }
        field(130; "TransferFields Repository Code"; Code[20])
        {
            Caption = 'Transfer Fields Repository Code';
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(200; "Sub Mapping Code"; Code[20])
        {
            Caption = 'Sub Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(201; "Sub Mapping Version"; Integer)
        {
            BlankZero = true;
            Caption = 'Sub Mapping Version';
            TableRelation = "DIS - Mapping Version"."No." WHERE ("Mapping Code" = FIELD ("Sub Mapping Code"));
        }
        field(230; "Show Progress Bar"; Boolean)
        {
            Caption = 'Show Progress Bar';
        }
    }

    keys
    {
        key(Key1; "Mapping Code", "Version No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Mapping Code", "Version No.", "Sorting Position")
        {
        }
    }

    fieldgroups
    {
    }
}

