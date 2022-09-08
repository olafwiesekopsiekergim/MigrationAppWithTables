table 11102048 "OM - Action"
{
    Caption = 'Action';
    DataPerCompany = false;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Group,Project,Temporary';
            OptionMembers = Group,Project,"Temporary";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Group)) "OM - Action Group"
            ELSE
            IF (Type = CONST (Project)) "OM - Project";
        }
        field(3; "Sub Type"; Option)
        {
            Caption = 'Sub Type';
            OptionCaption = ' ,Before,After';
            OptionMembers = " ",Before,After;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Action Type"; Option)
        {
            Caption = 'Action Type';
            OptionCaption = 'Copy Data,Delete Data,Transfer Data,Fill Fields,Run Report,Run Codeunit,,,Add Record,Rename Data,Renumber Object,Renumber Field,,,Execute SQL Query,Execute DOS Command';
            OptionMembers = "Copy Data","Delete Data","Transfer Data","Fill Fields","Run Report","Run Codeunit",,,"Add Record","Rename Data","Renumber Object","Renumber Field",,,"Execute SQL Query","Execute DOS Command";
        }
        field(20; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            TableRelation = IF ("Action Type" = FILTER ("Copy Data" | "Delete Data" | "Transfer Data" | "Fill Fields" | "Rename Data" | "Renumber Object" | "Renumber Field")) AllObj."Object ID" WHERE ("Object Type" = CONST (Table))
            ELSE
            IF ("Action Type" = FILTER ("Run Report")) AllObj."Object ID" WHERE ("Object Type" = CONST (Report))
            ELSE
            IF ("Action Type" = FILTER ("Run Codeunit")) AllObj."Object ID" WHERE ("Object Type" = CONST (Codeunit));
        }
        field(21; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
            Editable = false;
        }
        field(22; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = Company;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(23; "Fields"; Option)
        {
            Caption = 'Fields';
            OptionCaption = 'All,Selected';
            OptionMembers = All,Selected;
        }
        field(24; "Into Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Into Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table),
                                             "Company Name" = CONST (''));
        }
        field(25; "Into Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Into Table No.")));
            Caption = 'Into Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Into Company Name"; Text[30])
        {
            Caption = 'Into Company Name';
        }
        field(27; "Into Fields"; Option)
        {
            Caption = 'Into Fields';
            OptionCaption = ' ,Mapped';
            OptionMembers = " ",Mapped;
        }
        field(28; "Filter"; TableFilter)
        {
            Caption = 'Filter';
        }
        field(29; "No. of Records"; Integer)
        {
            Caption = 'No. of Records';
        }
        field(30; "DELETEALL;"; Boolean)
        {
            Caption = 'DELETEALL;';
        }
        field(31; "INIT;"; Boolean)
        {
            Caption = 'INIT;';
            InitValue = true;
        }
        field(32; "IF FIND('=') THEN;"; Boolean)
        {
            Caption = 'IF FIND(''='') THEN;';
            InitValue = true;
        }
        field(33; "IF INSERT THEN;"; Boolean)
        {
            Caption = 'IF INSERT THEN;';
            InitValue = true;
        }
        field(34; "IF MODIFY THEN;"; Boolean)
        {
            Caption = 'IF MODIFY THEN;';
            InitValue = true;
        }
        field(35; "Commit Type"; Option)
        {
            Caption = 'Commit Type';
            OptionCaption = ' ,At the End,After Each Record,After 100 Records';
            OptionMembers = " ","At the End","After Each Record","After 100 Records";
        }
        field(36; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
        field(37; "Key Index"; Integer)
        {
            Caption = 'Key Index';
        }
        field(38; "SQL Query"; Text[100])
        {
            Caption = 'SQL Query';
        }
        field(39; "SQL Query Blob"; BLOB)
        {
            Caption = 'SQL Query Blob';
        }
        field(40; "Export FlowFields"; Boolean)
        {
            Caption = 'Export FlowFields';
        }
        field(41; "DOS Command"; Text[100])
        {
            Caption = 'DOS Command';
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Sub Type", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Transport No.")
        {
        }
    }

    fieldgroups
    {
    }
}

