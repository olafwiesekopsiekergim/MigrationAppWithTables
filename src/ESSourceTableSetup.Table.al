table 14123802 "ES Source Table Setup"
{
    Caption = 'Source Table Setup';
    DataCaptionFields = "Source Table ID", "Source Table Caption";

    fields
    {
        field(1; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE("Object Type" = CONST(Table));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; "Source Table Name"; Text[30])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Name" WHERE("Object Type" = CONST(Table),
                                                                        "Object ID" = FIELD("Source Table ID")));
            Caption = 'Source Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Source Table Caption"; Text[249])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Table),
                                                                           "Object ID" = FIELD("Source Table ID")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Do Not Modify Objects"; Boolean)
        {
            Caption = 'Do Not Modify Objects';
        }
        field(20; "No HideValue in Page Parts"; Boolean)
        {
            Caption = 'No HideValue in Page Parts';
        }
        field(21; "Field Level Security Codes"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("ES Field Level Security Code" WHERE("Source Table ID" = FIELD("Source Table ID")));
            Caption = 'Field Level Security Codes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Data Security Codes"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("ES Data Security Code" WHERE("Source Table ID" = FIELD("Source Table ID")));
            Caption = 'Data Security Codes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; Pages; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("ES FLADS Relation" WHERE("Object Type" = CONST(Page),
                                                           "Relation Object Type" = CONST(Table),
                                                           "Relation Object ID" = FIELD("Source Table ID")));
            Caption = 'Pages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Def Fld Level Sec Code Exists"; Boolean)
        {
            CalcFormula = Exist("ES Field Level Security Code" WHERE("Source Table ID" = FIELD("Source Table ID"),
                                                                      Default = CONST(true)));
            Caption = 'Default Field Level Security Code Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Default Data Sec. Code Exists"; Boolean)
        {
            CalcFormula = Exist("ES Data Security Code" WHERE("Source Table ID" = FIELD("Source Table ID"),
                                                               Default = CONST(true)));
            Caption = 'Default Data Security Code Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "No Page Action Changes"; Boolean)
        {
            Caption = 'No Page Action Changes';
        }
        field(28; "No OnInitPage Changes"; Boolean)
        {
            Caption = 'No OnInitPage Changes';
            InitValue = true;
        }
        field(29; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(30; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Source Table ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Source Table ID", "Source Table Caption", Pages)
        {
        }
    }
}

