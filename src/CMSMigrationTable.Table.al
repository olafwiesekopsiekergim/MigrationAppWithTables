table 5330280 "CMS Migration Table"
{
    Caption = 'CMS Migration Table';

    fields
    {
        field(5; "Migration Code"; Code[20])
        {
            Caption = 'Migration Package';
            TableRelation = "CMS Migration Pack";
        }
        field(10; TableID; Integer)
        {
            Caption = 'TableID';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(20; "Table Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Table),
                                                                        "Object ID" = FIELD (TableID)));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "No. of Migration Records"; Integer)
        {
            CalcFormula = Count ("CMS Migration Record" WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                              TableID = FIELD (TableID),
                                                              Invalid = FILTER (false)));
            Caption = 'No. of Migration Records';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "No. of Migration Errors"; Integer)
        {
            CalcFormula = Count ("CMS Migration Record" WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                              TableID = FIELD (TableID),
                                                              Invalid = FILTER (true)));
            Caption = 'No. of Migration Errors';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "No. of Database Records"; Integer)
        {
            CalcFormula = Lookup ("Table Information"."No. of Records" WHERE ("Company Name" = FIELD ("Company Filter (Source Table)"),
                                                                             "Table No." = FIELD (TableID),
                                                                             "No. of Records" = FILTER (<> 0)));
            Caption = 'No. of Database Records';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65; "Include all Fields"; Boolean)
        {
            Caption = 'Include all Fields';
        }
        field(66; "Total No. of Fields"; Integer)
        {
            CalcFormula = Count ("CMS Migration Table Field" WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                                   TableID = FIELD (TableID)));
            Caption = 'Total No. of Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Included No. of Fields"; Integer)
        {
            CalcFormula = Count ("CMS Migration Table Field" WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                                   TableID = FIELD (TableID),
                                                                   Include = FILTER (true)));
            Caption = 'Included No. of Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "Imported Date Time"; DateTime)
        {
            Caption = 'Imported Date Time';
            Editable = false;
        }
        field(80; "Exported Date Time"; DateTime)
        {
            Caption = 'Exported Date Time';
            Editable = false;
        }
        field(90; Comments; Text[250])
        {
            Caption = 'Comments';
        }
        field(100; "Company Type"; Text[250])
        {
            Caption = 'Company Type';
            Editable = false;
        }
        field(110; "Company Filter (Source Table)"; Text[30])
        {
            Caption = 'Company Filter (Source Table)';
            FieldClass = FlowFilter;
            TableRelation = Company;
        }
        field(120; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD (TableID)));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; "Data Template"; Code[10])
        {
            Caption = 'Data Template';
        }
        field(140; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Not Started,In Progress,Completed';
            OptionMembers = "Not Started","In Progress",Completed;
        }
        field(150; "Form ID"; Integer)
        {
            Caption = 'Form ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Page));
        }
        field(160; Indentation; Integer)
        {
            Caption = 'Indentation';
            MinValue = 0;
        }
        field(170; "Relation To Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Relation To Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(180; "Relation To Table Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Relation To Table No.")));
            Caption = 'Relation To Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(190; "Table Relation Defined"; Boolean)
        {
            CalcFormula = Exist ("CMS Mig Table Relation" WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                                "Master Table ID" = FIELD (TableID)));
            Caption = 'Table Relation Defined';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Migration Code", TableID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

