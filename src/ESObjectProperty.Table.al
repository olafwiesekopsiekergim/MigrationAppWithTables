table 14123522 "ES Object Property"
{
    Caption = 'Object Property';
    DataCaptionFields = "Object Type", "Object ID", "Object Caption";

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            NotBlank = true;
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Source/DataItem Table ID"; Integer)
        {
            CalcFormula = Lookup ("ES Relation"."Relation Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID"),
                                                                           Type = FILTER ("Source Table" | "Data Item")));
            Caption = 'Source/DataItem Table ID';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID")));
            Caption = 'Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Read Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Read Permission" = FILTER (<> " ")));
            Caption = 'Read Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Insert Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Insert Permission" = FILTER (<> " ")));
            Caption = 'Insert Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Modify Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Modify Permission" = FILTER (<> " ")));
            Caption = 'Modify Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Delete Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Delete Permission" = FILTER (<> " ")));
            Caption = 'Delete Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Execute Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Execute Permission" = FILTER (<> " ")));
            Caption = 'Execute Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Recording Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Recording Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Recording Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Role Builder Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Builder Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                    "Object ID" = FIELD ("Object ID")));
            Caption = 'Builder Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Limited License Object"; Boolean)
        {
            Caption = 'Limited License Object';
            Editable = false;
        }
        field(15; "Read Permission (License)"; Option)
        {
            Caption = 'Read Permission (License)';
            Editable = false;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(16; "Insert Permission (License)"; Option)
        {
            Caption = 'Insert Permission (License)';
            Editable = false;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(17; "Modify Permission (License)"; Option)
        {
            Caption = 'Modify Permission (License)';
            Editable = false;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(18; "Delete Permission (License)"; Option)
        {
            Caption = 'Delete Permission (License)';
            Editable = false;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(19; "Execute Permission (License)"; Option)
        {
            Caption = 'Execute Permission (License)';
            Editable = false;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(20; "Object Level Permissions"; Boolean)
        {
            Caption = 'Object Level Permissions';
        }
        field(21; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(22; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(23; "History Table ID"; Integer)
        {
            BlankZero = true;
            Caption = 'History Table ID';
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = CONST (Table));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(24; "Security Table ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Security Table ID';
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = CONST (Table));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(25; "Skip During Export"; Boolean)
        {
            Caption = 'Skip During Export';
        }
        field(26; "Export Error"; Text[250])
        {
            Caption = 'Export Error';
        }
        field(27; "Security Filter Table"; Boolean)
        {
            Caption = 'Security Filter Table';
        }
        field(28; "Limited User Table Access"; Option)
        {
            Caption = 'Limited User Table Access';
            OptionCaption = ' ,Included,Excluded';
            OptionMembers = " ",Included,Excluded;
        }
        field(30; "Exported Date Time"; DateTime)
        {
            Caption = 'Exported Date Time';
            Editable = false;
        }
        field(31; "Imported Date Time"; DateTime)
        {
            Caption = 'Imported Date Time';
        }
        field(32; "Quick Security Type"; Option)
        {
            Caption = 'Quick Security Type';
            OptionCaption = 'Full Access,Read Only,No Access';
            OptionMembers = "Full Access","Read Only","No Access";
        }
        field(33; "Segregation of Duties"; Boolean)
        {
            Caption = 'Segregation of Duties';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; "Created Date Time")
        {
        }
        key(Key3; "History Table ID")
        {
        }
        key(Key4; "Security Table ID")
        {
        }
        key(Key5; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

