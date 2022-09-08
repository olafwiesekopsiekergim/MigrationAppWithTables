table 9650 "Custom Report Layout"
{
    Caption = 'Custom Report Layout';
    DataPerCompany = false;

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(2; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            TableRelation = AllObjWithCaption."Object ID" WHERE("Object Type" = CONST(Report));
        }
        field(3; "Report Name"; Text[80])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Report),
                                                                           "Object ID" = FIELD("Report ID")));
            Caption = 'Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = Company;
        }
        field(6; Type; Option)
        {
            Caption = 'Type';
            InitValue = Word;
            OptionCaption = 'RDLC,Word';
            OptionMembers = RDLC,Word;
        }
        field(7; "Layout"; BLOB)
        {
            Caption = 'Layout';
        }
        field(8; "Last Modified"; DateTime)
        {
            Caption = 'Last Modified';
            Editable = false;
        }
        field(9; "Last Modified by User"; Code[50])
        {
            Caption = 'Last Modified by User';
            Editable = false;
        }
        field(10; "File Extension"; Text[30])
        {
            Caption = 'File Extension';
            Editable = false;
        }
        field(11; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(12; "Custom XML Part"; BLOB)
        {
            Caption = 'Custom XML Part';
        }
        field(13; "App ID"; GUID)
        {
            Caption = 'APP ID';
            editable = false;
        }
        field(14; "Built-In"; Boolean)
        {
            caption = 'Built-In';
            editable = false;
        }

    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
        key(Key2; "Report ID", "Company Name", Type)
        {
        }
    }

    fieldgroups
    {
    }
}

