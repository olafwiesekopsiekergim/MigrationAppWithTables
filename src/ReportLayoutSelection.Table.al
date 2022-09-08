table 9651 "Report Layout Selection"
{
    Caption = 'Report Layout Selection';
    DataPerCompany = false;

    fields
    {
        field(1; "Report ID"; Integer)
        {
            Caption = 'Report ID';
        }
        field(2; "Report Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Report ID")));
            Caption = 'Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = Company;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'RDLC (built-in),Word (built-in),Custom Layout';
            OptionMembers = "RDLC (built-in)","Word (built-in)","Custom Layout";
        }
        field(6; "Custom Report Layout ID"; Integer)
        {
            Caption = 'Custom Report Layout ID';
            TableRelation = "Custom Report Layout" WHERE ("Report ID" = FIELD ("Report ID"));
        }
        field(7; "Report Layout Description"; Text[80])
        {
            CalcFormula = Lookup ("Custom Report Layout".Description WHERE (ID = FIELD ("Custom Report Layout ID")));
            Caption = 'Report Layout Description';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Report ID", "Company Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

