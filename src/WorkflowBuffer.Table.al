table 1500 "Workflow Buffer"
{
    Caption = 'Workflow Buffer';

    fields
    {
        field(1; "Category Code"; Code[20])
        {
            Caption = 'Category Code';
            TableRelation = "Workflow Category".Code;
        }
        field(2; "Workflow Code"; Code[20])
        {
            Caption = 'Workflow Code';
            TableRelation = Workflow.Code;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(3; Indentation; Integer)
        {
            Caption = 'Indentation';
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(6; Template; Boolean)
        {
            CalcFormula = Lookup (Workflow.Template WHERE (Code = FIELD ("Workflow Code")));
            Caption = 'Template';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; Enabled; Boolean)
        {
            CalcFormula = Lookup (Workflow.Enabled WHERE (Code = FIELD ("Workflow Code")));
            Caption = 'Enabled';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Category Code", "Workflow Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

