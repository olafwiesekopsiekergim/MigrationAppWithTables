table 5330279 "CMS Migration Pack"
{
    Caption = 'CMS Migration Package';

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Under Development,Released,Blocked';
            OptionMembers = "Under Development",Released,Blocked;
        }
        field(40; "No of Tables"; Integer)
        {
            CalcFormula = Count ("CMS Migration Table" WHERE ("Migration Code" = FIELD (Code)));
            Caption = 'No. of Tables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; Version; Text[30])
        {
            Caption = 'Version';
        }
        field(60; "CMS Version"; Text[80])
        {
            Caption = 'CMS Version';
            Editable = false;
        }
        field(70; "Created by"; Text[30])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(80; "Created at"; DateTime)
        {
            Caption = 'Created at';
            Editable = false;
        }
        field(90; "Last updated by"; Text[30])
        {
            Caption = 'Last updated by';
            Editable = false;
        }
        field(100; "Last updated at"; DateTime)
        {
            Caption = 'Last updated at';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

