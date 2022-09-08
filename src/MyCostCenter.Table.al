table 5000321 "My Cost Center"
{
    Caption = 'My Cost Center';

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
        field(2; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(10; Totaling; Text[250])
        {
            CalcFormula = Lookup ("Cost Account".Totaling WHERE ("No." = FIELD ("Global Dimension 1 Code")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "User ID", "Global Dimension 1 Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

