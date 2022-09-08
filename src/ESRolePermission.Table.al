table 14123506 "ES Role Permission"
{
    Caption = 'Permission';

    fields
    {
        field(1; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
            TableRelation = "ES Role"."Role ID";
        }
        field(2; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role".Name WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(4; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Read Permission"; Option)
        {
            Caption = 'Read Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(7; "Insert Permission"; Option)
        {
            Caption = 'Insert Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(8; "Modify Permission"; Option)
        {
            Caption = 'Modify Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(9; "Delete Permission"; Option)
        {
            Caption = 'Delete Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(10; "Execute Permission"; Option)
        {
            Caption = 'Execute Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(11; "Security Filter"; TableFilter)
        {
            Caption = 'Security Filter';
        }
        field(1002; Origin; Option)
        {
            Caption = 'Origin';
            OptionCaption = ' ,Recorded,Additional,Object Information,Relation,Copied,History Table,Security Table,Builder';
            OptionMembers = " ",Recorded,Additional,"Object Information",Relation,Copied,"History Table","Security Table",Builder;
        }
        field(1003; "Do not include Additional"; Boolean)
        {
            Caption = 'Do not include Additional';
        }
        field(1004; "Source/DataItem Table ID"; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("ES Relation"."Relation Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID"),
                                                                           Type = FILTER ("Source Table" | "Data Item")));
            Caption = 'Source/DataItem Table ID';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1005; "Limited Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1006; "Limited License Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1007; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(1008; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(1009; "Free Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1010; "Role Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Role" WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1011; "Security Filter Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1012; "Limited User Included Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1013; "Exists in Parent Role"; Boolean)
        {
            Caption = 'Exists in Parent Permission Set';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Role ID", "Object Type", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object ID")
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

