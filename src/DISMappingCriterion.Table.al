table 5100964 "DIS - Mapping Criterion"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Criterion';
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
        field(4; "Mapping Field Line No."; Integer)
        {
            Caption = 'Mapping Field Line No.';
            TableRelation = "DIS - Mapping Field"."Line No." WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                    "Version No." = FIELD ("Version No."),
                                                                    "Mapping Line No." = FIELD ("Mapping Line No."));
        }
        field(5; "Mapping Codeunit Line No."; Integer)
        {
            Caption = 'Mapping Codeunit Line No.';
            TableRelation = "DIS - Mapping Codeunit"."Line No." WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                       "Version No." = FIELD ("Version No."),
                                                                       "Mapping Line No." = FIELD ("Mapping Line No."));
        }
        field(6; "Mapping Variable Line No."; Integer)
        {
            Caption = 'Mapping Variable Line No.';
            TableRelation = "DIS - Mapping Variable"."Line No." WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                       "Version No." = FIELD ("Version No."),
                                                                       "Mapping Line No." = FIELD ("Mapping Line No."));
        }
        field(7; "Mapping Filter Line No."; Integer)
        {
            Caption = 'Mapping Filter Line No.';
            TableRelation = "DIS - Mapping Filter"."Line No." WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                     "Version No." = FIELD ("Version No."),
                                                                     "Mapping Line No." = FIELD ("Mapping Line No."));
        }
        field(8; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(16; "Sorting Position"; Integer)
        {
            Caption = 'Sorting Position';
        }
        field(20; "Validation Type"; Option)
        {
            Caption = 'Validation Type';
            OptionCaption = '=,<>,Contains,Not Contains,Ends With,Starts With,Is Null Or Empty,Not Empty,>,>=,<,<=';
            OptionMembers = Equal,NotEqual,Contains,NotContains,EndsWith,StartsWith,IsNullOrEmpty,NotEmpty,IsGreater,IsGreaterEqual,IsLower,IsLowerEqual;
        }
        field(30; "Left Value Class"; Option)
        {
            Caption = 'Value Class';
            InitValue = Repository;
            OptionCaption = 'Constant,,Repository,Formula,Partner';
            OptionMembers = "Const","Filter",Repository,Formula,Partner;
        }
        field(31; "Left Value Repository Code"; Code[20])
        {
            Caption = 'Value Repository Code';
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(35; "Left Value Field"; Text[250])
        {
            Caption = 'Value';
            NotBlank = true;
        }
        field(36; "Left Value Field Caption"; Text[50])
        {
            Caption = 'Value Field Caption';
            Editable = false;
        }
        field(40; "Left Value Format String"; Text[30])
        {
            Caption = 'Format Property';
        }
        field(47; "Left Conversion Code"; Code[20])
        {
            Caption = 'Conversion Code';
            TableRelation = "DIS - Conversion Header";
        }
        field(130; "Right Value Class"; Option)
        {
            Caption = 'Value Class';
            InitValue = Repository;
            OptionCaption = 'Constant,,Repository,Formula,Partner';
            OptionMembers = "Const","Filter",Repository,Formula,Partner;
        }
        field(131; "Right Value Repository Code"; Code[20])
        {
            Caption = 'Value Repository Code';
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(135; "Right Value Field"; Text[250])
        {
            Caption = 'Value';
        }
        field(136; "Right Value Field Caption"; Text[50])
        {
            Caption = 'Value Field Caption';
            Editable = false;
        }
        field(140; "Right Value Format String"; Text[30])
        {
            Caption = 'Format Property';
        }
        field(147; "Right Conversion Code"; Code[20])
        {
            Caption = 'Conversion Code';
            TableRelation = "DIS - Conversion Header";
        }
    }

    keys
    {
        key(Key1; "Mapping Code", "Version No.", "Mapping Line No.", "Mapping Field Line No.", "Mapping Codeunit Line No.", "Mapping Variable Line No.", "Mapping Filter Line No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Mapping Code", "Version No.", "Mapping Line No.", "Mapping Field Line No.", "Mapping Codeunit Line No.", "Mapping Variable Line No.", "Mapping Filter Line No.", "Sorting Position")
        {
        }
    }

    fieldgroups
    {
    }
}

