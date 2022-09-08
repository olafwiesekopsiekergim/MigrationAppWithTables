table 5000200 "Project Acc. Journal Template"
{
    Caption = 'Project Acc. Journal Template';

    fields
    {
        field(1; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Test Report ID"; Integer)
        {
            Caption = 'Test Report ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Report));
        }
        field(4; "Page ID"; Integer)
        {
            Caption = 'Page ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Page));
        }
        field(5; "Posting Report ID"; Integer)
        {
            Caption = 'Posting Report ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Report));
        }
        field(6; "Force Posting Report"; Boolean)
        {
            Caption = 'Force Posting Report';
        }
        field(7; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(8; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(9; Recurring; Boolean)
        {
            Caption = 'Recurring';
        }
        field(10; "Test Report Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Test Report ID")));
            Caption = 'Test Report Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Page Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Page),
                                                                           "Object ID" = FIELD ("Page ID")));
            Caption = 'Page Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Posting Report Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Posting Report ID")));
            Caption = 'Posting Report Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Cost,Overhead,Reference Distribution,Allocation';
            OptionMembers = Cost,Overhead,"Reference Distribution",Allocation;
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Name, Description, Type)
        {
        }
    }
}

