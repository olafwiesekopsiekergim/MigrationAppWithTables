table 14123601 "ES Relation"
{
    Caption = 'Relation';

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
        field(8; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Parser Error,Table Relation,Flowfield,Source Table,Data Item,Permission,Manual,Data Per Company,PagePartID,MenuItem,Editable,Field Level and Data Security Change,OnLookup';
            OptionMembers = "Parser Error","Table Relation",Flowfield,"Source Table","Data Item",Permission,Manual,"Data Per Company",PagePartID,MenuItem,Editable,"FLADS Change",OnLookup;
        }
        field(9; "Relation Object ID"; Integer)
        {
            Caption = 'Relation Object ID';
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = CONST (Table));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(10; "Source Code"; Text[250])
        {
            Caption = 'Source Code';
        }
        field(11; "Relation Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Relation Object Type"),
                                                                                 "Object ID" = FIELD ("Relation Object ID")));
            Caption = 'Relation Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "File Position"; Integer)
        {
            Caption = 'File Position';
        }
        field(13; "Source Code Line No."; Integer)
        {
            Caption = 'Source Code Line No.';
        }
        field(14; "Limited Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Limited License Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Limited License Relation Obj."; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Relation Object Type"),
                                                            "Object ID" = FIELD ("Relation Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Relation Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Parser Error"; Boolean)
        {
            Caption = 'Parser Error';
        }
        field(18; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(19; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(20; "Free Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Relation Object Type"; Option)
        {
            Caption = 'Relation Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(22; "Limited Access Relation Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Relation Object Type"),
                                                            "Object ID" = FIELD ("Relation Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Relation Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Free Access Relation Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Relation Object Type"),
                                                            "Object ID" = FIELD ("Relation Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Relation Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Security Filter Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Security Filter Relation Obj."; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Relation Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Limited User Included Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Limited User Incl. Rel. Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Relation Object Type"),
                                                            "Object ID" = FIELD ("Relation Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Relation Object';
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
        key(Key2; Type, "Relation Object ID")
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

