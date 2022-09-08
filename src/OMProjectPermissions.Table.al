table 11102050 "OM - Project Permissions"
{
    Caption = 'Project Permissions';
    DataPerCompany = false;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            Caption = 'Project No.';
            TableRelation = "OM - Project";
        }
        field(2; "Role Id"; Code[20])
        {
            Caption = 'Role Id';
            TableRelation = "Permission Set";
            ValidateTableRelation = false;
        }
        field(3; "Role Name"; Text[30])
        {
            Caption = 'Role Name';
        }
        field(4; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,MenuSuite,Page,Query,,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit",MenuSuite,"Page","Query",,System;
        }
        field(5; "Object No."; Integer)
        {
            Caption = 'Object No.';
            TableRelation = IF ("Object Type" = CONST (TableData)) AllObj."Object ID" WHERE ("Object Type" = CONST (Table))
            ELSE
            IF ("Object Type" = CONST (Table)) AllObj."Object ID" WHERE ("Object Type" = CONST (Table))
            ELSE
            IF ("Object Type" = CONST (Page)) AllObj."Object ID" WHERE ("Object Type" = CONST (Page))
            ELSE
            IF ("Object Type" = CONST (Report)) AllObj."Object ID" WHERE ("Object Type" = CONST (Report))
            ELSE
            IF ("Object Type" = CONST (Codeunit)) AllObj."Object ID" WHERE ("Object Type" = CONST (Codeunit))
            ELSE
            IF ("Object Type" = CONST (System)) AllObj."Object ID" WHERE ("Object Type" = CONST (System));
        }
        field(6; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (AllObj."Object Name" WHERE ("Object Type" = FIELD ("Object Type"),
                                                             "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Read Permission"; Option)
        {
            Caption = 'Read Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(8; "Insert Permission"; Option)
        {
            Caption = 'Insert Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(9; "Modify Permission"; Option)
        {
            Caption = 'Modify Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(10; "Delete Permission"; Option)
        {
            Caption = 'Delete Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(11; "Execute Permission"; Option)
        {
            Caption = 'Execute Permission';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(12; "Security Filter"; TableFilter)
        {
            Caption = 'Security Filter';
        }
    }

    keys
    {
        key(Key1; "Project No.", "Role Id", "Object Type", "Object No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

