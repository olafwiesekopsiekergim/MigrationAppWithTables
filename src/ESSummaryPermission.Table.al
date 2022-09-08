table 14123537 "ES Summary Permission"
{
    Caption = 'Summary Permission';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            NotBlank = true;
            OptionCaption = ' ,Database Login,User,Permission Group,Permission Set,Windows Group,Recording,Live Database Login,Live User,Live Permission Set';
            OptionMembers = " ","Database Login","Windows Login","Role Group",Role,"Windows Group",Recording,"Live Database Login","Live Windows Login","Live Role";
        }
        field(2; "Code"; Code[50])
        {
            Caption = 'Code';
            NotBlank = true;
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
        field(5; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = "ES Company".Name;
        }
        field(7; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Read Permission"; Option)
        {
            Caption = 'Read Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(9; "Insert Permission"; Option)
        {
            Caption = 'Insert Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(10; "Modify Permission"; Option)
        {
            Caption = 'Modify Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(11; "Delete Permission"; Option)
        {
            Caption = 'Delete Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(12; "Execute Permission"; Option)
        {
            Caption = 'Execute Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(13; "Security Filter"; TableFilter)
        {
            Caption = 'Security Filter';
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
        field(16; "Free Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Security Filter Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Limited User Included Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Segregation of Duties Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Segregation of Duties" = CONST (true)));
            Caption = 'Segregation of Duties Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "From Role Group ID"; Code[20])
        {
            Caption = 'From Permission Group ID';
            TableRelation = "ES Role Group";
        }
        field(21; "From Role ID"; Code[20])
        {
            Caption = 'From Permission Set ID';
            TableRelation = "ES Role";
        }
        field(22; "No. of Times Assigned"; Integer)
        {
            Caption = 'No. of Times Assigned';
        }
        field(23; "From Company Group ID"; Text[30])
        {
            Caption = 'From Company Group ID';
            TableRelation = "ES Company Group";
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Object Type", "Object ID", "Company Name", "From Role Group ID", "From Role ID", "From Company Group ID")
        {
            Clustered = true;
        }
        key(Key2; Type, "Code", "Company Name")
        {
        }
        key(Key3; "Company Name", "Object Type", "Object ID")
        {
        }
    }

    fieldgroups
    {
    }
}

