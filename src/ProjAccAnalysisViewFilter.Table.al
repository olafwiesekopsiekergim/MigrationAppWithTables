table 5000232 "Proj.Acc. Analysis View Filter"
{
    Caption = 'Proj.Acc. Analysis View Filter';

    fields
    {
        field(1; "Analysis View Code"; Code[10])
        {
            Caption = 'Analysis View Code';
            NotBlank = true;
            TableRelation = "Project Account Analysis View";
        }
        field(2; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(3; "Dimension Value Filter"; Code[250])
        {
            Caption = 'Dimension Value Filter';
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Analysis View Code", "Dimension Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

