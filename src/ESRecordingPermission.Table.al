table 14123652 "ES Recording Permission"
{
    Caption = 'Recording Permission';

    fields
    {
        field(1; "Recording Code"; Code[30])
        {
            Caption = 'Recording Code';
            NotBlank = true;
            TableRelation = "ES Recording";
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
        field(6; "Read Required"; Boolean)
        {
            Caption = 'Read Required';
        }
        field(7; "Insert Required"; Boolean)
        {
            Caption = 'Insert Required';
        }
        field(8; "Modify Required"; Boolean)
        {
            Caption = 'Modify Required';
        }
        field(9; "Delete Required"; Boolean)
        {
            Caption = 'Delete Required';
        }
        field(10; "Execute Required"; Boolean)
        {
            Caption = 'Execute Required';
        }
        field(11; Origin; Option)
        {
            Caption = 'Origin';
            OptionCaption = ' ,Recorded,Additional,Object Information,Relation,Copied,History Table,Security Table';
            OptionMembers = " ",Recorded,Additional,"Object Information",Relation,Copied,"History Table","Security Table";
        }
        field(12; "Do not include Additional"; Boolean)
        {
            Caption = 'Do not include Additional';
        }
        field(13; "Source/DataItem Table ID"; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("ES Relation"."Relation Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID"),
                                                                           Type = FILTER ("Source Table" | "Data Item")));
            Caption = 'Source/DataItem Table ID';
            Editable = false;
            FieldClass = FlowField;
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
        field(16; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(17; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(18; "Free Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Calculate Flowfield Required"; Boolean)
        {
            Caption = 'Calculate Flowfield Required';
        }
        field(20; "Object Information Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Object Information" WHERE ("Object Type" = FIELD ("Object Type"),
                                                               "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Information Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Security Filter Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Limited User Included Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Object';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Recording Code", "Object Type", "Object ID")
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

