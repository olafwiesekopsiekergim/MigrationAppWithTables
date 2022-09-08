table 14123606 "ES Live Variable"
{
    Caption = 'Live Variable';

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
        field(5; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(6; "Field ID"; Integer)
        {
            Caption = 'Field ID';
        }
        field(7; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
        }
        field(8; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = CONST (Table));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(9; "Source Code"; Text[250])
        {
            Caption = 'Source Code';
        }
        field(10; "Table Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                                 "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "File Position"; Integer)
        {
            Caption = 'File Position';
        }
        field(12; "Source Code Line No."; Integer)
        {
            Caption = 'Source Code Line No.';
        }
        field(13; "Limited Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Limited License Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Limited License Table Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = CONST (TableData),
                                                            "Object ID" = FIELD ("Table ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Table Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Parser Error"; Boolean)
        {
            Caption = 'Parser Error';
        }
        field(17; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(18; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(19; "Free Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Reference Type"; Option)
        {
            Caption = 'Reference Type';
            OptionCaption = ' ,Procedure,Local Procedure,Event,Local Variable,Global Variable';
            OptionMembers = " ","Procedure","Local Procedure","Event","Local Variable","Global Variable";
        }
        field(21; "Reference Name"; Text[250])
        {
            Caption = 'Reference Name';
        }
        field(22; "Reference ID"; Integer)
        {
            Caption = 'Reference ID';
        }
        field(23; "Variable Object Type"; Option)
        {
            Caption = 'Variable Object Type';
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(24; "Variable Object ID"; Integer)
        {
            Caption = 'Variable Object ID';
            NotBlank = true;
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = FIELD ("Variable Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(25; "Variable Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Variable Object Type"),
                                                                                 "Object ID" = FIELD ("Variable Object ID")));
            Caption = 'Variable Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Variable Name"; Text[250])
        {
            Caption = 'Variable Name';
        }
        field(27; "Variable ID"; Integer)
        {
            Caption = 'Variable ID';
        }
        field(28; "Variable Type"; Text[30])
        {
            Caption = 'Variable Type';
        }
        field(29; "Variable Array Dimension"; Text[30])
        {
            Caption = 'Variable Array Dimension';
        }
        field(30; "Variable is Temporary"; Boolean)
        {
            Caption = 'Variable is Temporary';
        }
        field(31; "Variable by Reference"; Boolean)
        {
            Caption = 'Variable by Reference';
        }
        field(32; "Variable is a Parameter"; Boolean)
        {
            Caption = 'Variable is a Parameter';
        }
        field(33; "Return Value"; Boolean)
        {
            Caption = 'Return Value';
        }
        field(34; "Security Filter Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "Security Filter Table Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = CONST (TableData),
                                                            "Object ID" = FIELD ("Table ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Table Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(36; "Limited User Included Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "Limited User Incl. Table Obj."; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = CONST (TableData),
                                                            "Object ID" = FIELD ("Table ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Table Object';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Variable Object Type", "Variable Object ID")
        {
        }
        key(Key3; "Created Date Time")
        {
        }
        key(Key4; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

