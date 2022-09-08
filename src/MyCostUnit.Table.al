table 5000322 "My Cost Unit"
{
    Caption = 'My Cost Unit';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(10; Totaling; Text[250])
        {
            CalcFormula = Lookup ("Project Account".Totaling WHERE ("No." = FIELD ("Global Dimension 2 Code")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "User ID", "Global Dimension 2 Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

