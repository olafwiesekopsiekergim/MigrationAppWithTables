table 14123516 "ES Rest. Point Role Permission"
{
    Caption = 'Restore Point Permission';

    fields
    {
        field(1; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            TableRelation = "ES Restore Point Role"."Role ID" WHERE ("Version Code" = FIELD ("Version Code"));
        }
        field(2; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Restore Point Role"."Role Name" WHERE ("Role ID" = FIELD ("Role ID"),
                                                                            "Version Code" = FIELD ("Version Code")));
            Caption = 'Permission Set Name';
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
            TableRelation = "ES Restore Point Object Info."."Object ID" WHERE ("Version Code" = FIELD ("Version Code"),
                                                                               "Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Restore Point Object Info."."Object Caption" WHERE ("Version Code" = FIELD ("Version Code"),
                                                                                         "Object Type" = FIELD ("Object Type"),
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
        field(1001; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            NotBlank = true;
            TableRelation = "ES Restore Point".Code;
        }
        field(1002; "Exists in Live"; Boolean)
        {
            CalcFormula = Exist (Permission WHERE ("Role ID" = FIELD ("Role ID"),
                                                  "Object Type" = FIELD ("Object Type"),
                                                  "Object ID" = FIELD ("Object ID")));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Role Permission" WHERE ("Role ID" = FIELD ("Role ID"),
                                                            "Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID")));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", "Role ID", "Object Type", "Object ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

